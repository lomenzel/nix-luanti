final: prev:
let

  packages = import ./packages {
    pkgs = final;
  };
in
packages
// {
  luanti = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./packages/luanti-with-packages { };
  };
  luanti-client = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./packages/luanti-with-packages {
      luanti = prev.luanti-client;
    };
  };
  luanti-server = prev.luanti.overrideAttrs {
    passthru.withPackages = prev.callPackage ./packages/luanti-with-packages {
      luanti = prev.luanti-server;
    };
  };
  lib = prev.lib // (import ./lib.nix { lib = prev.lib; });
}
