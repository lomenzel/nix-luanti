{
  lib,
  pkgs,
  config,
  ...
}:
rec {
  cfg = config.services.luanti;
  nix-luanti-lib = import ../utils/lib.nix {
    inherit lib;
    inherit (packages) byId;
    lists = lib.lists;
    mkDerivation = pkgs.stdenv.mkDerivation;
  };
  packages = (
    import ../packages.nix {
      mkDerivation = pkgs.stdenv.mkDerivation;
      inherit (pkgs) lib unzip fetchurl;
    }
  );
  inherit (packages) byId;

  options.services.luanti = with lib.types; {
    enable = lib.mkEnableOption "Luanti Server Management";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.luanti-server;
    };
    whitelist = lib.mkOption {
      type = nullOr (listOf str);
      default = null;
      description = ''
        Default white list used by all servers unles explicitly declared in server
      '';
    };
    servers = lib.mkOption {
      type =
        with lib.types;
        attrsOf (submodule {
          options = {
            port = lib.mkOption {
              type = lib.types.int;
              #default = 30000;
              description = ''
                Port number to bind to.
              '';
            };
            game = lib.mkOption {
              #package of the luanti game that should run
              default = byId.games."Wuzzy/mineclone2";
            };
            package = lib.mkOption {
              type = lib.types.package;
              default = cfg.package;
            };
            whitelist = lib.mkOption {
              type = nullOr (listOf str);
              default = null;
              description = ''
                whitelist for this server. overrides default whitelist
                example: ["alice" "bob"]
                leave this option null to use the default whitelist
              '';
            };
            mods = lib.mkOption {
              type = listOf package;
              default = [ ];
              #list of packages (has to be luanti mods. dont know if i need to check that here)
            };
            config = lib.mkOption {
              type = lib.types.attrsOf lib.types.anything;
              default = { };
              description = ''
                Settings to add to the luanti config file.
                by default sets the prometheus exporter address to 127.0.0.1:${"$"}{port}
              '';
            };
          };
        });
      default = { };
      description = "Configuration for Luanti Servers";
    };
  };
}
