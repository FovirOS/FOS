{
  config,
  pkgs,
  inputs,
  nixvim,
  ...
}: {
  system.stateVersion = "25.05";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    extraSpecialArgs = {
      inherit (config.networking) hostName;
      inherit inputs;
    };

    users.qemu = {
      imports = [
        ../../home/qemu.nix
        inputs.nixvim.homeManagerModules.nixvim
      ];
    };
  };

  boot = {
    zfs = {
      devNodes = "/dev/disk/by-path";
      forceImportRoot = false;
    };

    loader = {
      # grub = {
      #   enable = true;
      #   devices = ["nodev"];
      #   efiSupport = true;
      # };

      systemd-boot = {
        configurationLimit = 50;
        editor = true;
        enable = true;
      };
    };

    supportedFilesystems = ["zfs"];
  };

  networking.hostName = "qemu"; # Set the host name.
  networking.hostId = "8425e349"; # Set the host ID.

  imports = [
    ./disko.nix # Import the `disko` configuration.
    ../../modules/services/server # Import the `server` services.
    ../../modules/services/desktop # Import the `desktop` services.
    ../../hardware-configuration.nix # Import the hardware configurations.
    ../../modules/system # Import `system` module.
    ../../modules/desktop # Import `desktop` module.
  ];

  programs.zsh.enable = true;
  users.users.qemu = {
    isNormalUser = true;
    extraGroups = ["wheel" "networkmanager"];
    password = "qemu";
    shell = pkgs.zsh;
  };

  users.users.root = {password = "qemu";};

  security.sudo.enable = true;
  security.sudo.wheelNeedsPassword = false;
}
