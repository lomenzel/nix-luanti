{
  stdenv,
  fetchgit,
  emscripten,
  libogg,
}:
stdenv.mkDerivation {
  name = "libvorbis";

  src = builtins.fetchTarball {
    url = "https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.gz";
    sha256 = "sha256:0bcvamndfzxsmna9cx9y1malvj86hghffbilxrbn51mlqbr74yy5";
  };

  buildInputs = [ emscripten ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out

    emconfigure ./configure --disable-shared --prefix="$out" --with-ogg="${libogg}"
  '';

  buildPhase = ''
    emmake make
  '';

  installPhase = ''
    emmake make install
  '';

}
