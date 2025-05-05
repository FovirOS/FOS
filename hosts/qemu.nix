{ config, pkgs, lib, ... }: {
  networking.hostName = "qemu"; # Set the host name.

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  imports = [
    ../modules/services/server # Import the server services.
    ../hardware-configuration.nix # Import the hardware configurations.
  ];

  users.users.qemu = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "qemu";
  };

  users.users.root = { password = "qemu"; };

  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
}
