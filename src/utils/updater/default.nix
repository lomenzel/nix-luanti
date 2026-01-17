{ nodejs, writeShellScriptBin }:
writeShellScriptBin "fetchContentDB" ''
  echo "Starting parallel fetches..."

  # Start ContentDB fetch in the background
  echo "fetching ContentDB..."
  ${nodejs}/bin/node ${./fetchContentDB.js} &
  PID1=$!

  # Start Modrinth fetch in the background
  echo "fetching Modrinth..."
  ${nodejs}/bin/node ${./fetchModrinth.js} &
  PID2=$!

  # Wait for both processes to finish
  wait $PID1 $PID2
  echo "All fetches completed."
''
