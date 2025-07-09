{config, ...}: {
  hardware = {
    nvidia = {
      package = config.boot.kernelPackages.nvidiaPackages.stable;

      prime = {
        amdgpuBusId = "PCI:0:6:0";
        nvidiaBusId = "PCI:0:1:0";
      };

      modesetting.enable = true;

      powerManagement = {
        enable = true;
      };

      open = false;
      nvidiaSettings = true;
    };

    graphics = {
      enable = true;
    };
  };
}
