## Install the Overlay

> If you already imported the nixos or home-manager module, the overlay is allready installed.

The Overlay gives you access to `pkgs.luantiPackages`, `pkgs.luanti.withPackages`, `pkgs.fetchFromLuantiContentDB` and other helper functions.

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

you can also instantiate a pkgs instance with this overlay installed.

```nix
pkgs = import inputs.nixpkgs {
  inherit system; # assumes you have system defined in that scope
  overlays = [ inputs.nix-luanti.overlays.default ];
};
```
