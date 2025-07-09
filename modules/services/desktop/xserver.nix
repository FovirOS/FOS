{...}: {
  services.xserver = {
    enable = true;

    videoDrivers = [
      "amdgpu"
      "nvidia"
    ];
  };
}
