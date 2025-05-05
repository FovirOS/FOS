{ config, pkgs, lib, ... }: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  wayland.windowManager.hyprland.settings = {
    bind = [ "SUPER,Q,exec,alacritty" ];
  };
}
