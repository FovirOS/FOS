{
  pkgs,
  config,
  inputs,
  lib,
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

    users.fovir = {
      imports = [
        ../../home/fovir
        inputs.nixvim.homeManagerModules.nixvim
      ];
    };
  };

  boot = {
    loader = {
      systemd-boot = {
        configurationLimit = 50;
        editor = true;
        enable = true;
      };
    };

    zfs = {
      devNodes = "/dev/disk/by-path";
      forceImportRoot = false;
    };
  };

  imports = [
    ./disko.nix # Import the `disko` configuration.
    ./nvidia.nix

    ../../modules/services/desktop # Import the `desktop` services.
    ../../hardware-configuration.nix # Import the hardware configurations.
    ../../modules/system # Import `system` module.
    ../../modules/desktop # Import `desktop` module.
  ];

  networking = {
    hostName = "FovirOS";
    hostId = "8425e349";
  };

  users.users = {
    fovir = {
      isNormalUser = true;
      extraGroups = ["wheel" "networkmanager"];
      hashedPassword = "$6$Z3tVvcb3O79M9wVa$eQsKKb4DbQMqolBLpy8bpNr1XFdl.lg4ek649YfWQ4nxW.EOGUdvKV4txOQH/RfozyPJwMu2o335K./TEF/gg.";
      shell = pkgs.zsh;
      ignoreShellProgramCheck = true;
      homeMode = "755";
    };

    root = {
      hashedPassword = "$6$Z3tVvcb3O79M9wVa$eQsKKb4DbQMqolBLpy8bpNr1XFdl.lg4ek649YfWQ4nxW.EOGUdvKV4txOQH/RfozyPJwMu2o335K./TEF/gg.";
    };
  };

  security = {
    sudo = {
      enable = true;
      wheelNeedsPassword = true;
    };
  };

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvidia-x11"
      "nvidia-settings"
      "nvidia-persistenced"
    ];
}
