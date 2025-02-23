{ pkgs, nix-luanti, ... }:

pkgs.testers.runNixOSTest {
  name = "config-build-and-port-conflicts";
  nodes = {
    portOK = { config, pkgs, ... }: {
      imports = [ nix-luanti.nixosModules.default ];
      services.luanti = with nix-luanti.packages."x86_64-linux"; {
        enable = true;
        servers = {
          test = {
            port = 30000;
            whitelist = [ "testUser1" "testUser2" ];
            game = games.mineclone2;
            mods = with mods; [ logistica ];
          };
          test2.port = 30001;
        };
      };
      system.stateVersion = "25.05";
    };
    portConflict = { config, pkgs, ... }: {
      imports = [ nix-luanti.nixosModules.default ];
      services.luanti = {
        enable = true;
        servers = {
          test.port = 30000;
          test2.port = 30000;
        };
      };
      system.stateVersion = "25.05";
    };
  };
  testScript = ''
    # Wait for both services to start up initially.
    portOK.wait_for_unit("luanti-test.service")
    portOK.wait_for_unit("luanti-test2.service")
    portConflict.wait_for_unit("luanti-test.service")
    portConflict.wait_for_unit("luanti-test2.service")

    # Wait longer to let the conflict trigger a failure.
    portOK.sleep(15)
    portConflict.sleep(15)

    def get_status(machine, service):
      try:
          result = machine.succeed("systemctl is-active luanti-" + service + ".service").strip()
          return result == "active"
      except Exception:
          return False

    # Check portOK: Both services should be active.
    if not ( get_status(portOK, "test") and get_status(portOK, "test2") ):
        raise Exception("portOK node: Expected both services to be active.")

    # Check portConflict: Exactly one service should be active.
    if not ( get_status(portConflict, "test") != get_status(portConflict, "test2") ):
        raise Exception("portConflict node: Expected one service to be active and one to fail.")

    print("Test passed: portOK has both services active and portConflict has exactly one active service.")
  '';
}
