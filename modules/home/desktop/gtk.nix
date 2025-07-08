{pkgs, ...}: {
  gtk = {
    enable = true;

    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
      gtk-im-module = "fcitx";
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
      gtk-im-module = "fcitx";
    };

    iconTheme = {
      name = "BeautyLine";
      package = pkgs.beauty-line-icon-theme;
    };
  };
}
