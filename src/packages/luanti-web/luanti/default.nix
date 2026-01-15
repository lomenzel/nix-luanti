{
  stdenv,
  emscripten,
  fetchFromGitHub,
  webshims,
  openssl,
  zlib,
  python3,
  cmake,
  which,
  libjpeg,
  libpng,
  libvorbis,
  libarchive,
  libogg,
  freetype,
  sqlite,
  zstd,
  curl,
  symlinkJoin
}:

let
  installdir =  symlinkJoin {
    name = "luanti-wasm-deps";
    paths = [
      zlib
      openssl
      libarchive
      libjpeg
      libpng
      libogg
      libvorbis
      freetype
      sqlite
      zstd
      curl
      webshims
    ];
  };

  in
stdenv.mkDerivation {
  pname = "luanti-wasm-module";
  version = "5.14.0-wasm-5a6db4";

  src = fetchFromGitHub {
    owner = "paradust7";
    repo = "minetest";
    rev = "5a6db42599ccd1939fddbc17e07f3cbacc2fa90b";
    hash = "sha256-NMmRZWbRaFzRL3MONfER1uXM/1EBatz8a4+Ni5Z2X40=";
  };

  buildInputs = [
    emscripten
    cmake
    which
  ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    export EMSDK_SYSLIB="/tmp/emscripten_cache/sysroot/lib/wasm32-emscripten"
    export EMSDK_SYSINCLUDE="/tmp/emscripten_cache/sysroot/include"

    mkdir -p $out

    export EMSDK_EXTRA="-sUSE_SDL=2"
    export CFLAGS="$CFLAGS $EMSDK_EXTRA -I${installdir}/include"
    export CXXFLAGS="$CXXFLAGS $EMSDK_EXTRA -I${installdir}/include"
    export LDFLAGS="$LDFLAGS $EMSDK_EXTRA -sPTHREAD_POOL_SIZE=20 -s EXPORTED_RUNTIME_METHODS=ccall,cwrap -s INITIAL_MEMORY=2013265920 -sMIN_WEBGL_VERSION=2 -sUSE_WEBGL2 -sWASMFS=1"
    export LDFLAGS="$LDFLAGS -L${installdir}/lib -larchive -lssl -lcrypto -lemsocket -lwebsocket.js"

    # Create a dummy .o file to use as a substitute for the OpenGLES2 / EGL libraries,
    # since Emscripten doesn't actually provide those. (the symbols are resolved through
    # javascript stubs).
    echo > dummy.c
    emcc -c dummy.c -o dummy.o
    DUMMY_OBJECT="$(pwd)/dummy.o"
    mkdir -p dummy_dir
    DUMMY_INCLUDE_DIR="$(pwd)/dummy_dir"



    emcmake cmake \
      -DCMAKE_VERBOSE_MAKEFILE=ON \
      -DENABLE_SYSTEM_GMP=OFF \
      -DENABLE_GETTEXT=TRUE \
      -DRUN_IN_PLACE=TRUE \
      -DENABLE_GLES=TRUE \
      -DENABLE_UPDATE_CHECKER=0 \
      -DCMAKE_BUILD_TYPE="Release" \
      -DZLIB_INCLUDE_DIR="${zlib}/include" \
      -DZLIB_LIBRARY="${zlib}/lib/libz.a" \
      -DJPEG_INCLUDE_DIR="${libjpeg}/include" \
      -DJPEG_LIBRARY="${libjpeg}/lib/libjpeg.a" \
      -DPNG_PNG_INCLUDE_DIR="${libpng}/include" \
      -DPNG_LIBRARY="${libpng}/lib/libpng.a" \
      -DOGG_INCLUDE_DIR="${libogg}/include" \
      -DVORBIS_INCLUDE_DIR="${libvorbis}/include" \
      -DOGG_LIBRARY="${libogg}/lib/libogg.a" \
      -DVORBIS_LIBRARY="${libvorbis}/lib/libvorbis.a" \
      -DVORBISFILE_LIBRARY="${libvorbis}/lib/libvorbisfile.a" \
      -DFREETYPE_LIBRARY="${freetype}/lib/libfreetype.a" \
      -DFREETYPE_INCLUDE_DIRS="${freetype}/include/freetype2" \
      -DOPENGLES2_INCLUDE_DIR="$DUMMY_INCLUDE_DIR" \
      -DOPENGLES2_LIBRARY="$DUMMY_OBJECT" \
      -DSQLITE3_LIBRARY="${sqlite}/lib/libsqlite3.a" \
      -DSQLITE3_INCLUDE_DIR="${sqlite}/include" \
      -DZSTD_LIBRARY="${zstd}/lib/libzstd.a" \
      -DZSTD_INCLUDE_DIR="${zstd}/include" \
      -DEGL_LIBRARY="$DUMMY_OBJECT" \
      -DEGL_INCLUDE_DIR="$DUMMY_INCLUDE_DIR" \
      -DCURL_LIBRARY="${curl}/lib/libcurl.a" \
      -DCURL_INCLUDE_DIR="${curl}/include" \
      -DCMAKE_INSTALL_PREFIX="$out" \
      -G "Unix Makefiles" \
      .
  '';

  postPatch = ''

  '';

  buildPhase = ''
   # emmake make

    true
  '';

  installPhase = ''
    emmake make install

    mkdir -p $out/bin/

    cp bin/luanti.wasm $out/bin/

    # Remove broken symlink (minetest -> luanti) since the binary is luanti.js/luanti.wasm
    rm -f $out/bin/minetest
  '';

}
