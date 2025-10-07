{
  callPackage,
  lib,
  nix-luanti,
}:
{
  e2e = import ./e2e { inherit nix-luanti lib callPackage; };
}
