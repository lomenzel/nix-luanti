{ pkgs, nix-luanti, ... }:

pkgs.testers.runNixOSTest {
  name = "whitelist-connect";
  nodes = {
    server = { config, pkgs, ... }: {
      imports = [ nix-luanti.nixosModules.default ];
      services.luanti = with nix-luanti.packages."x86_64-linux"; {
        enable = true;
        servers = {
          test = {
            port = 30000;
            whitelist = [ "cooluser" ];
          };
        };
      };
      system.stateVersion = "25.05";
    };
    client = { config, pkgs, ... }: {
      users.users.alice = {
        isNormalUser = true;
        extraGroups = [ ];
        packages = with pkgs; [
          luanti
          xvfb-run
        ];
      };
      system.stateVersion = "25.05";
    };
  };
  testScript = ''
    # Wait for both services to start up initially.
    server.wait_for_unit("luanti-test.service")
    server.sleep(15)

    # well, it should not succeed but at least survive for a few seconds.
    raise Exception( client.succeed("su -- alice -c 'env SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy LIBGL_ALWAYS_SOFTWARE=1 xvfb-run -a luanti --address server --port 30000 --go --name cooluser --password test'") )
  '';
}
