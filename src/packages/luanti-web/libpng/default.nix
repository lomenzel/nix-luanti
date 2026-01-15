{
  stdenv,
  fetchgit,
  emscripten,
  zlib,
}:
stdenv.mkDerivation {
  name = "libpng";

  src = fetchgit {
    url = "https://git.code.sf.net/p/libpng/code";
    rev = "a37d4836519517bdce6cb9d956092321eca3e73b";
    hash = "sha256-KCpOY1kL4eG51bUv28aw8jTjUNwr3UHAGBqAaN2eBvg=";
  };

  buildInputs = [ emscripten ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out

    export CPPFLAGS="-I${zlib}/include"
    export LDFLAGS="-pthread -L${zlib}/lib"

    emconfigure ./configure --disable-shared --prefix="$out"
  '';

  buildPhase = ''
    emmake make

  '';

  installPhase = ''
    emmake make install
  '';

}
