{
  mkDerivation,
  fetchurl,
  unzip,
}:
let
  installPhase = ''
    mkdir -p $out
    cp -r $(ls -d */ )* $out
  '';
  unpackPhase = "${unzip}/bin/unzip $src";
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
      with_same_name ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      inherit unpackPhase installPhase;
      meta = {
        inherit provides with_same_name author;
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
      with_same_name ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };

      inherit unpackPhase installPhase;
      meta = {
        inherit
          provides
          depends
          with_same_name
          author
          ;
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
      with_same_name ? [ ],
    }:
    mkDerivation {
      pname = name;
      version = builtins.toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      inherit unpackPhase installPhase;
      meta = {
        inherit with_same_name author;
        type = "minetest_texture_pack";
      };

    };
  ambiguous =
    with_same_name: byId:
    mkDerivation {
      name = "ambigous";
      version = "1";
      src = builtins.throw "This Package is ambiguous. please use one of the following: ${
        builtins.toString (
          builtins.map (id: "${byId.${id}.pname}.\"${byId.${id}.meta.author}\"") with_same_name
        )
      }";
      passthru = builtins.listToAttrs (
        builtins.map (package: {
          name = byId.${package}.meta.author;
          value = byId.${package};
        }) with_same_name
      );
    };
  byIdToByName =
    byId:

    (builtins.listToAttrs (
      builtins.map (id: {
        name = byId.${id}.pname;
        value = ambiguous (byId.${id}.meta.with_same_name ++ [ id ]) byId;
      }) (builtins.attrNames byId)
    ))
    // (builtins.listToAttrs (
      builtins.filter
        (
          {
            included ? true,
            ...
          }:
          included
        )
        (
          builtins.map (
            id:
            if (builtins.length byId.${id}.meta.with_same_name) == 0 then
              {
                name = byId.${id}.pname;
                value = byId.${id};
              }
            else
              {
                name = id;
                value = byId.${id};
                included = false;
              }
          ) (builtins.attrNames byId)
        )
    ));
  gamesById = import ./generated/games.nix { inherit mkMinetestGame; };
  modsById = import ./generated/mods.nix { inherit mkMinetestMod; };
  texture_packsById = import ./generated/texturePacks.nix { inherit mkMinetestTxp; };

in
{
  games = byIdToByName gamesById;
  mods = byIdToByName modsById;
  texture_packs = byIdToByName texture_packsById;
  byId = {
    games = gamesById;
    mods = modsById;
    texture_packs = texture_packsById;
  };

}
