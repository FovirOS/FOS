{
  config,
  pkgs,
  ...
}: {
  xdg = {
    enable = true;

    portal = {
      enable = true;

      config = {
        common = {
          default = "hyprland";
        };
      };

      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-hyprland
      ];
    };

    userDirs = {
      enable = true;

      createDirectories = false;

      documents = "$HOME/Documents";
      download = "$HOME/Downloads";
      music = "$HOME/Music";
      pictures = "$HOME/Pictures";
      videos = "$HOME/Videos";
      desktop = "$HOME/Desktop";

      templates = "/var/empty";
      publicShare = "/var/empty";
    };

    mimeApps = let
      desktopEntries = {
        nemo = {
          name = "Nemo";
          exec = "${pkgs.nemo-with-extensions}/bin/nemo";
        };
      };

      filemanager = ["nemo.desktop"];
      image-viewer = ["oculante.desktop"];
    in {
      enable = true;

      defaultApplications = {
        "x-scheme-handler/about" = filemanager;
        "x-scheme-handler/ftp" = filemanager;
        "inode/directory" = filemanager;

        "image/*" = image-viewer;
        "image/avif" = image-viewer;
        "image/gif" = image-viewer;
        "image/jpeg" = image-viewer;
        "image/png" = image-viewer;
        "image/webp" = image-viewer;
      };
    };
  };
}
