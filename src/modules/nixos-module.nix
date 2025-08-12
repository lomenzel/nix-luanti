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
    cfg
    ;

  wasm-servers = lib.filterAttrs (_: server: server.host != null) cfg.servers;

in
{

  inherit options;
  config = lib.mkMerge [
    (lib.mkIf cfg.enable {
      users.groups.luanti = { };
      users.users =
        builtins.mapAttrs
          (name: serverConfig: {
            description = "User for Luanti Server ${builtins.replaceStrings [ "luanti" ] [ "" ] name}";
            home = "/var/lib/${name}";
            createHome = true;
            group = "luanti";
            isSystemUser = true;
          })
          (
            builtins.listToAttrs (
              lib.mapAttrsToList (name: value: {
                name = "luanti-${name}";
                inherit value;
              }) cfg.servers
            )
          );

      services.nginx = lib.mkIf (builtins.length (lib.attrsToList wasm-servers) > 0) {
        enable = true;
        virtualHosts = builtins.listToAttrs (
          lib.mapAttrsToList (name: value: {
            name = value.host;
            value = {
              root = pkgs.luanti-wasm.override {
                serverName = name;
                port = value.port;
                host = value.host;
              };
              forceSSL = value.ssl;
              enableACME = value.ssl;
              locations = {
                "/index.html".extraConfig = ''
                  add_header Cross-Origin-Embedder-Policy "require-corp";
                  add_header Cross-Origin-Opener-Policy "same-origin";
                  add_header Cache-Control "no-cache, no-store, must-revalidate";
                  add_header Pragma "no-cache";
                  add_header Expires 0;
                '';
                "/52c68dca94ed/".extraConfig = ''
                  add_header Cache-Control "public, max-age=31536000, immutable";
                '';
                "/52c68dca94ed/minetest.worker.js".extraConfig = ''
                  add_header Cross-Origin-Embedder-Policy "require-corp";
                  add_header Cross-Origin-Opener-Policy "same-origin";
                '';
                "/52c68dca94ed/packs/".extraConfig = ''
                  add_header Access-Control-Allow-Origin "*";
                '';
              };
            };
          }) wasm-servers
        );
      };

      systemd.services =
        builtins.mapAttrs
          (
            name: serverConfig:
            let
              whitelist = if serverConfig.whitelist == null then cfg.whitelist else serverConfig.whitelist;
              mods =
                serverConfig.mods
                ++ (if whitelist == null then [ ] else [ pkgs.luantiPackages.mods.whitelist_by_AntumDeluge ]);
              whitelistFile = pkgs.writeText "whitelist.txt" (builtins.concatStringsSep "\n" whitelist);
            in
            {
              #name = name;
              description = "Luanti server instance for ${name}.";
              after = [ "network.target" ];
              wantedBy = [ "multi-user.target" ];
              serviceConfig = {
                ExecStart = pkgs.writeShellScript "start-luanti-server" ''
                  rm -rf ~/.minetest
                  rm -rf ~/world/whitelist.txt

                  mkdir -p ~/world

                  ${
                    if whitelist == null then
                      ""
                    else
                      ''
                        rm -rf ~/world/whitelist.txt
                        cat ${whitelistFile} > ~/world/whitelist.txt
                      ''
                  }

                  ${
                    serverConfig.package.withPackages {
                      games = lib.singleton (serverConfig.game.withMods (m: mods));
                    }
                  }/bin/luantiserver \
                    --config ${
                      builtins.toFile "luanti.conf" (
                        toConf (
                          { prometheus_listener_address = "127.0.0.1:${toString serverConfig.port}"; } // serverConfig.config
                        )
                      )
                    } \
                    --port ${builtins.toString serverConfig.port} \
                    --color always \
                    --world ~/world \
                    --gameid ${serverConfig.game.name}
                '';
                User = name;
                Group = "luanti";
                Restart = "on-failure";

              };
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
    (lib.mkIf cfg.addOverlay {
      nixpkgs.overlays = lib.singleton (import ../overlay.nix);
    })
  ];
}
