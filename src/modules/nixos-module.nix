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
    users.groups.luanti = { };
    users.users = builtins.mapAttrs (name: serverConfig: {
      description = "User for Luanti Server ${builtins.replaceStrings [ "luanti" ] [ "" ] name}";
      home = "/var/lib/${name}";
      createHome = true;
      group = "luanti";
      isSystemUser = true;
    }) (nix-luanti-lib.mapAttrNames (name: "luanti-${name}") cfg.servers);

    systemd.services = builtins.mapAttrs (
      name: serverConfig:
      let
        whitelist = if serverConfig.whitelist == null then cfg.whitelist else serverConfig.whitelist;
        mods = nix-luanti-lib.mods-folder serverConfig.game (
          serverConfig.mods ++ (if whitelist == null then [ ] else [ byId.mods."AntumDeluge/whitelist" ])
        );
        whitelistFile = pkgs.writeText "whitelist.txt" (
          builtins.foldl' (acc: curr: acc + "\n" + curr) "" whitelist |> lib.trim
        );
      in
      {
        #name = name;
        description = "Luanti server instance for ${name}.";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          ExecStart = pkgs.writeShellScript "start-luanti-server" ''
            rm -rf ~/.minetest
            rm -rf ~/world/worldmods
            rm -rf ~/world/whitelist.txt

            mkdir -p ~/.minetest/games
            mkdir -p ~/world

            ln -s ${mods} ~/world/worldmods
            ln -s ${serverConfig.game} ~/.minetest/games/${serverConfig.game.pname}
            ${
              if whitelist == null then
                ""
              else
                ''
                  rm -rf ~/world/whitelist.txt
                  cat ${whitelistFile} > ~/world/whitelist.txt
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
              --world ~/world \
              --gameid ${serverConfig.game.pname}
          '';
          # TODO: world generation should respect config, or does it by default?
          User = name;
          Group = "luanti";
          Restart = "on-failure";

        };
      }
    ) (nix-luanti-lib.mapAttrNames (name: "luanti-${name}") cfg.servers);

  };
}
