## Install the Module

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