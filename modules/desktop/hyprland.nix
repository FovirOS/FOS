{ pkgs, ... }: {
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = { bind = [ "SUPER,Q,exec,alacritty" ]; };
  };
}
