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
