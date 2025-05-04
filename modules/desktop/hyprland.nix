{ config, pkgs, lib, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.hyprland.enable = true;
  };

  environment.systemPackages = with pkgs; [ hyprland wayland waybar alacritty ];

  fonts = {
    enable = true;
    fontconfig = { enable = true; };
  };
}
