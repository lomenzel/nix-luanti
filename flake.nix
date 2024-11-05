{
  description = "a flake containing all games and mods for Luanti";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in rec
      {
        packages = import src/packages.nix {
          mkDerivation = pkgs.stdenv.mkDerivation;
          fetchurl = pkgs.fetchurl;
          unzip = pkgs.unzip;
        };
        devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            (writeShellScriptBin "generate" ''
              echo "generating..."
              ${pkgs.nodejs}/bin/node ./updater/fetchContentDB.js
              ${pkgs.nixfmt-rfc-style}/bin/nixfmt ./src/generated
            '')
          ];
        };
        nixosModules.default = import ./src/module.nix;
        lib = import ./src/utils/lib.nix {
          byId = packages.${system}.byId;
          lists = nixpkgs.lib.lists;
          mkDerivation = pkgs.stdenv.mkDerivation;
        };
      }
    );
}
