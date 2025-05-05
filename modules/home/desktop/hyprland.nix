{ config, pkgs, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = { bind = [ "SUPER,Q,exec,alacritty" ]; };
  };
}
