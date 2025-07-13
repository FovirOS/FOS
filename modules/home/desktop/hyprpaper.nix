{pkgs, ...}: {
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
    };
  };

  home.file."Pictures/Wallpaper" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-2yMW967YwsgZiZ/EK6EXqnFmLtRsKt0RETLV5pP8K3U=";
      owner = "FovirOS";
      repo = "wallpaper";
      rev = "a1205866ed5be74e22019ad9cf6801e5655ace65";
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
