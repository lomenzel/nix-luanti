{
  lib,
  symlinkJoin,
  makeWrapper,
  luanti,
  stdenv,
}:

let
  mkLuanti =

    {
      mods ? [ ],
      games ? [ ],
      texturePacks ? [ ],
    }@args:

    symlinkJoin {
      name = luanti.pname;

      paths = [
        luanti
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
                ln -s ${pkg} $out/share/luanti/${name}/${pkg.name}
              '') list
            );
        in
        ''
          # Merge packages
          mkdir -p $out/share/luanti/textures
          mkdir -p $out/share/luanti/mods
          mkdir -p $out/share/luanti/games
          ${linkList texturePacks "textures"}
          ${linkList mods "mods"}
          ${linkList games "games"}

          # Point minetest executables to packages
          for bin in $out/bin/{luanti,luantiserver}; do
            if [ -e $bin ]; then
              wrapProgram $bin \
                --prefix MINETEST_MOD_PATH : "$out/share/luanti/mods" \
                --prefix MINETEST_GAME_PATH : "$out/share/luanti/games" \
                --prefix LUANTI_TEXTURE_PATH : $out/share/luanti/textures
            fi
          done
        '';
    };
in
mkLuanti
