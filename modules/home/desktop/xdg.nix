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
  };
}
