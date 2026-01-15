{
  stdenv,
  emscripten,
  webshims,
  openssl,
  zlib,
  python3,
  cmake,
}:
stdenv.mkDerivation {
  name = "curl";

  src = builtins.fetchTarball {
    url = "https://curl.se/download/curl-7.82.0.tar.bz2";
    sha256 = "sha256:08v60f0g5r868da6ncc8aka8fxq0n221073hk0f5n2r0bwaxjap6";
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

    ${python3}/bin/python "${webshims.src}/src/emsocket/wrap.py" .

    export CFLAGS="-I${webshims}/include"
    export CXXFLAGS="$CFLAGS"
    export LDFLAGS="-L${webshims}/lib -lemsocket" 

    emcmake cmake \
      -DCURL_ZLIB=ON \
      -DZLIB_INCLUDE_DIR="${zlib}/include" \
      -DZLIB_LIBRARY="${zlib}/lib/libz.a" \
      -DOPENSSL_SSL_LIBRARY="${openssl}/lib/libssl.a" \
      -DOPENSSL_CRYPTO_LIBRARY="${openssl}/lib/libcrypto.a" \
      -DOPENSSL_INCLUDE_DIR="${openssl}/include" \
      -DBUILD_CURL_EXE=OFF \
      -DBUILD_SHARED_LIBS=OFF \
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
