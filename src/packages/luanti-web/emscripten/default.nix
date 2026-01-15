{
  fetchFromGitHub,
  stdenv,
}:
let

  emscriptenPkgs = import (fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    rev = "ee09932";
    hash = "sha256-9glbI7f1uU+yzQCq5LwLgdZqx6svOhZWkd4JRY265fc=";
  }) { inherit (stdenv.hostPlatform) system; };
  emscripten = emscriptenPkgs.emscripten;

  sdl2-src = fetchFromGitHub {
    tag = "release-2.32.0";
    repo = "SDL";
    owner = "libsdl-org";
    hash = "sha256-BdyMlttrDwQMoz+bO6bfU3bh0xKnT8yQF6nb6OGRbHw=";
  };
in
emscripten.overrideAttrs (old: {

  patches = old.patches ++ [
    ./emsdk_dirperms.patch
    ./emsdk_file_packager.patch
    ./emsdk_openat.patch
  ];
  postPatch = ''
    ${old.postPatch or ""}
       substituteInPlace tools/ports/sdl2.py \
      --replace-fail "ports.fetch_project('sdl2', f'https://github.com/libsdl-org/SDL/archive/{TAG}.zip', sha512hash=HASH)" "# No internet fetch" \
      --replace-fail "src_dir = ports.get_dir('sdl2', SUBDIR)" "src_dir = '${sdl2-src}'"
  '';
})
