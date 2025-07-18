{...}: {
  services.xserver = {
    enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    videoDrivers = [
      "amdgpu"
    ];
  };
}
