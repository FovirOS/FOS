{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "SUPER,Q,exec,alacritty" # Run `alacritty`.
        "ALT,SPACE,exec,wofi --show drun" # Run `wofi`.
      ];

      input = {
        kb_options = "menu:escape";
      };
    };
  };
}
