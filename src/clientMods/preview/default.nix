{
  stdenv,
  fetchFromGitHub,
  luanti,
}:
stdenv.mkDerivation {
  name = "preview";
  inherit (luanti) src;
  dontUnpack = true;
  buildPhase = "";
  installPhase = ''
    mkdir -p $out
    cp -r $src/clientmods/preview/* $out
  '';
}
