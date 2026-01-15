{
  stdenv,
  fetchFromGitHub,
  tcl,
  emscripten,
  zstd,
  gcc,
}:
stdenv.mkDerivation rec {
  pname = "sqlite";
  version = "3.39.2";

  src = fetchFromGitHub {
    owner = "sqlite";
    repo = "sqlite";
    tag = "version-${version}";
    hash = "sha256-LGmiFat9pponVu5ePxx6hXBt3PnCu4uUH76oOMLJKqM=";
  };

  buildInputs = [
    emscripten
    tcl
  ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure
    mkdir -p $out

    export BUILD_CC="${gcc}/bin/gcc"
    emconfigure ./configure --disable-tcl --disable-shared --prefix="$out" cross_compiling=yes

  '';

  buildPhase = ''
    emmake make

  '';

  installPhase = ''
    emmake make install
  '';

}
