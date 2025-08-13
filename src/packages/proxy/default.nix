{
  writeShellScript,
  writeText,
  buildNpmPackage,
  fetchFromGitHub,
  cmake,
  port ? 8080,
  directProxyStr ? "[]",
  libc,
  glib,
  nodejs,
  glibc,
}:
let
  npmPackage = buildNpmPackage {
    src = fetchFromGitHub {
      owner = "paradust7";
      repo = "minetest-wasm-sample-proxy";
      rev = "dbb4c0cfe18ac821f33429a0dcb5758119f5054b";
      hash = "sha256-5pAv2J/nUVsAy/+A2z3Th1ZrVH66hlYpSaNBUexaotI=";
    };

    npmDepsHash = "sha256-3cSNSmv2ET9IpOoKC7w0a3zccq3JCmVQ8k+GVjPDI7o=";

    buildPhase = ''
      true
    '';
    installPhase = ''
      mkdir -p $out
      cp -r ./* $out
      rm $out/settings.js
      cp  ${writeText "settings.js" ''
         export const PROXY_PORT = ${toString port};

         // [virtual_ip, real_ip, real_port]
         //
         // The virtual IP is the one that minetest-wasm sees.
         // The virtual port is the same as the real port.
         //
         export const DIRECT_PROXY = ${directProxyStr};
           
           // [

             
             // This allows clients to connect to a server running on the proxy itself.
             //['127.0.0.1', '127.0.0.1', 30000],

             // This would allow clients to connect to 1.2.3.4, port 40000
             //['192.168.0.2', '1.2.3.4', 40000],
        // ];
      ''} $out/settings.js
    '';

    pname = "luanti-wasm-proxy";
    version = "master";
  };
in
writeShellScript "luanti-wasm-proxy" ''
  ${nodejs}/bin/node ${npmPackage}/main.js
''
