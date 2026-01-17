{
  mc_to_luanti_txp,
  fetchurl,
  acceptMinecraftEula ? false,
}:
mc_to_luanti_txp {
  minecraft-textures =
    if acceptMinecraftEula then
      builtins.fetchTarball {
        url = "https://piston-data.mojang.com/v1/objects/ba2df812c2d12e0219c489c4cd9a5e1f0760f5bd/client.jar";
        sha256 = "sha256:0dq9zlar1dy84spwm40rjrqg570fz8bqir2b0sn4snw1sgsavyss";
      }
    else
      throw ''
        You must accept the Minecraft EULA to download Minecraft textures.
        Override this package with 
          pkgs.luantiPackages.texturePacks.minecraft.override { acceptMinecraftEula = true; } 
        to accept the EULA.
      '';
  title = "Minecraft";
  name = "default-minecraft-texture-pack";
  description = "The default Minecraft texture pack converted to Mineclonia format";
  version = "1.21.11";
  author = "Mojang Studios";
}
