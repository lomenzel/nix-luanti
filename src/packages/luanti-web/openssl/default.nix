{
  stdenv,
  emscripten,
  zstd,
  python3,
  webshims,
  perl,
}:
stdenv.mkDerivation rec {
  pname = "openssl";
  version = "1.1.1n";

  src = builtins.fetchTarball {
    url = "https://www.openssl.org/source/${pname}-${version}.tar.gz";
    sha256 = "sha256:1zsjgf74gpc0ffv07ninhv815v1dxfwy5p2yd34z0xpq9waifjs1";
  };

  patches = [ ./openssl.patch ];

  buildInputs = [ emscripten ];

  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure
    mkdir -p $out

    ${python3}/bin/python "${webshims.src}/src/emsocket/wrap.py" .

    export CFLAGS="-I${webshims}/include -DPEDANTIC"
    export CXXFLAGS="$CFLAGS"
    export LDFLAGS="-L${webshims}/lib -lemsocket"

    emconfigure ${perl}/bin/perl ./Configure linux-generic64 \
      no-asm \
      no-engine \
      no-hw \
      no-weak-ssl-ciphers \
      no-dtls \
      no-shared \
      no-dso \
      -DPEDANTIC \
      --prefix="$out" --openssldir=/ssl

    sed -i 's|^CROSS_COMPILE.*$|CROSS_COMPILE=|g' Makefile
  '';

  buildPhase = ''
    emmake make build_generated libssl.a libcrypto.a
  '';

  installPhase = ''
    mkdir -p $out/include
    mkdir -p $out/lib
    cp -r include/openssl $out/include
    cp libcrypto.a libssl.a $out/lib
  '';

}
