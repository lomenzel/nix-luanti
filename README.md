# Nix-Luanti

## Overview

Nix-Luanti is a NixOS module and package collection that simplifies the setup and management of Luanti servers on NixOS. It provides a declarative way to configure and run multiple Luanti servers, including the ability to manage games, mods, and other settings through a clean Nix interface.

## Features

- **Declarative Configuration:** Easily define multiple Luanti server instances with different games and mods.
- **Extensive Content Library:** Leverage a comprehensive collection of Luanti games, mods, and texture packs sourced from the official ContentDB.
- **Automatic Dependency Resolution:** Automatically resolves and includes dependencies for mods, ensuring that your server configurations are correct and functional.
- **Systemd Integration:** Servers are managed using systemd

## Installation

Before you can use Nix-Luanti, you'll need to add it to your NixOS configuration. If you're using Flakes, you can do this by importing the module in your `flake.nix`.

1. **Add the Nix-Luanti Flake:**

   Add the following to your `flake.nix`:

   ```nix
   {
     inputs = {
       nixpkgs.url = "github:nixos/nixpkgs";
       nix-luanti.url = "github:lomenzel/nix-luanti";
     };

     outputs = { self, nixpkgs, nix-luanti, ... }:
       let
         pkgs = import nixpkgs { system = "x86_64-linux"; };
       in {
         nixosConfigurations = {
           my-server = nixpkgs.lib.nixosSystem {
             system = "x86_64-linux";
             specialArgs = {
             };
             modules = [
               ./configuration.nix
               # this will make the services.luanti module available
               nix-luanti.nixosModules.default
             ];
           };
         };
       };
   }
   ```

2. **Configure Your Servers:**

   In your NixOS configuration (e.g., `configuration.nix`), use the nix-luanti module to set up your servers:

   ```nix
   { config, pkgs, ... }:
   {
      services.luanti = {

        # by default an overlay is set to inject luantiPackages in pkgs. if you set it to false, you need to bring your own games and mods for luanti
        addOverlay = true;

        enable = true;

        # default is null so everyone can join
        # this whitelist is applied to all servers that dont define its own
        # defining a whitelist will automatically install the whitelist mod and overwrite its whitelist.txt file
        whitelist = [ "singleplayer" ];

        servers =  {
          cool-server = {
            # VoxeLibre is the default game
            game = pkgs.luantiPackages.games.mineclone2.withMods (m: with m; [
              # m contains only mods that are compatible with the game
              zombies4test
            ]);

            # by default no mods are installed

            # port has no default so it must be set
            port = 30000;
          };
          other-cool-server = {

          # overrides the default whitelist so singleplayer can not join the game
          whitelist = [
            "alice"
            "bob"
          ];
          game = pkgs.luantiPackages.games.minetest_game;
          mods = with pkgs.luantiPackages.mods; [
            animalia
            i3
          ];
          port = 30001;
        };
      };
    };
   }
   ```

   A minimal Config may look like this:

   ```nix
     services.luanti = {
       enable = true;
       servers.default.port = 30000;
     };

   ```

   it would deploy a VoxeLibre server without a whitelist and without additional mods on UDP port 30000 with prometheus metrics at tcp port 30000

3. **Rebuild and Start the Server:**

   apply your configuration:

   Your Luanti servers should now be running with the specified configuration.

## Usage

### Adding a New Server

To add a new Luanti server, simply add a new entry under `services.luanti.servers` in your NixOS configuration. Specify the game, mods, and any other configuration options.

### Managing Mods

Mods can be specified in the `mods` attribute of each server configuration. Dependencies will be automatically resolved. The mods are pulled from the `nix-luanti.mods` package set, which itself gets the mods from Luanti's contentDB

### Advanced Configuration

You can customize additional settings in `services.luanti.servers.<your-server-name>.config`. This config is directly passed to the luanti.conf configuration file.

## Troubleshooting

The systemd service is named `luanti-<your-server-name>.service` so if you set up `services.luanti.servers.adventure` you can see the status of the server by running `systemctl status luanti-adventure.service` and all its files like the world file the .minetest directory and everything else will be placed in `/var/lib/luanti-adventure`

## Contributing

This project is a work in progress, and contributions are highly welcome! If you encounter any issues or have suggestions, feel free to open an issue or a merge request.

## License

This project is licensed under the GNU Affero General Public License v3.0 (AGPL-3.0). A copy of the license is provided in the `LICENSE` file.

### Exceptions

1. The contents of the `/generated/contentDB.json` file are derived from data scraped from the Luanti ContentDB. These contents may be subject to separate licenses as specified by their original authors.

2. The files `src/texturepacks_load.patch` `src/csm_env_var.patch` and `src/textures_env_var.patch` contain code derived from the Luanti project, which is licensed under the GNU Lesser General Public License v2.1 (LGPL-2.1). These patch files are themselves licensed under the same LGPL-2.1 terms.
