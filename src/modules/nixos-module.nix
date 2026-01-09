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
    enabled-servers
    cfg
    ;

  wasm-servers-raw = lib.filterAttrs (_: server: server.host != null) enabled-servers;
  wasm-servers = lib.listToAttrs (
    (lib.foldl (
      acc: curr:
      acc
      ++ [
        ({
          inherit (curr) name;
          value = curr.value // {
            number = builtins.length acc;
          };
        })
      ]
    ) [ ] (lib.attrsToList wasm-servers-raw))
  );
  mapservers = lib.filterAttrs (_: server: server.mapserver.enable == true) enabled-servers;

  ports-to-open = lib.mapAttrsToList (_: server: server.port) (
    lib.filterAttrs (_: server: server.openFirewall) enabled-servers
  );

in
{

  inherit options;
  config = lib.mkMerge [
    {

      networking.firewall.allowedUDPPorts = ports-to-open;

      networking.firewall.allowedTCPPorts =
        lib.mkIf (lib.filterAttrs (_: server: server.openFirewall) wasm-servers != { })
          [
            443
            8080
            80
          ];

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
              }) enabled-servers
            )
          );

      services.luanti.proxy.enable = lib.mkIf (builtins.length (lib.attrsToList wasm-servers) > 0) true;

      services.luanti.proxy.directProxies = lib.mapAttrsToList (name: value: {
        address = "10.0.0.${builtins.toString value.number}";
        port = value.port;
      }) wasm-servers;

      services.nginx = lib.mkIf (builtins.length (lib.attrsToList wasm-servers) > 0) {
        enable = true;
        virtualHosts = builtins.listToAttrs (
          lib.mapAttrsToList (name: value: {
            name = value.host;
            value = {
              root = pkgs.luanti-wasm.override {
                serverName = name;
                port = value.port;
                host = "10.0.0.${builtins.toString value.number}";
                proxyUrl = "${if value.ssl then "wss://" else "ws://"}${value.host}/proxy";
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
                "/proxy" = {
                  proxyPass = "http://localhost:${builtins.toString cfg.proxy.port}";
                  proxyWebsockets = true;
                  extraConfig = ''
                    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                  '';
                };
                "/map" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}/";
                };

                # probably better to patch mapserver to support relative paths
                "/js" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/css" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/api" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                  proxyWebsockets = true;
                };
                "/lib" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/bootstrap.min.js" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/bundle.js" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/fontawesome.min.css" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/leavelet.css" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/custom.css" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/leaflet.awesome-markers.css" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/main.js" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/webfonts" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
                "/pics" = lib.mkIf (value.mapserver.enable) {
                  proxyPass = "http://localhost:${builtins.toString value.mapserver.config.port}";
                };
              };

            };
          }) wasm-servers
        );
      };

      # luanti server
      systemd.services =
        builtins.mapAttrs
          (
            name: serverConfig:
            let
              whitelist = if serverConfig.whitelist == null then cfg.whitelist else serverConfig.whitelist;
              mods =
                serverConfig.mods
                ++ (if whitelist == null then [ ] else [ pkgs.luantiPackages.mods.whitelist_by_AntumDeluge ])
                ++ (
                  if serverConfig.mapserver.companionMod && serverConfig.mapserver.enable then
                    [ pkgs.luantiPackages.mods.mapserver ]
                  else
                    [ ]
                );
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
                          {
                            prometheus_listener_address = "127.0.0.1:${toString serverConfig.port}";
                          }
                          // (
                            if serverConfig.mapserver.enable && serverConfig.mapserver.companionMod then
                              {

                                "secure.http_mods" = "mapserver";
                                "mapserver.url" = "http://127.0.0.1:${toString serverConfig.mapserver.config.port}";
                                "mapserver.key" =
                                  if
                                    (
                                      builtins.hasAttr "webapi" serverConfig.mapserver.config
                                      && builtins.hasAttr "secretkey" serverConfig.mapserver.config.webapi
                                    )
                                  then

                                    serverConfig.mapserver.config.webapi.secretkey
                                  else
                                    throw "mapserver companion mod enabled but webapi.secretkey missing in mapserver config";
                              }
                            else
                              { }
                          )
                          // serverConfig.config
                        )
                      )
                    } \
                    --port ${builtins.toString serverConfig.port} \
                    --color always \
                    --world ~/world \
                    --gameid ${serverConfig.game.pname}
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
              }) enabled-servers
            )
          );

    }
    {

      systemd.services =
        builtins.mapAttrs
          (name: serverConfig: {
            description = "luanti mapserver for ${name}";
            after = [
              "netwrork.target"
              "luanti-${name}.service"
            ];
            wantedBy = [ "multi-user.target" ];
            serviceConfig = {
              ExecStart = pkgs.writeShellScript "start-luanti-mapserver" ''
                # port configured: ${
                  if builtins.hasAttr "port" serverConfig.mapserver.config then
                    toString serverConfig.mapserver.config.port
                  else
                    throw "mapserver port must be defined. missing for ${name}"
                }

                ${
                  if serverConfig.mapserver.enable then
                    ''
                      rm -rf ~/world/mapserver.json
                      cat > ~/world/mapserver.json << EOF
                      ${builtins.toJSON serverConfig.mapserver.config}
                      EOF
                    ''
                  else
                    ""
                }
                cd ~/world
                ${pkgs.luanti-mapserver}/bin/mapserver
              '';
              User = "luanti-${lib.removePrefix "luanti-mapserver-" name}";
              Group = "luanti";
              Restart = "on-failure";
            };
          })
          (
            builtins.listToAttrs (
              lib.mapAttrsToList (name: value: {
                name = "luanti-mapserver-${name}";
                inherit value;
              }) mapservers
            )
          );
    }
    (lib.mkIf cfg.addOverlay {
      nixpkgs.overlays = lib.singleton (import ../overlay.nix);
    })
    (lib.mkIf cfg.proxy.enable {

      users.groups.luanti = { };
      users.users.proxy-luanti-wasm = {
        description = "User for Luanti proxy";
        home = "/var/lib/${"proxy-luanti-wasm"}";
        createHome = true;
        group = "luanti";
        isSystemUser = true;
      };
      systemd.services.luanti-wasm-proxy = {
        description = "Proxy for the luanti wasm packages";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        serviceConfig = {
          ExecStart = pkgs.luanti-wasm-proxy.override {
            port = cfg.proxy.port;
            directProxyStr = ''
              [
                ${builtins.concatStringsSep "\n" (
                  builtins.map (
                    p: "['${p.address}', '${p.realAddress}', ${builtins.toString p.port}],"
                  ) cfg.proxy.directProxies
                )}
              ]
            '';
          };
          User = "proxy-luanti-wasm";
          Group = "luanti";
          Restart = "on-failure";
        };
      };
    })
  ];
}
