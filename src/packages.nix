{ mkDerivation
, fetchurl
, unzip
, lib
, ...
}:
with builtins; let
  mkLuantiPackage =
    { name
    , release
    , author
    , type
    , hash ? ""
    , ...
    }@details:
    mkDerivation rec {
      pname = name;
      version = toString release;
      src = fetchurl {
        url = "https://content.minetest.net/packages/${author}/${name}/releases/${version}/download/";
        sha256 = hash;
      };
      unpackPhase = "${unzip}/bin/unzip $src";
      installPhase = if type != "txp" then ''
        mkdir -p $out
        cp -r $(ls -d */ )* $out
      '' else ''
        mkdir -p $out
        cp -r ./* $out
      '';
      meta = details;
    };
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
    (byId
      |> attrNames
      |> map
        (id: {
          name = byId.${id}.pname;
          value = ambiguous byId.${id}.meta.with_same_name byId;
        })
      |> listToAttrs
      )
    // (lib.filterAttrs (n: v: length v.meta.with_same_name <= 1) byId
      |> attrNames
      |> map (e: {name = byId.${e}.pname; value = byId.${e};})
      |> listToAttrs
      )
    ;


  getByIdType = type: allContentDBItems
    |> filter (e: e.meta.type == type)
    |> map (e: {name = e.meta.id; value= e;})
    |> listToAttrs
    ;
  texture_packsById = filter (e: e.meta.type == "txp") allContentDBItems
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
rec {
  games = byIdToByName byId.games;
  mods = byIdToByName byId.mods;
  texture_packs = byIdToByName byId.texture_packs;
  byId = {
    games = getByIdType "game";
    mods = getByIdType "mod";
    texture_packs = getByIdType "txp";
  };

}
