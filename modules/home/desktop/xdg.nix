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
          default = [
            "gtk"
          ];
        };
      };

      extraPortals = [
        pkgs.xdg-desktop-portal-gtk
      ];
    };
  };
}
