{pkgs, ...}: {
  home.packages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum
    catppuccin-kvantum
    libsForQt5.qt5ct
    qt6ct
  ];

  qt = {
    enable = true;
    style.name = "kvantum";
  };
}
