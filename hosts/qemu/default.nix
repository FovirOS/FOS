{
  config,
  pkgs,
  lib,
  ...
}: {
  system.stateVersion = "25.05";

  home-manager = {
    extraSpecialArgs = {
      inherit (config.networking) hostName;
    };
  };

  boot = {
    zfs = {
      devNodes = "/dev/disk/by-id";
      forceImportRoot = false;
    };

    loader = {
      grub = {
        enable = true;
        device = "/dev/vda";
      };

      # systemd-boot = {
      #   configurationLimit = 50;
      #   editor = true;
      #   enable = true;
      # };
    };

    supportedFilesystems = ["zfs"];
  };

  networking.hostName = "qemu"; # Set the host name.
  networking.hostId = "007f0200"; # Set the host ID.

  imports = [
    # ./disko.nix # Import the `disko` configuration.
    ../../modules/services/server # Import the `server` services.
    ../../modules/services/desktop # Import the `desktop` services.
    ../../hardware-configuration.nix # Import the hardware configurations.
    ../../modules/system # Import `system` module.
    ../../modules/desktop # Import `desktop` module.
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
}
