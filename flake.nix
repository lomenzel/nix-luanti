{
  description = "a flake containing all games and mods for Luanti";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    nix-flake-tests.url = "github:antifuchs/nix-flake-tests";
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
    }@inputs:
    with builtins;
    let

      tests =
        pkgs:
        import ./tests {
          nix-luanti = self;
          inherit (pkgs) lib callPackage;
        };

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
        full = pkgs.luanti.withPackages {
          clientMods = pkgs.luantiPackages.clientMods |> pkgs.lib.attrValues;
          games = pkgs.luantiPackages.games |> pkgs.lib.attrValues;
          mods = pkgs.luantiPackages.mods |> pkgs.lib.attrValues;
          texturePacks =
            pkgs.luantiPackages.texturePacks
            |> pkgs.lib.mapAttrsToList (
              name: tp:
              if name == "minecraft" then
                # tp.override {
                #  acceptMinecraftEula = true;
                #}
                null
              else if name == "modrinth" then
                null
              else
                tp
            )
            |> builtins.filter (e: e != null)
            |> pkgs.lib.flatten;
        };

        example =
          with pkgs.luantiPackages;
          pkgs.luanti.withPackages {
            clientMods = [ clientMods.minimap_on ];
            games = with games; [
              mineclone2
              mineclonia
              exile
            ];
            mods = with mods; [ animalia ];
            texturePacks = [
              texturePacks.modrinth.barrels-of-tnt
              (pkgs.mergeLuantiTexturePacks [
                texturePacks.modrinth.upside-down-tools
                texturePacks.modrinth.barrels-of-tnt
                texturePacks.modrinth.lava-xp
                texturePacks.soothing32
              ])

            ];
          };

        book = mdbook.lib.buildMdBookProject {
          inherit system pkgs;
          src = ./doc;
        };

        update = pkgs.callPackage ./src/utils/updater { };

      });
      nixosModules.default = import ./src/modules/nixos-module.nix;
      homeManagerModules.default = import ./src/modules/homemanager-module.nix;

      games = eachSystem (
        pkgs:
        builtins.mapAttrs (
          name: value: pkgs.luanti.withPackages { games = [ value ]; }
        ) pkgs.luantiPackages.games
      );

      # for `nix fmt`
      formatter = eachSystem (pkgs: treefmtEval.${pkgs.stdenv.hostPlatform.system}.config.build.wrapper);
      # for `nix flake check`
      checks = eachSystem (
        pkgs:

        {
          formatting = treefmtEval.${pkgs.stdenv.hostPlatform.system}.config.build.check self;
          unit = inputs.nix-flake-tests.lib.check {
            tests = (tests pkgs).unit;
            inherit pkgs;
          };
          inherit (self.packages.${pkgs.stdenv.hostPlatform.system}) example full;
        }
        // (tests pkgs).e2e
      );
      overlays.default = import ./src/overlay.nix;
    };
}
