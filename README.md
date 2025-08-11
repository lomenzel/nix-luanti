# Nix-Luanti

## Overview

Nix-Luanti is a module and package collection that simplifies the setup and management of Luanti servers on NixOS and with Home-Manager. It provides a declarative way to configure and run multiple Luanti servers, including the ability to manage games, mods, and other settings through a clean Nix interface.

## Features

- **Declarative Configuration:** Easily define multiple Luanti server instances with different games and mods.
- **Extensive Content Library:** Leverage a comprehensive collection of Luanti games, mods, and texture packs sourced from the official ContentDB.
- **Automatic Dependency Resolution:** Automatically resolves and includes dependencies for mods, ensuring that your server configurations are correct and functional.
- **Client Configuration:** Install mods, texture packs, games and client side mods using `luanti.withPackages`

## Installation

Add the nix-luanti input to your flake:

```nix
{ inputs = {
    # other inputs
    nix-luanti = {
      type = "gitlab";
      owner = "leonard";
      repo = "nix-luanti";
      host = "git.menzel.lol";
      ref = "main";
    };
  };
  # the rest of your flake
}

```

### Server

import the nixos or home-manager module:

```nix
# configuration.nix or home.nix
{inputs, pkgs, config, ...}:
{

  imports = [
      # for nixos
      inputs.nix-luanti.nixosModules.default

      #for home-manager
      inputs.nix-luanti.homeManagerModules.default

      # your other imports
  ];

  # your other configuration
}

```

### Client

If you already imported the nixos or home-manager module, the overlay is allready installed.

If you don't want to use the module you can add only the overlay that gives you access to `pkgs.luanit.withPackages` and `pkgs.luantiPackages`:

```nix
# configuration.nix or home.nix
{inputs, pkgs, config, ...}: {
  nixpkgs.overlays = [
    inputs.nix-luanti.overlays.default

    # your other overlays
  ];

  # your other configuration
}
```

If you don't want to install the the overlay you can still access the luantiPackages with `inputs.nix-luanti.legacyPackages.${system}.luantiPackages`


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

## Configure client

> All official clients can connect to servers set up with nix-luanti.
No additional client configuration needed.

Example configuration:

```nix
{inputs, pkgs, config, ...}:
{
  # for home-manager
  home.packages = with pkgs; [
    (with luantiPackages; luanti.withPackages {
      games = with games; [
        mineclone2 # VoxeLibre
        (minetest_game.withMods (m: [
          # m contains all mods that state compatibility with that game on contentDB
          m."3d_armor"

          # but you can still add other mods
          mods.i3

          # mods installed using withMods on a game do not appear in the content browser and are installed and active on every world using that game

          # if installed using withMods dependencies are automatically added if possible
        ]))
        nodecore
      ];
      mods = with mods; [
        # mods that can be enabled/disabled per world
        # you are responsible to install dependencies
        animalia
        draconis
      ];
      texturePacks = with texturePacks; [
        # you still need to enable them in settings
        soothing32
        vilja_pix_2
      ];
      clientMods = with clientMods; [
        # client mods are enabled on every world you join even on servers
        alarm_watch
        toomuchinfo
      ];
    })
    
    # your other packages
  ];

  # your other home configuration
}
```

## Need a different package?

Nix-luanti provides a set of functions to help you package additional content:

- pkgs.buildLuantiMod
- pkgs.buildLuantiModPack
- pkgs.buildLuantiGame
- pkgs.buildLuantiTexturePack
- pkgs.fetchFromLuantiContentDB

you can look at `src/packages.nix` to see how they work
    

## Contributing

This project is a work in progress, and contributions are highly welcome! If you encounter any issues or have suggestions, feel free to open an issue or a merge request.

## License

This project is licensed under the GNU Affero General Public License v3.0 (AGPL-3.0). A copy of the license is provided in the `LICENSE` file.

### Exceptions

1. The contents of the `/generated/contentDB.json` file are derived from data scraped from the Luanti ContentDB. These contents may be subject to separate licenses as specified by their original authors.

2. The files `src/texturepacks_load.patch` `src/csm_env_var.patch` and `src/textures_env_var.patch` contain code derived from the Luanti project, which is licensed under the GNU Lesser General Public License v2.1 (LGPL-2.1). These patch files are themselves licensed under the same LGPL-2.1 terms.
