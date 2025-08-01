final: prev:
let

  packages = import ./packages.nix {
    pkgs = final;
  };
in
packages
