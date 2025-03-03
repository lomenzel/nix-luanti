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
            test = pkgs.lib.filesystem.listFilesRecursive ./tests
              |> map (test: {
                  name = pkgs.lib.path.subpath.components (pkgs.lib.path.splitRoot test).subpath 
                    |> pkgs.lib.last
                    |> pkgs.lib.removeSuffix ".nix";
                  value = import test { inherit pkgs; nix-luanti = self; }; 
                })
              |> listToAttrs;
            testPipeline = self.packages.${system}.test
              |> attrNames
              |> (list: ''
                stages:
                  - test
                
                ${map (testName: ''
                    ${testName}:
                      stage: test
                      tags:
                        - nix
                      script:
                        - nix build --extra-experimental-features "nix-command flakes pipe-operators" .\#test.${testName}
                '') list
                |> foldl' (acc: curr: acc + "\n" + curr) ""
                } 
              '')
              |> pkgs.writeText "tests.yml"
              ;
            fetchContentDB = pkgs.writeShellScriptBin "fetchContentDB" ''
              echo "fetching ContentDB..."
              ${pkgs.nodejs}/bin/node ./src/utils/updater/fetchContentDB.js
            '';
          };
      })
      |> listToAttrs;
    nixosModules.default = import ./src/nixos-module.nix;
    homeManagerModules.default = import ./src/homemanager-module.nix;
  };
}