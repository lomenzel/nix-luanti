{
  mkDerivation,
  fetchurl,
  unzip,
  lib,
  ...
}:
with builtins;
let
  mkLuantiPackage =
    {
      name,
      release,
      author,
      type,
      hash ? "",
      ...
    }@details:
    mkDerivation rec {
      pname = name;
      version = toString release;
      src = fetchurl {
        url = "https://content.minetest.net/packages/${author}/${name}/releases/${version}/download/";
        sha256 = hash;
      };
      unpackPhase = "${unzip}/bin/unzip $src";
      installPhase =
        if type != "txp" then
          ''
            mkdir -p $out
            cp -r $(ls -d */ )* $out
          ''
        else
          ''
            mkdir -p $out
            cp -r ./* $out
          '';
      meta = details;
    };
  ambiguous =
    with_same_name: byId:
    let
      error = throw "This Package is ambiguous. please use one of the following: ${
        toString (map (id: "${byId.${id}.pname}.\"${byId.${id}.meta.author}\"") with_same_name)
      }";
    in
    mkDerivation {
      name = "ambigous";
      version = "1";
      src = error;
      passthru = listToAttrs (
        map (package: {
          name = byId.${package}.meta.author;
          value = byId.${package};
        }) with_same_name
      );
      meta = error;
    };
  byIdToByName =
    byId:
    (
      byId
      |> attrNames
      |> map (id: {
        name = byId.${id}.pname;
        value = ambiguous byId.${id}.meta.with_same_name byId;
      })
      |> listToAttrs
    )
    // (
      lib.filterAttrs (n: v: length v.meta.with_same_name <= 1) byId
      |> attrNames
      |> map (e: {
        name = byId.${e}.pname;
        value = byId.${e} // {
          "${byId.${e}.meta.author}" = byId.${e};
        };
      })
      |> listToAttrs
    );

  getByIdType =
    type:
    allContentDBItems
    |> filter (e: e.meta.type == type)
    |> map (e: {
      name = e.meta.id;
      value = e;
    })
    |> listToAttrs;
  texture_packsById =
    filter (e: e.meta.type == "txp") allContentDBItems
    |> map (e: {
      name = e.meta.id;
      value = e;
    })
    |> listToAttrs;
  allContentDBItems =
    contentDBReleases
    |> (
      list:
      filter (
        p:
        let
          withSameId = filter (p2: p2.id == p.id) list;
        in
        length withSameId == 1 || all (p2: p.release >= p2.release) withSameId
      ) list
    )
    |> addWithSameName
    |> map mkLuantiPackage
    |> map (e: e // allWithID e.meta.id);

  contentDBReleases =
    lib.filesystem.listFilesRecursive ../contentDB
    |> map readFile
    |> map fromJSON
    |> map (e: e // { id = "${e.author}/${e.name}"; });

  allWithID =
    id:
    contentDBReleases
    |> filter (p: id == p.id)
    |> map (p: {
      name = toString p.release;
      value = mkLuantiPackage p;
    })
    |> listToAttrs;

  addWithSameName =
    list:
    map (
      e:
      e
      // {
        with_same_name = list |> filter (p: p.name == e.name) |> map (getAttr "id") |> lib.lists.unique;
      }
    ) list;

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
