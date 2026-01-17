pkgs:
builtins.mapAttrs (n: v: pkgs.callPackage (./. + ("/" + n)) { }) (
  pkgs.lib.filterAttrs (n: v: v == "directory") (builtins.readDir ./.)
)
