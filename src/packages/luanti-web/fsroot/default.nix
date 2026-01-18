{
  stdenv,
  luanti,
  zstd,
  games ? [ ],
  cacert,
  luantiPackages,
  mods ? [ ],
  texturePacks ? [ ],
  clientMods ? [ ],
  settings ? { },
  lib,
  writeText,
}:

let

  # to conf from nixpkgs module
  toConf =
    values:
    lib.concatStrings (
      lib.mapAttrsToList (
        name: value:
        {
          bool = "${name} = ${toString value}\n";
          int = "${name} = ${toString value}\n";
          null = "";
          set = "${name} = {\n${toConf value}}\n";
          string =
            if (builtins.match NEEDS_MULTILINE_RE value) != null then
              toConfMultiline name value
            else
              "${name} = ${value}\n";
        }
        .${builtins.typeOf value}
      ) values
    );

  toConfMultiline =
    name: value:
    assert lib.assertMsg (
      (builtins.match UNESCAPABLE_RE value) == null
    ) ''""" can't be on its own line in a minetest config.'';
    "${name} = \"\"\"\n${value}\n\"\"\"\n";

  # Constants copied from nixpkgs module
  CONTAINS_NEWLINE_RE = ".*\n.*";
  # The following values are reserved as complete option values:
  # { - start of a group.
  # """ - start of a multi-line string.
  RESERVED_VALUE_RE = "[[:space:]]*(\"\"\"|\\{)[[:space:]]*";
  NEEDS_MULTILINE_RE = "${CONTAINS_NEWLINE_RE}|${RESERVED_VALUE_RE}";

  # There is no way to encode """ on its own line in a Minetest config.
  UNESCAPABLE_RE = ".*\n\"\"\"\n.*";

in

stdenv.mkDerivation {
  name = "luanti-web-fsroot";
  src = luanti;
  nativeBuildInputs = [ zstd ];
  buildPhase = ''
    mkdir -p fsroot
    cd fsroot


    ${builtins.concatStringsSep "\n" (
      map (game: ''
        mkdir -p minetest/games/${game.pname or game.name}
        cp -r ${game}/* minetest/games/${game.pname or game.name}/
      '') games
    )}

    ${builtins.concatStringsSep "\n" (
      map (mod: ''
        mkdir -p minetest/mods/${mod.pname or mod.name}
        cp -r ${mod}/* minetest/mods/${mod.pname or mod.name}/
      '') mods
    )}

    ${builtins.concatStringsSep "\n" (
      map (texturePack: ''
        mkdir -p minetest/textures/${texturePack.pname or texturePack.name}
        cp -r ${texturePack}/* minetest/textures/${texturePack.pname or texturePack.name}/
      '') texturePacks
    )}

    ${
      if builtins.hasAttr "texture_path" settings then
        ''
          mkdir -p minetest/textures/enabled_texture_pack
          cp -r ${settings.texture_path}/* minetest/textures/enabled_texture_pack/
        ''
      else
        ""
    }

    ${builtins.concatStringsSep "\n" (
      map (clientMod: ''
        mkdir -p minetest/clientmods/${clientMod.pname or clientMod.name}
        cp -r ${clientMod}/* minetest/clientmods/${clientMod.pname or clientMod.name}/
      '') clientMods
    )}

    mkdir -p minetest
    cp -r ${luanti}/* minetest/

    chmod -R +w minetest

    rm -rf minetest/bin minetest/unix
    mkdir -p minetest/bin
    echo "This file exists to prevent bin directory from being empty." > minetest/bin/README.txt
    mkdir -p minetest/cache

    cp ${
      writeText "common.conf" (toConf ({
        update_last_checked = "disabled";
        no_mtg_notification = true;
        no_keycode_migration_warning = true;
        texture_path = "/minetest/textures/enabled_texture_pack";
      }))
    } minetest/cache/common.conf

    mkdir -p etc/ssl/certs

    cat ${cacert}/etc/ssl/certs/ca-bundle.crt > etc/ssl/certs/ca-certificates.crt

    tar cf ../fsroot.tar .

    cd ..



    zstd --ultra -22 fsroot.tar
  '';
  installPhase = ''
    mkdir -p $out

    ls -lah
    cp fsroot.tar.zst $out/
  '';
}
