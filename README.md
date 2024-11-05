# Nix-Luanti

## Overview

Nix-Luanti is a NixOS module and package collection that simplifies the setup and management of Luanti servers on NixOS. It provides a declarative way to configure and run multiple Luanti servers, including the ability to manage games, mods, and other settings through a clean Nix interface.

## Features

- **Declarative Configuration:** Easily define multiple Luanti server instances with different games and mods.
- **Extensive Content Library:** Leverage a comprehensive collection of Luanti games, mods, and texture packs sourced from the official ContentDB.
- **Automatic Dependency Resolution:** Automatically resolves and includes dependencies for mods, ensuring that your server configurations are correct and functional.
- **Systemd Integration:** Servers are managed using systemd, with automatic service creation and management.

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
             modules = [
               ./configuration.nix
               nix-luanti.nixosModules.default
             ];
           };
         };
       };
   }
   ```

2. **Configure Your Servers:**

   In your NixOS configuration (e.g., `configuration.nix`), use the Nix-Luanti module to set up your servers:

   ```nix
   { config, pkgs, nix-luanti, ... }:
   {
     services.Luanti = {
       enable = true;
       servers = with nix-luanti; {
         cool-server = {
           game = games.minetest-game;
           mods = with mods; [
             animalia
           ];
           port = 30000;
         };
         other-cool-server = {
           game = games.mineclone2;
           mods = with mods; [
             # Add mods here
           ];
           port = 30001;
         };
       };
     };
   }
   ```

3. **Rebuild and Start the Server:**

   apply your configuration:

   Your Luanti servers should now be running with the specified configuration.

## Usage

### Adding a New Server (not working yet)

To add a new Luanti server, simply add a new entry under `services.Luanti.servers` in your NixOS configuration. Specify the game, mods, and any other configuration options.

### Managing Mods (partly working)

Mods can be specified in the `mods` attribute of each server configuration. Dependencies will be automatically resolved. The mods are pulled from the `nix-Luanti.mods` package set.

### Advanced Configuration (not even started to implement this)

You can customize additional settings like server descriptions, maximum players, and more by extending the configuration options.

## Contributing

This project is a work in progress, and contributions are highly welcome! If you encounter any issues or have suggestions, feel free to open an issue or a merge request.

### TODO

- make it actually work
