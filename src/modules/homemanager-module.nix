{
  config,
  lib,
  pkgs,
  ...
}@args:
let

  inherit (import ./common.nix args)
    options
    nix-luanti-lib
    packages
    cfg
    byId
    ;
  inherit (nix-luanti-lib) toConf;

in
{
  inherit options;
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
        gameDirName = "nix-luanti-${
          builtins.replaceStrings
            [
              "."
              "/"
              " "
            ]
            [
              "no"
              "no"
              "no"
            ]
            name
        }";
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
