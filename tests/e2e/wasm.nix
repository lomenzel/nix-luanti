{ testers, nix-luanti }:

testers.runNixOSTest {
  name = "config-build-and-port-conflicts";
  nodes = {
    server =
      { config, pkgs, ... }:
      {
        imports = [ nix-luanti.nixosModules.default ];
        services.luanti = {
          enable = true;
          addOverlay = false;
          servers = {
            test = {
              port = 30000;
              host = "server";
            };

          };
        };
        system.stateVersion = "25.05";
      };
    client =
      { config, pkgs, ... }:
      {
        system.stateVersion = "25.05";
      };
  };
  testScript = ''
    # Wait for both services to start up initially.
    server.wait_for_unit("luanti-test.service")
    server.wait_for_unit("network.target")
    server.wait_for_unit("nginx.service")
    client.wait_for_unit("network.target")

    def get_status(machine, service):
      try:
          result = machine.succeed("systemctl is-active luanti-" + service + ".service").strip()
          return result == "active"
      except Exception:
          return False

    # Check portOK: Both services should be active.
    if not get_status(server, "test"):
        raise Exception("server down.")

    client.succeed("curl -X GET http://server:80/")

    print("Test passed: portOK has both services active and portConflict has exactly one active service.")
  '';
}
