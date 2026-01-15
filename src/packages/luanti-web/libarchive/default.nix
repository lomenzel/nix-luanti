{stdenv, emscripten, zstd }: stdenv.mkDerivation {
  name = "libarchive";
  
  src = builtins.fetchTarball {
    url = "https://www.libarchive.org/downloads/libarchive-3.6.1.tar.xz";
    sha256 = "sha256:1kkfsjkwwkhwmwwn1dzyq97wbp48al7vf3d827mb2nj886nmy9ic";
  };

  buildInputs = [emscripten];


  # some env variables that might be important (common.sh)
  preConfigure = builtins.readFile ../common.sh;

  configurePhase = ''
    runHook preConfigure

    mkdir -p $out

    export CPPFLAGS="-I${zstd}/include"
    export LDFLAGS="-L${zstd}/lib"

    emconfigure ./configure \
    --enable-static \
    --disable-shared \
    --disable-bsdtar \
    --disable-bsdcat \
    --disable-bsdcpio \
    --enable-posix-regex-lib=libc \
    --disable-xattr --disable-acl --without-nettle --without-lzo2 \
    --without-cng  --without-lz4 \
    --without-xml2 --without-expat \
    --with-zstd \
    --prefix="$out"
  '';

  buildPhase = ''
    emmake make
   
  '';

  installPhase = ''
    emmake make install
  '';

}