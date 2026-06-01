{
  luanti,
  luantiPackages,
  mergeLuantiTexturePacks,
  ...
}:

luanti.withPackages {
  games = with luantiPackages.games; [
    mineclone2
    minetest_game
    nodecore
    mineclonia
  ];
  mods = with luantiPackages.mods; [
    i3
    animalia
    logistica
  ];
  texturePacks = with luantiPackages.texturePacks; [
    (minecraft.override {
      acceptMinecraftEula = true;
    })
    soothing32
    (mergeLuantiTexturePacks [
      modrinth.tnt-barrel
      (minecraft.override {
        acceptMinecraftEula = true;
      })
    ])
  ];
}
