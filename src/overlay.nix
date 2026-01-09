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
  luanti-mapserver = prev.minetest-mapserver.overrideAttrs {
    src = prev.fetchFromGitHub {
      owner = "blind-coder";
      repo = "mapserver";
      rev = "ada6f693c9b342c614ae7f267f48dafe2ce3612d";
      hash = "sha256-sXmKc0St13BHyX2rUOSr6CQ3wkT2WVIVwXL8K8Sgc+M=";
    };
    doCheck = false;
    patches = [
      ./mapserver-mtime-trigger.patch
    ];
  };
  lib = prev.lib // (import ./lib.nix { lib = prev.lib; });
}
