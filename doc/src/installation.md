## Installation

Add the nix-luanti input to your flake:

```nix
{ inputs = {
    # other inputs
    nix-luanti = {
      type = "gitlab";
      owner = "leonard";
      repo = "nix-luanti";
      host = "git.menzel.lol";
      ref = "main";
    };
  };
  # the rest of your flake
}

```
