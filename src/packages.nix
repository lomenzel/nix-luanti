{ mkDerivation
, fetchurl
, unzip
, lib
}:
with builtins; let
  installPhase = ''
    mkdir -p $out
    cp -r $(ls -d */ )* $out
  '';
  unpackPhase = "${unzip}/bin/unzip $src";
  url =
    author: name: release:
    "https://content.minetest.net/packages/${author}/${name}/releases/${toString release}/download/";
  mkLuantiGame =
    { name
    , release
    , author
    , hash ? ""
    , provides ? [ ]
    , with_same_name ? [ ]
    , ...
    }@details:
    mkDerivation {
      pname = name;
      version = toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      inherit unpackPhase installPhase;
      meta = details // {
        inherit provides with_same_name author;
        type = "luanti_game";
      };
    };
  mkLuantiMod =
    { name
    , release
    , author
    , hash ? ""
    , provides ? [ ]
    , depends ? [ ]
    , with_same_name ? [ ]
    , ...
    }@details:
    mkDerivation {
      pname = name;
      version = toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };

      inherit unpackPhase installPhase;
      meta = details // {
        inherit
          provides
          depends
          with_same_name
          author
          ;
        type = "luanti_mod";
      };

    };
  mkLuantiTxp =
    { name
    , release
    , author
    , hash ? ""
    , provides ? [ ]
    , depends ? [ ]
    , with_same_name ? [ ]
    , ...
    }@details:
    mkDerivation {
      pname = name;
      version = toString release;
      src = fetchurl {
        url = url author name release;
        sha256 = hash;
      };
      inherit unpackPhase installPhase;
      meta = details // {
        inherit with_same_name author;
        type = "luanti_texture_pack";
      };

    };
  mkLuantiPackage = {type, ...}@details: 
    if type == "mod" then
      mkLuantiMod details else
    if type == "game" then
      mkLuantiGame details else
    if type == "txp" then
      mkLuantiTxp details else
    error "unknown type ${toString type}";
  ambiguous =
    with_same_name: byId:
    mkDerivation {
      name = "ambigous";
      version = "1";
      src = throw "This Package is ambiguous. please use one of the following: ${
        toString (
          map (id: "${byId.${id}.pname}.\"${byId.${id}.meta.author}\"") with_same_name
        )
      }";
      passthru = listToAttrs (
        map
          (package: {
            name = byId.${package}.meta.author;
            value = byId.${package};
          })
          with_same_name
      );
      meta.depends =  [];
    };
  byIdToByName = byId:
    (listToAttrs (
      map
        (id: {
          name = byId.${id}.pname;
          value = ambiguous byId.${id}.meta.with_same_name byId;
        })
        (attrNames byId)
    ))
    // (lib.filterAttrs (n: v: length v.meta.with_same_name <= 1) byId
      |> attrNames
      |> map (e: {name = byId.${e}.pname; value = byId.${e};})
      |> listToAttrs
      )
    ;
  gamesById = filter (e: e.meta.type == "luanti_game") allContentDBItems
    |> map (e: {name = e.meta.id; value = e;})
    |> listToAttrs;
  modsById = filter (e: e.meta.type == "luanti_mod") allContentDBItems
    |> map (e: {name = e.meta.id; value = e;})
    |> listToAttrs;
  texture_packsById = filter (e: e.meta.type == "luanti_texture_pack") allContentDBItems
    |> map (e: {name = e.meta.id; value = e;})
    |> listToAttrs;
  allContentDBItems = lib.filesystem.listFilesRecursive ../contentDB
    |> map readFile
    |> map fromJSON
    |> map (e: e // { id = "${e.author}/${e.name}";})
    |> addWithSameName
    |> map mkLuantiPackage
    ;

  addWithSameName = list:
    map (e:
      e // {
        with_same_name = list 
          |> filter (p: p.name == e.name)
          |> map (getAttr "id")
          ;
      }
    ) list
    ;

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
