## Install the Module

_import the nixos module:_

```nix
# configuration.nix
{inputs, pkgs, config, ...}:
{

  imports = [
      inputs.nix-luanti.nixosModules.default

      # your other imports
  ];

  # your other configuration
}

```

if you are using home-manager, use the home-manager module instead:

```nix
# home.nix
{inputs, pkgs, config, ...}:
{

  imports = [
      inputs.nix-luanti.homeManagerModules.default

      # your other imports
  ];

  # your other configuration
}

```
