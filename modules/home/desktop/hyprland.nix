{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "SUPER,Q,killactive" # Kill current process.
        "ALT,SPACE,exec,wofi --show drun" # Run `wofi`.

        "SUPER,SPACE,togglefloating"

        # Move focus.
        "SUPER,H,movefocus,l"
        "SUPER,J,movefocus,u"
        "SUPER,K,movefocus,d"
        "SUPER,l,movefocus,r"

        # Switch workspace
        "SUPER,1,workspace,1"
        "SUPER,2,workspace,2"
        "SUPER,3,workspace,3"
        "SUPER,4,workspace,4"
        "SUPER,5,workspace,5"
        "SUPER,6,workspace,6"
        "SUPER,7,workspace,7"
        "SUPER,8,workspace,8"
        "SUPER,9,workspace,9"
      ];

      input = {
        kb_options = "menu:escape";
      };
    };
  };
}
