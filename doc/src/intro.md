# Introduction

Luanti is a robust platform designed for hosting multiplayer games, allowing you to create engaging gaming environments for players. Managing multiple Luanti servers can be complex, requiring careful attention to configuration and dependency management.

Enter **Nix-Luanti**, a module and package collection specifically developed for NixOS and Home-Manager users. It streamlines the process of managing Luanti servers by offering:

- **Declarative Configuration**: Simplify the setup of multiple server instances.
- **Extensive Content Library**: Access a wide range of packaged games, mods, and texture packs sourced from the official ContentDB. As well as a few client side mods.
- **Automatic Dependency Resolution**: Ensure your configurations are always correct and functional.
- **Client Configuration**: Easily install mods and packages through `luanti.withPackages`.

This documentation guide will walk you through everything you need to know about setting up and configuring Luanti servers using Nix-Luanti.

## Try out a Luanti game

`nix run gitlab:leonard/nix-luanti\?host=git.menzel.lol\#games.mineclonia`

## Links
- [Source](https://git.menzel.lol/leonard/nix-luanti)
- [Nix](https://nixos.org)
- [Learn Nix](https://nix.dev)
- [Luanti](https://github.com/luanti-org/luanti)
- [Minetest-wasm](https://github.com/paradust7/minetest-wasm)
- [Minetest-wasm-proxy](https://github.com/paradust7/minetest-wasm-sample-proxy)

