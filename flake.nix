{
  description = "a flake containing all games and mods for Luanti";

  inputs  = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    mdbook.url = "github:pbar1/nix-mdbook";
  };


  outputs =
    {
      self,
      nixpkgs,
      systems,
      treefmt-nix,
      mdbook,
      ...
    }:
    with builtins;
    let
      eachSystem = f: nixpkgs.lib.genAttrs (import systems) (system: f nixpkgs.legacyPackages.${system});
      treefmtEval = eachSystem (pkgs: treefmt-nix.lib.evalModule pkgs ./treefmt.nix);
    in
    {
      packages = mapAttrs (
        system: _:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ (import ./src/overlay.nix) ];
          };
          lib = pkgs.lib;
        in
        pkgs.luantiPackages
        // {

          inherit (pkgs)
            luanti-wasm
            luanti-wasm-proxy
            ;
          example =
            with pkgs.luantiPackages;
            pkgs.luanti.withPackages {
              clientMods = [ clientMods.minimap_on ];
              games = [ games.mineclone2 ];
            };
          
          book = mdbook.lib.buildMdBookProject {
            inherit system pkgs;
            src = ./doc;
          };

          test =
            pkgs.lib.filesystem.listFilesRecursive ./tests
            |> map (test: {
              name =
                pkgs.lib.path.subpath.components (pkgs.lib.path.splitRoot test).subpath
                |> pkgs.lib.last
                |> pkgs.lib.removeSuffix ".nix";
              value = import test {
                inherit pkgs;
                nix-luanti = self;
              };
            })
            |> listToAttrs;
          testPipeline =
            self.packages.${system}.test
            |> attrNames
            |> (list: ''
              stages:
                - test

              ${
                map (testName: ''
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
            |> pkgs.writeText "tests.yml";
          fetchContentDB = pkgs.writeShellScriptBin "fetchContentDB" ''
            echo "fetching ContentDB..."
            ${pkgs.nodejs}/bin/node ./src/utils/updater/fetchContentDB.js
          '';
        }

      ) nixpkgs.legacyPackages;
      nixosModules.default = import ./src/modules/nixos-module.nix;
      homeManagerModules.default = import ./src/modules/homemanager-module.nix;
      # for `nix fmt`
      formatter = eachSystem (pkgs: treefmtEval.${pkgs.system}.config.build.wrapper);
      # for `nix flake check`
      checks = eachSystem (pkgs: {
        formatting = treefmtEval.${pkgs.system}.config.build.check self;
      });
      overlays.default = import ./src/overlay.nix;
    };
}
