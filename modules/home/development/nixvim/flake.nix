{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Use the unstable version.

    flake-utils.url = "github:numtide/flake-utils";
    nixvim = {
      url = "github:Fovir-GitHub/nixvim";
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    nixvim,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};

      my-nvim = nixvim'.makeNixvim {
        # inherit pkgs;
        imports = [
          ./profile_install.nix
        ];
      };
    in {
      packages.default = my-nvim;
    });
}
