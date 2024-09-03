{
  config,
  lib,
  pkgs,
  byId,
  nix-minetest-lib,
  ...
}:
let
  cfg = config.services.minetest;
in
{
  options.services.minetest = {
    enable = lib.mkEnableOption "Minetest Server Management";
    servers = lib.mkOption {
      type =
        with lib.types;
        lib.attrsOf (submodule {
          options = {
            port = lib.mkOption {
              type = lib.types.int;
              default = 30000;
              description = ''
                Port number to bind to.
              '';
            };
            game = lib.mkOption {
              #package of the minetest game that should run
              default = byId.games."Minetest/minetest_game";
            };
            mods = lib.mkOption {
              #list of packages (has to be minetest mods. dont know if i need to check that here)
            };
            world = {
              mapgen = lib.mkOption {
                default = "v7"; # no plan what i am doing
              };
              seed = lib.mkOption {
                default = null;# maybe null should be random
              };
              # ... other map settings
            };
          };
        });
      default = { };
      description = "Configuration for Minetest Servers";
    };
  };
  config = lib.mkIf cfg.enable {
    users.users."nixminetest" = {
      description = "Minetest Server Service user";
      home = "/var/lib/nixminetest";
      createHome = true;
      group = "minetest";
    };
    systemd.services.minetest = builtins.mapAttrs (name: serverConfig: let 
      mods = nix-minetest-lib.with-dependencies serverConfig.game serverConfig.mods;
    in {
      name = "minetest-server-${name}";
      description = "Minetest server instance for ${name}.";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        ExecStart = ''
          ${pkgs.minetest}/bin/minetestserver \
            --server
        ''; # TODO
        User = "minetest";
        Group = "minetest";
        Restart = "on-failure";
      };
    }) cfg.servers;
  };
}
