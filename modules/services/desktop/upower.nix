{pkgs, ...}: {
  home.packages = with pkgs; [
    upower
  ];

  services.upower = {
    enable = true;
  };
}
