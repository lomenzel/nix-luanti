{
  stdenv,
  fetchFromGitHub,
  cmake,
  emscripten,
}:
stdenv.mkDerivation {
  name = "webshims";

  src = fetchFromGitHub {
    owner = "paradust7";
    repo = "webshims";
    rev = "0767fdedd87f61a28a34f6444b669caf563a9fd5";
    hash = "sha256-GzXWgdLjRmGYThfbJ+liMFPEqkj7MaUvMM6no3nLLyw=";
  };

  buildInputs = [
    emscripten
    cmake
  ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out

    # Pass pthread flags via CMake to ensure they're used during compilation
    emcmake cmake \
      -DCMAKE_INSTALL_PREFIX="$out" \
      .
  '';

  buildPhase = ''
    emmake make

  '';

  installPhase = ''
    emmake make install
  '';

}
