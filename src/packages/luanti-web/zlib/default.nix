{
  stdenv,
  fetchFromGitHub,
  emscripten,
}:
stdenv.mkDerivation {
  name = "zlib";

  src = fetchFromGitHub {
    owner = "madler";
    repo = "zlib";
    rev = "21767c654d31d2dccdde4330529775c6c5fd5389";
    hash = "sha256-bIm5+uHv12/x2uqEbZ4/VGzUJnDzW9C3GkyHo3EnC1A=";
  };

  buildInputs = [ emscripten ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out

    emconfigure ./configure --static --prefix="$out"
  '';

  buildPhase = ''
    emmake make

  '';

  installPhase = ''
    emmake make install
  '';

}
