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
    };
  };
}
