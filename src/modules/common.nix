{
  lib,
  pkgs,
  config,
  ...
}:
rec {

  # to conf from nixpkgs module
  toConf =
    values:
    lib.concatStrings (
      lib.mapAttrsToList (
        name: value:
        {
          bool = "${name} = ${toString value}\n";
          int = "${name} = ${toString value}\n";
          null = "";
          set = "${name} = {\n${toConf value}}\n";
          string =
            if (builtins.match NEEDS_MULTILINE_RE value) != null then
              toConfMultiline name value
            else
              "${name} = ${value}\n";
        }
        .${builtins.typeOf value}
      ) values
    );

  toConfMultiline =
    name: value:
    assert lib.assertMsg (
      (builtins.match UNESCAPABLE_RE value) == null
    ) ''""" can't be on its own line in a minetest config.'';
    "${name} = \"\"\"\n${value}\n\"\"\"\n";

  # Constants copied from nixpkgs module
  CONTAINS_NEWLINE_RE = ".*\n.*";
  # The following values are reserved as complete option values:
  # { - start of a group.
  # """ - start of a multi-line string.
  RESERVED_VALUE_RE = "[[:space:]]*(\"\"\"|\\{)[[:space:]]*";
  NEEDS_MULTILINE_RE = "${CONTAINS_NEWLINE_RE}|${RESERVED_VALUE_RE}";

  # There is no way to encode """ on its own line in a Minetest config.
  UNESCAPABLE_RE = ".*\n\"\"\"\n.*";

  cfg = config.services.luanti;

  options.services.luanti = with lib.types; {
    enable = lib.mkEnableOption "Luanti Server Management";
    addOverlay = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Add the luanti overlay to nixpkgs";
    };
    proxy = {
      port = lib.mkOption {
        type = lib.types.int;
        default = 30261;
      };
      enable = lib.mkEnableOption "Proxy for the luanti wasm package";
      directProxies = lib.mkOption {
        default = { };
        type = lib.types.listOf (
          lib.types.submodule {
            options = {
              port = lib.mkOption {
                type = lib.types.int;
              };
              address = lib.mkOption {
                type = lib.types.str;
              };
              realAddress = lib.mkOption {
                type = lib.types.str;
                default = "127.0.0.1";
              };
            };
          }
        );
      };
    };
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.luanti-server;
    };
    whitelist = lib.mkOption {
      type = nullOr (listOf str);
      default = null;
      description = ''
        Default white list used by all servers unless explicitly declared in server
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
              default = pkgs.luantiPackages.games.mineclone2;
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
            host = lib.mkOption {
              type = nullOr str;
              default = null;
              description = ''
                fqdn for the experimental luanti-wasm build
                only works for nixos. is ignored in the home-manager module
              '';
            };
            ssl = lib.mkEnableOption "Enable https for the wasm build";

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
