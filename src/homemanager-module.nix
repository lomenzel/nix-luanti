{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.services.luanti;
  nix-luanti-lib = import ./utils/lib.nix {
    inherit byId lib;
    lists = lib.lists;
    mkDerivation = pkgs.stdenv.mkDerivation;
  };
  packages = (
    import ./packages.nix {
      mkDerivation = pkgs.stdenv.mkDerivation;
      inherit (pkgs) lib unzip fetchurl;
    }
  );

  inherit (packages) byId;

  # toConf copied from nixpkgs module

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

in
{
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
  config = lib.mkIf cfg.enable {
    systemd.user.services = builtins.mapAttrs (
      name: serverConfig:
      let
        whitelist = if serverConfig.whitelist == null then cfg.whitelist else serverConfig.whitelist;
        mods = nix-luanti-lib.mods-folder serverConfig.game (
          serverConfig.mods ++ (if whitelist == null then [ ] else [ byId.mods."AntumDeluge/whitelist" ])
        );
        whitelistFile = pkgs.writeText "whitelist.txt" (
          builtins.foldl' (acc: curr: acc + "\n" + curr) "" whitelist |> lib.trim
        );
        worldDir = "${config.xdg.dataHome}/nix-luanti/${name}/world";
        minetestDir = "${config.xdg.configHome}/minetest";
        gameDirName = "nix-luanti-${builtins.replaceStrings [ "." "/" " " ] [ "no" "no" "no" ] name}";
      in
      {
        Install.WantedBy = [ "default.target" ];
        Unit.After = [ "network.target" ];
        Unit.Description = "Luanti server instance for ${name}";
        Service.ExecStart = pkgs.writeShellScript "start-${name}-server" ''
          rm -rf ${worldDir}/worldmods
          rm -rf ${worldDir}/whitelist.txt
          rm -rf ~/.minetest/games/${gameDirName}

          mkdir -p ~/.minetest/games
          mkdir -p ${worldDir}

          ln -s ${mods} ${worldDir}/worldmods
          ln -s ${serverConfig.game} ~/.minetest/games/${gameDirName}
          ${
            if whitelist == null then
              ""
            else
              ''
                rm -rf ${worldDir}/whitelist.txt
                cat ${whitelistFile} > ${worldDir}/whitelist.txt
              ''
          }

          ${serverConfig.package}/bin/luantiserver \
            --config ${
              builtins.toFile "luanti.conf" (
                { prometheus_listener_address = "127.0.0.1:${toString serverConfig.port}"; } // serverConfig.config
                |> toConf
              )
            } \
            --port ${builtins.toString serverConfig.port} \
            --color always \
            --world ${worldDir} \
            --gameid ${gameDirName}
        '';
      }
    ) (nix-luanti-lib.mapAttrNames (name: "luanti-${name}") cfg.servers);
  };
}
