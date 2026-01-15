{stdenv, fetchFromGitHub, emscripten, cmake }: stdenv.mkDerivation {
  name = "libjpeg";
  
  src = fetchFromGitHub {
    owner = "libjpeg-turbo";
    repo = "libjpeg-turbo";
    rev = "2ee7264d40910f2529690de327988ce0c2276812";
    hash = "sha256-ErLvfeybvPlj/luglFGAv0w03VmMj5m8JAh7WfBlPTc=";
  };

  buildInputs = [emscripten cmake];


  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out
    
    # makefile can't handle parallelism
    export MAKEFLAGS=""

    emcmake cmake \
    -DCMAKE_INSTALL_PREFIX="$out" \
    -DWITH_SIMD=0 \
    -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
    .
  '';

  buildPhase = ''
    emmake make
   
  '';

  installPhase = ''
    emmake make install
  '';

}