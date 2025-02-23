{ byId
, lists
, mkDerivation
, lib
}:
let
  checkDependencies = game: mods: (builtins.length (missingDependencies game mods)) == 0;

  missingDependencies = game: mods: mods
    |> allDeps
    |> lists.subtractLists (allProviding game mods);

  depsProvidedBy = mods: mods
    |> builtins.foldl' (
      acc: curr:
      acc
      ++ (builtins.map
        (dep: {
          name = dep.name;
          value = dep.packages;
        })
        curr.meta.dependencies.${curr.meta.id})
    ) [ ]
    |> builtins.listToAttrs;

  flatten = list: builtins.foldl' (x: y: x ++ y) [] list;
  dependencyNames = mod: builtins.map (dep: dep.name) mod.meta.dependencies.${mod.meta.id};

  allDeps = mods: mods
    |> builtins.map dependencyNames
    |> flatten
    |> lists.unique
    |> lists.naturalSort;
    
  allProviding = game: mods: mods
    |> allProvidingModsOnly
    |> (x: game.meta.provides ++ x)
    |> lists.unique
    |> lists.naturalSort;

  allProvidingModsOnly = mods: mods
    |> builtins.map (mod: mod.meta.provides)
    |> flatten
    |> lists.unique;
  findNextDependency = game: mods: byId.mods.${findNextDependencyName game mods};
  findNextDependencyName =
    game: mods:
    if providingNextDependency game mods == [ ] then
      builtins.throw "Cannot find dependency in ContentDB. Please add it manually: ${builtins.toString (builtins.head (missingDependencies game mods))}"
    else
      builtins.head (providingNextDependency game mods);

  providingNextDependency =
    game: mods:
    builtins.filter (id: builtins.hasAttr id byId.mods) (
      (depsProvidedBy mods).${builtins.head (missingDependencies game mods)}
    );

  with-dependencies =
    game: mods:
    if checkDependencies game mods then
      mods
    else
      with-dependencies game (mods ++ [ (findNextDependency game mods) ]);

  installStep = mod: ''
    ln -sf ${mod} $out/${mod.pname}
  '';

  mods-folder = game: mods:
    if (lib.isDerivation game && builtins.isList mods && builtins.all (mod: lib.isDerivation mod) mods) then
      mkDerivation {
        name = "mods";
        src = game; # just something. is not used but src is required
        #builtInputs = with-dependencies game mods;
        installPhase = lists.foldl (acc: curr: "${acc}\n${installStep curr}") "mkdir -p $out\n" (
          with-dependencies game mods
        );
      }
    else
      throw "passed invalid game or mod list";

  mapAttrNames = f: attrSet: attrSet
    |> builtins.attrNames
    |> map (name: {
      name = f name;
      value = builtins.getAttr name attrSet;
    })
    |> builtins.listToAttrs;

in
{
  inherit
    mods-folder
    mapAttrNames
  ;
}
