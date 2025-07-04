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
      url = "github:nix-community/nixvim";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    nixvim,
    chaotic,
    disko,
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

          chaotic.nixosModules.default
          disko.nixosModules.disko

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
