{
  stdenv,
  port ? 30000,
  host ? "localhost",
  serverName ? "Nix-Luanti Server",
  writeText,
  fetchFromGitHub,
  ...
}:
stdenv.mkDerivation {
  pname = "luanti";
  version = "5.9.0-wasm-dev";
  src = fetchFromGitHub {
    owner = "lomenzel";
    repo = "minetest-wasm";
    rev = "142f6385cf50773ac6223e3366f31dd617acd50a";
    hash = "sha256-cZluMYYU/EKgutazUwKhtbvKaMsvHm2MPjVZ7RqXkK0=";
  };
  dontUnpack = true;
  dontBuild = true;
  installPhase = ''
    mkdir -p $out

    cp -r $src/www/* $out/

    ln -s ${writeText "config.js" ''
      PORT = ${toString port}
      DOMAIN = "${host}"
      SERVER_NAME = "${serverName}"
    ''} $out/config.js

  '';
}
