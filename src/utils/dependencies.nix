{ byId, lists }:
let
  checkDependencies = game: mods: builtins.length (missingDependencies game mods) == 0;
  missingDependencies = game: mods: lists.substractLists (allProviding game mods) (allDeps mods);
  depsProvidedBy =
    mods:
    builtins.listToAttrs (
      builtins.foldl' (
        acc: curr:
        acc
        ++ (builtins.map (dep: {
          name = dep.name;
          value = dep.packages;
        }) curr.depends)
      ) [ ] mods
    );
  allDeps =
    mods:
    lists.naturalSort (
      lists.unique (
        builtins.foldl' (x: y: x ++ y) [ ] (
          builtins.map (mod: builtins.map (dep: dep.name) mod.depends) mods
        )
      )
    );
  allProviding =
    game: mods: lists.naturalSort (lists.unique (game.provides ++ (allProvidingModsOnly mods)));
  allProvidingModsOnly =
    mods: builtins.foldl' (x: y: x ++ y) [ ] (builtins.map (mod: mod.provides) mods);
  findNextDependency =
    game: mods: byId.mods.${(depsProvidedBy mods).${builtins.head (missingDependencies game mods)}};
in
rec {
  with-dependencies =
    game: mods:
    if checkDependencies game mods then
      mods
    else
      with-dependencies game (mods ++ [ (findNextDependency game mods) ]);

}
