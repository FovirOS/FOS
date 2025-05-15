{
  config,
  pkgs,
  lib,
  ...
}: {
  networking.hostName = "qemu"; # Set the host name.

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  imports = [
    ../modules/services/server # Import the `server` services.
    ../hardware-configuration.nix # Import the hardware configurations.
    ../modules/system # Import `system` module.
    ../modules/desktop # Import `desktop` module.
  ];

  programs.zsh.enable = true;
  users.users.qemu = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    password = "qemu";
    shell = pkgs.zsh;
  };

  users.users.root = {password = "qemu";};

  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;

  wayland.windowManager.hyprland.settings = {
    monitor = "Virtual-1,1920x1080@60,0x0,1";
  };
}
