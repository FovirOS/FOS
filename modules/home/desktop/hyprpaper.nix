{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprpaper
  ];

  services.hyprpaper = {
    enable = true;

    settings = let
      default_wallpaper = "${config.xdg.userDirs.pictures}/Wallpaper/0.png";
    in {
      ipc = "on";

      preload = [
        default_wallpaper
      ];

      wallpaper = ",${default_wallpaper}";
    };
  };

  home.file."Pictures/Wallpaper" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-qv1TV+w1yIBuTXkyL1C/IyCHZO6Vtoq/vHz/LqR2UMo=";
      owner = "FovirOS";
      repo = "wallpaper";
      rev = "65e59c467ba3aac529a0e475994612c21c385753";
    };
  };

  home.file.".local/bin/random_wallpaper.sh" = {
    executable = true;

    text = ''
      #!/usr/bin/env bash

      WALLPAPER_DIR="$HOME/Pictures/Wallpaper/"
      WALLPAPER="$WALLPAPER_DIR$(ls "$WALLPAPER_DIR" | shuf -n 1)"

      hyprctl hyprpaper reload ,"$WALLPAPER"
    '';
  };
}
