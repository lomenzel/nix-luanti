final: prev:
let

  packages = import ./packages.nix {
    pkgs = final;
  };
in
packages
// {
  luanti = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./luanti-with-packages.nix { };
  };
  luanti-client = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./luanti-with-packages.nix {
      luanti = prev.luanti-client;
    };
  };
  luanti-server = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./luanti-with-packages.nix {
      luanti = prev.luanti-server;
    };
  };
}
