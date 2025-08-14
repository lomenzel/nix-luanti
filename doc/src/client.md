## Configure client

> All official clients can connect to servers set up with nix-luanti.
> No additional client configuration needed.

Example configuration:

```nix
{inputs, pkgs, config, ...}:
{
  # for home-manager
  home.packages = with pkgs; [
    (with luantiPackages; luanti.withPackages {
      games = with games; [
        mineclone2 # VoxeLibre
        (minetest_game.withMods (m: [
          # m contains all mods that state compatibility with that game on contentDB
          m."3d_armor"

          # but you can still add other mods
          mods.i3

          # mods installed using withMods on a game do not appear in the content browser and are installed and active on every world using that game

          # if installed using withMods dependencies are automatically added if possible
        ]))
        nodecore
      ];
      mods = with mods; [
        # mods that can be enabled/disabled per world
        # you are responsible to install dependencies
        animalia
        draconis
      ];
      texturePacks = with texturePacks; [
        # you still need to enable them in settings
        soothing32
        vilja_pix_2
      ];
      clientMods = with clientMods; [
        # client mods are enabled on every world you join even on servers
        alarm_watch
        toomuchinfo
      ];
    })

    # your other packages
  ];

  # your other home configuration
}
```
