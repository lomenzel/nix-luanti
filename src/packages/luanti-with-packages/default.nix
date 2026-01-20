{
  lib,
  symlinkJoin,
  makeWrapper,
  luanti,
  stdenv,
  writeText,
  writeShellScript,
}:

let
  mkLuanti =

    {
      mods ? [ ],
      games ? [ ],
      texturePacks ? [ ],
      clientMods ? [ ],
      luanti ? luanti,
      ...
    }@args:
    let
      listToPath =
        list: name:
        stdenv.mkDerivation {
          inherit name;
          src = null;
          dontUnpack = true;
          installPhase =
            let
              installScript = writeShellScript "install.sh" ''
                mkdir -p $out
                 ${builtins.concatStringsSep "\n" (
                   map (pkg: ''
                     ln -s ${pkg} "$out/${pkg.pname or pkg.name}"
                   '') list
                 )}
              '';
            in
            "${installScript}";
        };
      modsPath = listToPath mods "mods";
      gamesPath = listToPath games "games";
      texturesPath = listToPath texturePacks "texture-packs";
      csmPath = listToPath clientMods "client-side-mods";

      csmConfig = writeText "mods.conf" (
        lib.concatStringsSep "\n" (builtins.map (mod: "load_mod_${mod.name} = true") clientMods)
      );
    in

    symlinkJoin {
      name = luanti.pname;

      paths = lib.singleton (
        luanti.overrideAttrs (old: {
          patches = lib.lists.unique (
            old.patches
            ++ (
              if texturePacks == [ ] then
                [ ]
              else
                [
                  (writeText "texturepack_load.patch" (
                    builtins.replaceStrings [ "{{TEXTURE_PACKS_PATH}}" ] [ (toString texturesPath) ] (
                      builtins.readFile ./texturepacks_load.patch
                    )
                  ))
                  ./textures_env_var.patch
                ]
            )
            ++ (
              if clientMods == [ ] then
                [ ]
              else
                [
                  ./csm_env_var.patch
                  ./csm_enable_default.patch
                ]
            )
          );
        })
      );

      passthru.withPackages =
        {
          mods ? [ ],
          games ? [ ],
          texturePacks ? [ ],
          clientMods ? [ ],
          ...
        }@newPackages:
        mkLuanti {
          mods = lib.lists.unique (newPackages.mods or [ ] ++ args.mods or [ ]);
          games = lib.lists.unique (newPackages.games or [ ] ++ args.games or [ ]);
          texturePacks = lib.lists.unique (newPackages.texturePacks or [ ] ++ args.texturePacks or [ ]);
          clientMods = lib.lists.unique (newPackages.clientMods or [ ] ++ args.clientMods or [ ]);
        };

      buildInputs = [
        makeWrapper
      ];

      postBuild = ''
        for bin in $out/bin/{luanti,luantiserver}; do
          if [ -e $bin ]; then
            wrapProgram $bin \
              --prefix MINETEST_MOD_PATH : "${modsPath}" \
              --prefix MINETEST_GAME_PATH : "${gamesPath}" \
              --prefix LUANTI_TEXTURES_PATH : "${texturesPath}" \
              --prefix LUANTI_CSM_PATH : "${csmPath}" \
              --set-default LUANTI_CSM_CONFIG "${csmConfig}"
          fi
        done
      '';
    };
in
mkLuanti
