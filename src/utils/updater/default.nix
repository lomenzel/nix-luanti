{ nodejs, writeShellScriptBin }:
writeShellScriptBin "fetchContentDB" ''
  echo "fetching ContentDB..."
  ${nodejs}/bin/node ./src/utils/updater/fetchContentDB.js
''
