{ pkgs, ... }: {
  program.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
