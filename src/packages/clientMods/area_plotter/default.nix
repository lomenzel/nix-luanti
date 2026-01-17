{
  fetchgit,
  writeText,
  stdenv,
}:
let
  src = fetchgit {
    url = "https://notabug.org/Maverick2797/area_plotter";
    rev = "c675e84bfce622b37d2174ae635c6f15049d9e4e";
    name = "area_plotter_source";
    outputHash = "sha256-aM2x6X3jRvfH4DLlG91S7vRjJLlUPXnu92RRXRg4V2U=";
  };
in

stdenv.mkDerivation {
  inherit src;
  name = "area_plotter";
  dontUnpack = true;
  dontBuild = true;
  installPhase = ''
    mkdir -p $out

    cp -r $src/* $out

    cp ${writeText "mod.conf" ''
      name = area_plotter
    ''} $out/mod.conf

  '';
}
