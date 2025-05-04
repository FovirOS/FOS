{ config, pkgs, lib, ... }: {
  networking.hostName = "qemu"; # Set the host name.

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  imports = [ ../hardware-configuration.nix ];

  services.openssh.enable = true;

  users.users.qemu = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "qemu";
  };

  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
}
