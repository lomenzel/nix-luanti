{ pkgs, ... }:
{
  programs = {
    #jsonfmt.enable = true;
    nixfmt.enable = true;
    yamlfmt.enable = true;
    prettier.enable = true;
  };
}
