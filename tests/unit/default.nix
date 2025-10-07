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
|> lib.listToAttrs
