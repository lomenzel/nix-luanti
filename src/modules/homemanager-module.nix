{
  config,
  lib,
  pkgs,
  ...
}@args:
let

  inherit (import ./common.nix args)
    options
    toConf
    packages
    cfg
    byId
    ;

in
{

  inherit options;
  config = lib.mkMerge [
    (lib.mkIf cfg.addOverlay {
      nixpkgs.overlays = lib.singleton (import ../overlay.nix);
    })

    (lib.mkIf cfg.enable {
      systemd.user.services =
        builtins.mapAttrs
          (
            name: serverConfig:
            let
              whitelist = if serverConfig.whitelist == null then cfg.whitelist else serverConfig.whitelist;
              mods =
                serverConfig.mods
                ++ (if whitelist == null then [ ] else [ pkgs.luantiPackages.mods.whitelist_by_AntumDeluge ]);
              whitelistFile = pkgs.writeText "whitelist.txt" (builtins.concatStringsSep "\n" whitelist);
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
                rm -rf ${worldDir}/whitelist.txt
                rm -rf ~/.minetest/games/${gameDirName}

                mkdir -p ~/.minetest/games
                mkdir -p ${worldDir}
                ln -s ${serverConfig.game.withMods (m: mods)} ~/.minetest/games/${gameDirName}
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
          )
          (
            builtins.listToAttrs (
              lib.mapAttrsToList (name: value: {
                name = "luanti-${name}";
                inherit value;
              }) cfg.servers
            )
          );
    })
  ];
}
