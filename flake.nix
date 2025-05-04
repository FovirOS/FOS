{
  description = "FOS Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11"; # Use the stable version.
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      hosts = [ "laptop" "qemu" ];

      mkHost = name:
        nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/${name}.nix ];

          specialArgs = { inherit name inputs; };
        };
    in {
      nixosConfigurations = builtins.listToAttrs (builtins.map (name: {
        inherit name;
        value = mkHost name;
      }) hosts);
    };

}
