{inputs, ...}: {
  inputs.nixvim = {
    url = "github:nix-community/nixvim/nixos-24.11";

    inputs.nixpkgs.follows = "nixpkgs";
  };
}
