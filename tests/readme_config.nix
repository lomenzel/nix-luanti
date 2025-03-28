{ pkgs, nix-luanti, ... }:

pkgs.testers.runNixOSTest {
  name = "example-config-mentioned-in-readme";
  nodes = {
    machine =
      { config, pkgs, ... }:
      {
        imports = [ nix-luanti.nixosModules.default ];
        services.luanti = {
          enable = true;

          # default is null so everyone can join
          # this whitelist is applied to all servers that dont define its own
          # defining a whitelist will automatically install the whitelist mod and overwrite its whitelist.txt file
          whitelist = [ "singleplayer" ];

          servers = with nix-luanti.packages."x86_64-linux"; {
            cool-server = {
              # VoxeLibre is the default
              game = games.mineclone2;

              # by default no mods are installed
              mods = with mods; [
                logistica
                # ... add as many mods you want :)
              ];
              # port has no default so it must be set
              port = 30000;
            };
            other-cool-server = {

              # overrides the default whitelist
              whitelist = [
                "alice"
                "bob"
              ];
              game = games.minetest_game."Luanti";
              mods = with mods; [
                animalia
                i3
              ];
              port = 30001;
            };
          };
        };
        system.stateVersion = "25.05";
      };
  };
  testScript = ''
    # Wait for both services to start up initially.
    machine.wait_for_unit("luanti-cool-server.service")
    machine.wait_for_unit("luanti-other-cool-server.service")

    # Wait longer to let the conflict trigger a failure.
    machine.sleep(15)

    def get_status(machine, service):
      try:
          result = machine.succeed("systemctl is-active luanti-" + service + ".service").strip()
          return result == "active"
      except Exception:
          return False

    if not ( get_status(machine, "cool-server") and get_status(machine, "other-cool-server") ):
        raise Exception("node: Expected both services to be active.")

    print("Test passed: portOK has both services active and portConflict has exactly one active service.")
  '';
}
