{ byId
, lists
, mkDerivation
,
}:
let
  checkDependencies = game: mods: (builtins.length (missingDependencies game mods)) == 0;

  missingDependencies = game: mods: lists.subtractLists (allProviding game mods) (allDeps mods);
  depsProvidedBy =
    mods:
    builtins.listToAttrs (
      builtins.foldl'
        (
          acc: curr:
          acc
          ++ (builtins.map
            (dep: {
              name = dep.name;
              value = dep.packages;
            })
            curr.meta.depends)
        ) [ ]
        mods
    );
  allDeps =
    mods:
    lists.naturalSort (
      lists.unique (
        builtins.foldl' (x: y: x ++ y) [ ] (
          builtins.map (mod: builtins.map (dep: dep.name) mod.meta.depends) mods
        )
      )
    );
  allProviding =
    game: mods: lists.naturalSort (lists.unique (game.meta.provides ++ (allProvidingModsOnly mods)));
  allProvidingModsOnly =
    mods: builtins.foldl' (x: y: x ++ y) [ ] (builtins.map (mod: mod.meta.provides) mods);
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

  mods-folder =
    game: mods:
    mkDerivation {
      name = "mods";
      src = game; # just something. is not used but src is required
      #builtInputs = with-dependencies game mods;
      installPhase = lists.foldl (acc: curr: "${acc}\n${installStep curr}") "mkdir -p $out\n" (
        with-dependencies game mods
      );
    };
  mapAttrNames =
    f: attrSet:
    builtins.listToAttrs (
      map
        (name: {
          name = (f name);
          value = builtins.getAttr name attrSet;
        })
        (builtins.attrNames attrSet)
    );

in
{

  inherit
    mods-folder
    mapAttrNames
    ;

}
