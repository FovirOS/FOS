{
  description = "FOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"; # Use the stable version.

    # Home Manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      hosts = [ "laptop" "qemu" ];

      mkHost = name:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/${name}.nix

            inputs.home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.${name} = imports ./home/${name}/${name}.nix;
            }
          ];

          specialArgs = { inherit name inputs; };
        };
    in {
      nixosConfigurations = builtins.listToAttrs (builtins.map (name: {
        inherit name;
        value = mkHost name;
      }) hosts);
    };

}
