{
  description = "FOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05"; # Use the stable version.
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable"; # The unstable version

    # Home Manager
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    nixvim,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    hosts = ["laptop" "qemu"];
    pkgs = import nixpkgs {inherit system;};
    unstablePkgs = import nixpkgs-unstable {inherit system;};

    mkHost = name:
      nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {inherit name inputs;};

        modules = [
          ./hosts/${name}.nix

          inputs.home-manager.nixosModules.home-manager
          {
            home-manager.extraSpecialArgs = {inherit unstablePkgs inputs;};
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
