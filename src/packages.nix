{
  mkDerivation,
  fetchurl,
  unzip,
}:
let
  url =
    author: name: release:
    "https://content.minetest.net/packages/${author}/${name}/releases/${builtins.toString release}/download/";
  mkMinetestGame =
    {
      name,
      release,
      author,
      hash ? "",
      provides ? [ ],
      depends ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      unpackPhase = "${unzip}/bin/unzip $src";
      installPhase = ''
        mkdir -p $out
        cp -r ${name}/* $out
      '';
      meta = {
        provides = provides;
        type = "minetest_game";
      };

    };
  mkMinetestMod =
    {
      name,
      release,
      author,
      hash ? "",
      provides ? [ ],
      depends ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };

      unpackPhase = "${unzip}/bin/unzip $src";
      installPhase = ''
        mkdir -p $out
        cp -r ${name}/* $out
      '';
      meta = {
        provides = provides;
        depends = depends;
        type = "minetest_mod";
      };

    };
  mkMinetestTxp =
    {
      name,
      release,
      author,
      hash ? "",
      provides ? [ ],
      depends ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      unpackPhase = "${unzip}/bin/unzip $src";
      installPhase = ''
        mkdir -p $out
        cp -r ${name}/* $out
      '';
      meta = {
        type = "minetest_texture_pack";
      };

    };
in
{
  games = import ./generated/games.nix { inherit mkMinetestGame; };
  mods = import ./generated/games.nix { inherit mkMinetestMod; };
  texture_packs = import ./generated/games.nix { inherit mkMinetestTxp; };
}
