# Nix-Luanti

## Overview

Nix-Luanti is a module and package collection that simplifies the setup and management of Luanti servers on NixOS and with Home-Manager. It provides a declarative way to configure and run multiple Luanti servers, including the ability to manage games, mods, and other settings through a clean Nix interface.

## Resources

- [How to use Nix-Luanti](https://nix-luanti.menzel.lol)
- [Learn Nix](https://nix.dev)
- [Luanti](https://github.com/luanti-org/luanti)
- [Minetest-wasm](https://github.com/paradust7/minetest-wasm)
- [Minetest-wasm-proxy](https://github.com/paradust7/minetest-wasm-sample-proxy)

## Try out a Luanti game

`nix run gitlab:leonard/nix-luanti\?host=git.menzel.lol\#games.mineclonia`

## Contributing

This project is a work in progress, and contributions are highly welcome! If you encounter any issues or have suggestions, feel free to open an issue or a merge request.

## License

This project is licensed under the GNU Affero General Public License v3.0 (AGPL-3.0). A copy of the license is provided in the `LICENSE` file.

### Exceptions

1. The contents of the `/generated/contentDB.json` file are derived from data scraped from the Luanti ContentDB. These contents may be subject to separate licenses as specified by their original authors.

2. The Patch files in src/packages/luanti-with-packages/ contain code derived from the Luanti project, which is licensed under the GNU Lesser General Public License v2.1 (LGPL-2.1). These patch files are themselves licensed under the same LGPL-2.1 terms.
