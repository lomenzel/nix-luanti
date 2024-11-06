{ config
, lib
, pkgs
, ...
}:
let
  cfg = config.services.luanti;
  nix-luanti-lib = import ./utils/lib.nix {
    inherit byId;
    lists = lib.lists;
    mkDerivation = pkgs.stdenv.mkDerivation;
  };
  byId = (import ./packages.nix {
          mkDerivation = pkgs.stdenv.mkDerivation;
          fetchurl = pkgs.fetchurl;
          unzip = pkgs.unzip;
        }).byId;
in
{
  options.services.luanti = {
    enable = lib.mkEnableOption "Luanti Server Management";
    servers = lib.mkOption {
      type =
        with lib.types;
        attrsOf (submodule {
          options = {
            port = lib.mkOption {
              type = lib.types.int;
              default = 30000;
              description = ''
                Port number to bind to.
              '';
            };
            game = lib.mkOption {
              #package of the luanti game that should run
              default = byId.games."Minetest/minetest_game";
            };
            mods = lib.mkOption {
              #list of packages (has to be luanti mods. dont know if i need to check that here)
            };
            world = {
              mapgen = lib.mkOption {
                default = "v7"; # no plan what i am doing
              };
              seed = lib.mkOption {
                default = null; # maybe null should be random
              };
              # ... other map settings
            };
            config = lib.mkOption {
              type = lib.types.attrsOf lib.types.anything;
              default = { };
              description = ''
                Settings to add to the luanti config file.
              '';
            };
          };
        });
      default = { };
      description = "Configuration for Luanti Servers";
    };
  };
  config =
    lib.mkIf cfg.enable
      {
        users.groups.luanti = {};
        users.users = builtins.mapAttrs
          (name: serverConfig:
            let
              mods = nix-luanti-lib.mods-folder serverConfig.game serverConfig.mods;
            in
            {
              description = "User for Luanti Server ${builtins.replaceStrings ["luanti"] [ "" ] name}";
              home = "/var/lib/luanti-${name}";
              # maybe its possible to generate a home folder as a derivation which includes the config and mods and at this point only to the nix store
              createHome = true;
              group = "luanti";
              isSystemUser = true;
            }
          )
          (nix-luanti-lib.mapAttrNames (name: "luanti${name}") cfg.servers);

        systemd.services = builtins.mapAttrs
          (
            name: serverConfig:

              {
                #name = name;
                description = "Luanti server instance for ${name}.";
                after = [ "network.target" ];
                wantedBy = [ "multi-user.target" ];
                serviceConfig = {
                  ExecStart = ''
                    ${pkgs.minetest}/bin/minetestserver \
                      --server --config ${builtins.toFile "luanti.conf" (builtins.toJSON serverConfig.config)} \
                      --port ${builtins.toString serverConfig.port}
                  ''; # TODO: luanti config format; also make sure it uses correct mods and map
                  User = "luanti${name}"; # TODO: Use the correct username if decided on what the username should be
                  Group = "luanti";
                  Restart = "on-failure";
                };
              }
          )
          (nix-luanti-lib.mapAttrNames (name: "luantiServer${name}") cfg.servers);

      };
}
