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
  byId =
    (import ./packages.nix {
      mkDerivation = pkgs.stdenv.mkDerivation;
      inherit (pkgs) lib unzip fetchurl;
    }).byId;

  # toConf copied from nixpkgs module

  toConf =
    values:
    lib.concatStrings (
      lib.mapAttrsToList
        (
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
          }.${builtins.typeOf value}
        )
        values
    );

  toConfMultiline =
    name: value:
      assert lib.assertMsg
        (
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

in
{
  options.services.luanti = {
    enable = lib.mkEnableOption "Luanti Server Management";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.luanti-server;
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
              default = byId.games."Minetest/minetest_game";
            };
            package = lib.mkOption {
              type = lib.types.package;
              default = cfg.package;
            };
            mods = lib.mkOption {
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
  config = lib.mkIf cfg.enable {
    users.groups.luanti = { };
    users.users = builtins.mapAttrs
      (
        name: serverConfig:
          let
            mods = nix-luanti-lib.mods-folder serverConfig.game serverConfig.mods;
          in
          {
            description = "User for Luanti Server ${builtins.replaceStrings [ "luanti" ] [ "" ] name}";
            home = "/var/lib/${name}";
            createHome = true;
            group = "luanti";
            isSystemUser = true;
          }
      )
      (nix-luanti-lib.mapAttrNames (name: "luanti-${name}") cfg.servers);

    systemd.services = builtins.mapAttrs
      (
        name: serverConfig:

          {
            #name = name;
            description = "Luanti server instance for ${name}.";
            after = [ "network.target" ];
            wantedBy = [ "multi-user.target" ];
            serviceConfig = {
              ExecStart = pkgs.writeShellScript "start-luanti-server" ''
                rm -rf ~/.minetest
                rm -rf ~/world/worldmods

                mkdir -p ~/.minetest/games
                mkdir -p ~/world

                ln -s ${nix-luanti-lib.mods-folder serverConfig.game serverConfig.mods} ~/world/worldmods
                ln -s ${serverConfig.game} ~/.minetest/games/${serverConfig.game.pname}

                ${serverConfig.package}/bin/luantiserver \
                  --config ${builtins.toFile "luanti.conf" (
                    {prometheus_listener_address = "127.0.0.1:${toString serverConfig.port}";} // serverConfig.config
                    |> toConf
                  )} \
                  --port ${builtins.toString serverConfig.port} \
                  --color always \
                  --world ~/world \
                  --verbose \
                  --gameid ${serverConfig.game.pname}
              '';
              # TODO: world generation should respect config, or does it by default?
              User = name;
              Group = "luanti";
              Restart = "on-failure";

            };
          }
      )
      (nix-luanti-lib.mapAttrNames (name: "luanti-${name}") cfg.servers);

  };
}
