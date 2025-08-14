# Service Configuration Options

These are the options for the NixOS module. the Home-Manger options are almost the same, but the host, and proxy options are not functioning there right now

## Top-Level Options

### `services.luanti.enable`
Globally disables all Luanti services if set to false, regardless of individual server configurations.

- **Type**: Boolean  
- **Default**: `true`    

### `services.luanti.addOverlay`
Enables the addition of a specific overlay to the Nixpkgs collection for Luanti packages.

- **Type**: Boolean  
- **Default**: `true`  

### `services.luanti.proxy`

The proxy is used for the minetest-wasm package. If a server defines the host option these options are set automatically

  - **`services.luanti.proxy.port`**

    TCP port used by the proxy service.  

    - **Type**: Integer  
    - **Default**: `30261`  

  - **`services.luanti.proxy.directProxies`**
    - **Type**: List of configurations  
    - **Structure**:
      - **`address`**: String (IP or hostname)  
      - **`realAddress`**: String (Default: `"127.0.0.1"`)  
      - **`port`**: Integer  

### `services.luanti.package`

Specifies the default Luanti server package to use. Can be overwritten by each server specifically.

- **Type**: Package reference  
- **Default**: `pkgs.luanti-server`  

### `services.luanti.whitelist`

Global default whitelist for all servers. Example: `["alice", "bob"]`.

- **Type**: List of Strings or Null  
- **Default**: `null`  


## Server-Specific Options

Each server instance is configured under `services.luanti.servers.<name>`, where `<name>` is a unique identifier for the server.

### `services.luanti.servers.<name>.enable`
Enables or disables a specific server instance.

- **Type**: Boolean  
- **Default**: `true`  

### `services.luanti.servers.<name>.openFirewall`
Opens UDP port for the server in the firewall.

- **Type**: Boolean  
- **Default**: `true`  

### `services.luanti.servers.<name>.port`
Port number to bind to.  

- **Type**: Integer  
- **Default**: Determined by server index  

### `services.luanti.servers.<name>.game`
Specifies the game package for the server.

- **Type**: Package reference  
- **Default**: `pkgs.luantiPackages.games.mineclone2`  

### `services.luanti.servers.<name>.package`
Allows overriding the main package per server instance.

- **Type**: Package reference  
- **Default**: Uses value of top-level `package` option.  

### `services.luanti.servers.<name>.whitelist`
Whitelist specific to this server, overriding global whitelist if set.

- **Type**: List of Strings or Null  
- **Default**: `null`  

### `services.luanti.servers.<name>.host`
FQDN for experimental Luanti-WASM builds. Only functional in the NixOS module.

- **Type**: String or Null  
- **Default**: `null`  

### `services.luanti.servers.<name>.ssl`
Enables HTTPS for the WASM build. Only functional in the NixOS module.

- **Type**: Boolean  
- **Default**: `false`  

### `services.luanti.servers.<name>.mods`
List of Luanti mods to include.  

- **Type**: List of Packages  
- **Default**: []

### `services.luanti.servers.<name>.config`
Additional settings for the Luanti config file.

- **Type**: Configuration block (attrsOf)  
- **Default**: Sets the port for Prometheus to the same port as the luanti server