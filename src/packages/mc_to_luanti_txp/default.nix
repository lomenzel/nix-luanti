{
  stdenv,
  minecraft-textures,
  craft_to_clonia_textures,
  writeText,
  title ? "Converted MC Texture Pack",
  name ? "converted-mc-texture-pack",
  description ? "Minecraft texture pack converted to Mineclonia format",
  version ? "unknown",
  author ? "Converted by nix-luanti",
}:

stdenv.mkDerivation {
  pname = name;
  inherit version;
  src = minecraft-textures;

  buildPhase = ''
    ${craft_to_clonia_textures}/bin/craft_to_clonia_textures

    cp ${
      writeText "config.json" (
        builtins.toJSON {
          DefinedInput = false;
          DefinedOutput = false;
          ExportMinetestGame = false;
          ExportMineclonia = true;
          InputDir = "/build/source/input";
          OutputDir = "/build/source/output";
          HUDOnFireAnimationFrames = 8;
          SpearVersion = "short";
          EnlargeObjectCrosshair = false;
        }
      )

    } config.json

    mkdir -p input/assets
    mv assets/* input/assets



    ${craft_to_clonia_textures}/bin/craft_to_clonia_textures

    ls -lah output
  '';
  installPhase = ''
    mkdir -p $out
    cp -r output/assets_mc_to_clonia/* $out/

    rm $out/texture_pack.conf

    cp ${writeText "texture_pack.conf" ''
      name = "${title}"
      description = "${description}"
      version = "${version}"
      author = "${author}"
    ''} $out/texture_pack.conf
  '';
}
