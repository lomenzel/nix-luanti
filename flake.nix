{
  description = "a flake containing all games and mods for Luanti";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  outputs ={ self, nixpkgs, ... }: with builtins; {
    packages = nixpkgs.legacyPackages
      |> attrNames
      |> map (system: let pkgs = import nixpkgs { inherit system; }; in {
        name = system; 
        value = (import src/packages.nix {
            inherit (pkgs.stdenv) mkDerivation;
            inherit (pkgs) unzip fetchurl lib;
          }) // {
            test = import ./test.nix { inherit pkgs; nix-luanti = self; };
            fetchContentDB = pkgs.writeShellScriptBin "fetchContentDB" ''
              echo "fetching ContentDB..."
              ${pkgs.nodejs}/bin/node ./src/utils/updater/fetchContentDB.js
            '';
          };
      })
      |> listToAttrs;
    nixosModules.default = import ./src/module.nix;
  };
}