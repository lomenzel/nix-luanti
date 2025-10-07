{
  lib,
  nix-luanti,
  callPackage,
}:
lib.filesystem.listFilesRecursive ./.

|> map (test: {
  name =
    lib.path.subpath.components (lib.path.splitRoot test).subpath
    |> lib.last
    |> lib.removeSuffix ".nix";
  value = callPackage test {
    inherit nix-luanti;
  };
})
|> lib.filter (file: file.name != "default")
|> lib.listToAttrs
