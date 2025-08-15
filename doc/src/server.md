## Configure servers

To configure multiple Luanti servers using Nix-Luanti, you can define server instances in your Nix configuration file (configuration.nix or home.nix). Below are example configurations for different scenarios

### Example Configuration

#### Single Server with Default Settings

```nix
{ config, pkgs, ... }:
{
  services.luanti.servers.my_very_cool_server_name = {
      # Uses default game: VoxeLibre
      port = 30000;                                # Specifies the server port
    };
  };
}
```

#### Multi-Server with Custom Settings

```nix
{ config, pkgs, ... }:
{
services.luanti.servers = with pkgs.luantiPackages; {
    my_very_cool_peacefull_server ={
      port = 30001;
      mods = with pkgs-unstable.luantiPackages.mods; [
        waypoints
      ];
      config = {
        only_peaceful_mobs = true;
      };
      whitelist = [
        "alice"
        "bob"
      ];
    };

    another_server = {
      game = games.mineclonia;
      port = 30002;

      # this server uses only default configurations. no configuration is inherited from other servers.
    };
  };
};

```

#### Server Accessible trough the Browser

> Only works with NixOS and not in the Home-Manager module

```nix
{ config, pkgs, ...}: {

  services.luanti.servers = {
    my_very_cool_local_web_server = {
      host = "localhost";
      openFirewall = false;
      port = 30000;
    };
    my_very_cool_public_web_server = {
      host = "game.example.com";
      ssl = true;
      port = 30001;
    };
  };
}
```

This sets up nginx for web access as well as a Proxy server wor the wasm builds to be able to connect to the Servers.

### Troubleshooting

The systemd service is named `luanti-<your-server-name>.service` so if you set up `services.luanti.servers.adventure` you can see the status of the server by running `systemctl status luanti-adventure.service` and all its files like the world file the .minetest directory and everything else will be placed in `/var/lib/luanti-adventure`
