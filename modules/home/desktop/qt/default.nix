{pkgs, ...}: {
  home.packages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    qt6ct
  ];

  qt = {
    enable = true;
    style.name = "kvantum";
  };

  home.file.".config/qt5ct/qt5ct.conf".text = builtins.readFile ./qt5ct.conf;
  home.file.".config/qt6ct/qt6ct.conf".text = builtins.readFile ./qt6ct.conf;
  home.file.".config/qt5ct/catppuccin-mocha-lavender.conf".text = builtins.readFile ./catppuccin-mocha-lavender.conf;
  home.file.".config/qt6ct/catppuccin-mocha-lavender.conf".text = builtins.readFile ./catppuccin-mocha-lavender.conf;

  home.file.".config/Kvantum/kvantum.kvconfig".text = builtins.readFile ./kvantum.kvconfig;
  home.file.".config/Kvantum/catppuccin-mocha-lavender/catppuccin-mocha-lavender.kvconfig".text = builtins.readFile "./catppuccin-mocha-lavender/catppuccin-mocha-lavender.kvconfig";

  home.file.".config/Kvantum/catppuccin-mocha-lavender/catppuccin-mocha-lavender.svg" = {
    source = ./catppuccin-mocha-lavender/catppuccin-mocha-lavender.svg;
  };
}
