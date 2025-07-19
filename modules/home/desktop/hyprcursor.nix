{pkgs, ...}: {
  home.pointerCursor = {
    hyprcursor = {
      enable = true;
      size = 24;
    };

    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
  };
}
