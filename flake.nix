{
  description = "a flake containing all games and mods for Luanti";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { self
    , nixpkgs
    , flake-utils
    ,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        packages = import src/packages.nix {
          mkDerivation = pkgs.stdenv.mkDerivation;
          fetchurl = pkgs.fetchurl;
          unzip = pkgs.unzip;
          inherit (pkgs) lib;
        };
        devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            (writeShellScriptBin "fetch" ''
              echo "fetching ContentDB..."
              ${nodejs}/bin/node ./src/utils/updater/fetchContentDB.js
            '')
          ];
        };
        nixosModules.default = import ./src/module.nix;
        lib = import ./src/utils/lib.nix {
          byId = self.packages.${system}.byId;
          lists = nixpkgs.lib.lists;
          mkDerivation = pkgs.stdenv.mkDerivation;
        };
      }
    );
}
