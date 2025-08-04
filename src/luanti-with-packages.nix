{
  lib,
  symlinkJoin,
  makeWrapper,
  luanti,
  stdenv,
  writeText,
}:

let
  mkLuanti =

    {
      mods ? [ ],
      games ? [ ],
      texturePacks ? [ ],
    }@args:
    let
      listToPath =
        list: name:
        stdenv.mkDerivation {
          inherit name;
          src = null;
          dontUnpack = true;
          installPhase = ''
            mkdir -p $out
             ${builtins.concatStringsSep "\n" (
               map (pkg: ''

                 ln -s ${pkg} "$out/${pkg.name}"
               '') list
             )}
          '';
        };
      modsPath = listToPath mods "mods";
      gamesPath = listToPath games "games";
      texturesPath = listToPath texturePacks "texturePacks";
    in

    symlinkJoin {
      name = luanti.pname;

      paths =
        if texturePacks == [ ] then
          lib.singleton luanti
        else
          [
            (luanti.overrideAttrs (old: {
              patches = lib.lists.unique (
                old.patches
                ++ [
                  (writeText "texturepack_load.patch" (
                    builtins.replaceStrings [ "{{TEXTURE_PACKS_PATH}}" ] [ (toString texturesPath) ] (
                      builtins.readFile ./texturepacks_load.patch
                    )
                  ))
                  ./textures_env_var.patch
                ]
              );
            }))
          ];

      passthru.withPackages =
        {
          mods ? [ ],
          games ? [ ],
          texturePacks ? [ ],
        }@newPackages:
        mkLuanti {
          mods = lib.lists.unique (newPackages.mods or [ ] ++ args.mods or [ ]);
          games = lib.lists.unique (newPackages.games or [ ] ++ args.games or [ ]);
          texturePacks = lib.lists.unique (newPackages.texturePacks or [ ] ++ args.texturePacks or [ ]);
        };

      buildInputs = [
        makeWrapper
      ];

      postBuild =
        let
          linkList =
            list: name:
            builtins.concatStringsSep "\n" (
              map (pkg: ''
                cp -r ${pkg} $out/share/luanti/${name}/${pkg.name}
              '') list
            );
        in
        ''
          for bin in $out/bin/{luanti,luantiserver}; do
            if [ -e $bin ]; then
              wrapProgram $bin \
                --prefix MINETEST_MOD_PATH : "${modsPath}" \
                --prefix MINETEST_GAME_PATH : "${gamesPath}" \
                --prefix LUANTI_TEXTURES_PATH : "${texturesPath}"
            fi
          done
        '';
    };
in
mkLuanti
