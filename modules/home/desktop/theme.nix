{pkgs, ...}: {
  gtk = {
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };

    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };

    iconTheme = {
      name = "Beauty Line";
      package = pkgs.beauty-line-icon-theme;
    };
  };
}
