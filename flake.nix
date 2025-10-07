{
  description = "a flake containing all games and mods for Luanti";

  inputs = {
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
      eachSystem =
        f:
        nixpkgs.lib.genAttrs (import systems) (
          system:
          f (
            import nixpkgs {
              inherit system;
              overlays = [ (self.overlays.default) ];
            }
          )
        );
      treefmtEval = eachSystem (pkgs: treefmt-nix.lib.evalModule pkgs ./treefmt.nix);
    in
    {
      packages = eachSystem (pkgs: {
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

        fetchContentDB = pkgs.callPackage ./src/utils/updater { };
      });
      nixosModules.default = import ./src/modules/nixos-module.nix;
      homeManagerModules.default = import ./src/modules/homemanager-module.nix;

      content = eachSystem (pkgs: {
        inherit (pkgs.luantiPackages) clientMods mods texturePacks;
        games = builtins.mapAttrs (
          name: value: pkgs.luanti.withPackages { games = [ value ]; }
        ) pkgs.luantiPackages.games;

      });

      # for `nix fmt`
      formatter = eachSystem (pkgs: treefmtEval.${pkgs.system}.config.build.wrapper);
      # for `nix flake check`
      checks = eachSystem (
        pkgs:
        let
          tests = import ./tests {
            nix-luanti = self;
            inherit (pkgs) lib callPackage;
          };

        in
        {
          formatting = treefmtEval.${pkgs.system}.config.build.check self;
        }
        // tests.e2e
      );
      overlays.default = import ./src/overlay.nix;
    };
}
