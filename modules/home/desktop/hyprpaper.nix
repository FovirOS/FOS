{ ... }:
{
  services.hyprpaper = {
    enable = true;

    settings = {
      ipc = "on";
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
