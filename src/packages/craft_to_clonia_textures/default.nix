{ buildGoModule, fetchgit }:
buildGoModule {
  name = "craft_to_clonia_textures";
  src = fetchgit {
    url = "https://codeberg.org/ostech/craft_to_clonia_textures";
    rev = "198bb606f581cec4b0d54937e4b6c37d401428f2";
    hash = "sha256-BJrHGhbdpQbVXmil7HP6BbeX3vx1AijT/pMG2PjJ2kY=";
  };
  vendorHash = "sha256-MjQLN+0kNebOM0WVcgb2KRQG6Fb1gUbHZ3KTc1VPW/o=";
}
