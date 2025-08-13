{
  stdenv,
  port ? 30000,
  host ? "localhost",
  serverName ? "Nix-Luanti Server",
  proxyUrl ? "wss://eu1.dustlabs.io/mtproxy",
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
    rev = "d3fc4692e8862d79868fc3ee5c9a0b3039722798";
    hash = "sha256-0QZdExBzXRqe3E6VJYCAxH3j39B3PlI4/A6pIBB30SE=";
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
      PROXY_URL = "${proxyUrl}"
    ''} $out/config.js

  '';
}
