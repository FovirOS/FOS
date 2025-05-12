{
  config,
  pkgs,
  ...
}: {
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    addons = with pkgs; [
      fcitx5-gtk
      fcitx5-rime
      libsForQt5.fcitx5-qt
    ];
    waylandFrontend = true;
  };
}
