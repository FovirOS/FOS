{
  config,
  lib,
  pkgs,
  ...
}: let
  hostname = config.networking.hostName;

  monitor_name =
    if hostname == "qemu"
    then "Virtual-1"
    else "none";
in {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = "${monitor_name},1920x1080,0x0,1";
      bind = [
        "SUPER,Q,exec,alacritty" # Run `alacritty`.
        "ALT,SPACE,exec,wofi --show drun" # Run `wofi`.
      ];
    };
  };
}
