{
  lib,
}:
lib.filesystem.listFilesRecursive ./.

|> map (test: {
  name =
    lib.path.subpath.components (lib.path.splitRoot test).subpath
    |> lib.last
    |> lib.removeSuffix ".nix";
  value = import test lib;
})
|> lib.filter (file: file.name != "default")
|> (
  attrs:
  lib.concatLists (
    builtins.map (
      { name, value }:
      lib.mapAttrsToList (testCase: test: {
        name = "test_${name}_${testCase}";
        value = test;
      }) value
    ) attrs
  )
)
|> lib.listToAttrs
