{
  description = "FOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # Use the unstable version.

    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    nixvim = {
      url = "github:nix-community/nixvim/nixos-unstable";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixvim,
    chaotic,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    hosts = ["laptop" "qemu"];
    pkgs = import nixpkgs {inherit system;};

    mkHost = name:
      nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {inherit name inputs;};

        modules = [
          ./hosts/${name}.nix

          chaotic.nixosModules.default

          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = {inherit inputs;};
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.${name} = {
              imports = [
                ./home/${name}.nix
                nixvim.homeManagerModules.nixvim
              ];
            };
          }
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
