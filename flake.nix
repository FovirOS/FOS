{
  description = "FOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Use the unstable version.

    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    disko.url = "github:nix-community/disko/latest";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    nixvim = {
      url = "github:Fovir-GitHub/nixvim";
    };

    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixvim,
    chaotic,
    disko,
    nix-vscode-extensions,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    hosts = ["laptop" "qemu"];

    mkHost = name:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {inherit name inputs;};

        modules = [
          ./hosts/${name}

          {
            nixpkgs.overlays = [
              nix-vscode-extensions.overlays.default
            ];
          }

          chaotic.nixosModules.default
          disko.nixosModules.disko
          inputs.home-manager.nixosModules.home-manager
        ];
      };
  in {
    nixosConfigurations = builtins.listToAttrs (builtins.map (name: {
        inherit name;
        value = mkHost name;
      })
      hosts);
  };
}
