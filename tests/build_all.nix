{ pkgs, ... }:
pkgs.luanti.withPackages {
  texturePacks = builtins.attrValues pkgs.luantiPackages.texturePacks;
  mods = builtins.attrValues pkgs.luantiPackages.mods;
  games = builtins.attrValues pkgs.luantiPackages.games;
}
