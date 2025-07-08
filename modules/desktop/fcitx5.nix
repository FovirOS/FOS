{pkgs, ...}: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;

    fcitx5 = {
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-rime
        libsForQt5.fcitx5-configtool
        libsForQt5.fcitx5-qt
        libsForQt5.fcitx5-with-addons
      ];

      waylandFrontend = true;
    };
  };
}
