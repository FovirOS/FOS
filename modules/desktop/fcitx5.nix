{pkgs, ...}: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;

    fcitx5 = {
      addons = with pkgs; [
        fcitx5-gtk
        fcitx5-rime
        libsForQt5.fcitx5-qt
      ];

      waylandFrontend = true;
    };
  };

  environment.variables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
    INPUT_METHOD = "fcitx";
  };
}
