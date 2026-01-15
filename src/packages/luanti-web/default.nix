{
  stdenv,
  lib,
  callPackage,
  fetchFromGitHub,
  host ? "127.0.0.1",
  port ? 30000,
  serverName ? "Luanti Web",
  proxyUrl ? "http://localhost:8080",
  games ? [ ],
}:

let

  emscripten = callPackage ./emscripten { };
  zlib = callPackage ./zlib { inherit emscripten; };
  libjpeg = callPackage ./libjpeg { inherit emscripten; };
  libpng = callPackage ./libpng { inherit emscripten zlib; };
  libogg = callPackage ./libogg { inherit emscripten; };
  libvorbis = callPackage ./libvorbis { inherit emscripten libogg; };
  freetype = callPackage ./freetype { inherit emscripten zlib libpng; };
  zstd = callPackage ./zstd { inherit emscripten; };
  libarchive = callPackage ./libarchive { inherit emscripten zstd; };
  sqlite = callPackage ./sqlite { inherit emscripten; };
  webshims = callPackage ./webshims { inherit emscripten; };
  openssl = callPackage ./openssl { inherit emscripten webshims; };
  curl = callPackage ./curl {
    inherit
      emscripten
      openssl
      webshims
      zlib
      ;
  };
  fsroot = callPackage ./fsroot { inherit luanti games; };
  luanti = callPackage ./luanti {
    inherit
      emscripten
      zlib
      libjpeg
      libpng
      libogg
      libvorbis
      freetype
      zstd
      libarchive
      sqlite
      webshims
      openssl
      curl

      ;
  };

  release-uuid = lib.trim (
    builtins.readFile (
      stdenv.mkDerivation {
        name = "luanti-web-release-uuid";
        src = fsroot;
        installPhase = ''
          SEEDFILE=fsroot.tar.zst
          md5sum -b "$SEEDFILE" > seedfile.hash
          RELEASE_UUID=`cut -b -12 seedfile.hash`
          echo $RELEASE_UUID > $out
        '';
      }
    )
  );
  static =
    (fetchFromGitHub {
      owner = "paradust7";
      repo = "minetest-wasm";
      rev = "4cd0b48e767a542fcdc706d2666813cb4b9f56c1";
      hash = "sha256-+xpcnOK5Yp5mNTXWImHbJBrDF8I8FxOuc44dSWKIKfo=";
    })
    + "/static";

in

stdenv.mkDerivation {
  pname = "luanti-web";
  version = luanti.version;
  src = fsroot;
  buildPhase = ''

    RELEASE_UUID="${release-uuid}"

    WWW_DIR=$(pwd)/www

    RELEASE_DIR="$WWW_DIR/$RELEASE_UUID"
    PACKS_DIR="$RELEASE_DIR/packs"
    mkdir -p "$PACKS_DIR"

    EMSCRIPTEN_FILES="luanti.js luanti.wasm"

    for I in $EMSCRIPTEN_FILES; do
      cp "${luanti}/bin/$I" "$RELEASE_DIR"
    done

    apply_substitutions() {
      local srcfile="$1"
      local dstfile="$2"

      sed "s/%__RELEASE_UUID__%/$RELEASE_UUID/g" "$srcfile" > "$dstfile"
    }

    apply_substitutions ${static}/htaccess_toplevel   "$WWW_DIR"/.htaccess
    apply_substitutions ${./index.html}  "$WWW_DIR"/index.html
    apply_substitutions ${static}/htaccess_release "$RELEASE_DIR"/.htaccess
    apply_substitutions ${static}/launcher.js "$RELEASE_DIR"/launcher.js
    apply_substitutions ${static}/worker.js "$RELEASE_DIR"/worker.js
    apply_substitutions ${static}/htaccess_packs "$PACKS_DIR"/.htaccess

    cat > "$WWW_DIR"/config.js << EOF
    PORT = ${builtins.toString port}
    DOMAIN = "${host}"
    SERVER_NAME = "${serverName}"
    PROXY_URL = "${proxyUrl}"
    EOF

    cp fsroot.tar.zst "$PACKS_DIR"/base.pack

  '';
  installPhase = ''
    mkdir -p $out

    cp -r www/* $out/
  '';
  passthru = {
    packages = {
      inherit
        emscripten
        luanti
        release-uuid
        fsroot
        zlib
        libjpeg
        libpng
        libogg
        libvorbis
        freetype
        zstd
        libarchive
        sqlite
        webshims
        openssl
        curl
        ;
    };
    release-uuid = release-uuid;
  };
}
