# Nix-Minetest

# NOT WORKING YET

## example configuration

```nix
{ config, pkgs, nix-minetest, ... }:
{
    services.minetest = {
        enable = true;
        servers =  with nix-minetest; {
            cool-server = {
                game = games.minetest_game;
                mods = with mods; [
                    animalia
                ];
                port = 30000;
            };
            other-cool-server = {
                game = games.mineclone2;
                mods = with mods; [

                ];
                port = 30001;
            };
        };
    };
}

```