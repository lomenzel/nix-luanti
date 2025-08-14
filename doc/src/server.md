## Configure servers

In your Nix configuration (e.g. `configuration.nix` or `home.nix` if using home-manager), use the nix-luanti module to set up your servers:

```nix
{ config, pkgs, ... }:
{
  services.luanti = {
    enable = true;

    # default whitelist for all servers
    whitelist = [ "alice" ];

    servers = with pkgs.luantiPackages; {
      cool-server = {
        # VoxeLibre is the default game
        game = games.mineclonia;

        # by default no mods are installed
        mods = with mods; [];

        # port has no default so it must be set
        port = 30000;

        # default whitelist applies if set. only alice can join cool-server
      };
      other-cool-server = {

        # overrides the default whitelist so alice can not join other-cool-server
        whitelist = [
          "bob"
          "charlie"
        ];
        game = games.minetest_game;

        # resolves dependencies automatically if possible
        mods = with mods; [
          animalia
          i3
        ];
        port = 30001;

        config = {
          # config options directly passed to luanti.conf
        };
      };

      # you can add as many servers you want.
    };
  };

  # your other configuration
}
```

A minimal Config may look like this:

```nix
{inputs, pkgs, config, ...}:
{
  services.luanti = {
    enable = true;
    servers.default.port = 30000;
  };

  # your other configuration
}
```

it would deploy a VoxeLibre server without a whitelist and without additional mods on UDP port 30000

### Troubleshooting

The systemd service is named `luanti-<your-server-name>.service` so if you set up `services.luanti.servers.adventure` you can see the status of the server by running `systemctl status luanti-adventure.service` and all its files like the world file the .minetest directory and everything else will be placed in `/var/lib/luanti-adventure`
