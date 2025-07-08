{hostName, ...}: let
  monitor_name =
    if hostName == "qemu"
    then "Virtual-1"
    else "none";
in {
  wayland.windowManager.hyprland = {
    enable = true;

    xwayland.enable = true;

    systemd = {
      enable = true;
      variables = ["--all"];
    };

    settings = {
      monitor = "${monitor_name},1920x1080,0x0,1";

      dwindle = {
        pseudotile = true;
      };

      "$mod" = "SUPER";
      bind = [
        "$mod,T,exec,kitty" # Run `kitty`.
        ",F1,exec,kitty" # Run `kitty`.

        "$mod,P,exec,hyprlock" # Lock.
        "ALT,SPACE,exec,wofi --show drun" # Run `wofi`.
        "$mod,S,exec,hyprshot -z -m region" # Run `hyprshot`.
        ",Print,exec,hyprshot -z -m region" # Run `hyprshot`.
        "$mod,N,exec,neovide" # Run `Neovide`.
        "$mod,E,exec,nemo" # Run `Nemo`.

        "$mod,Q,killactive" # Kill current process.

        # Move focus.
        "$mod,H,movefocus,l"
        "$mod,J,movefocus,d"
        "$mod,K,movefocus,u"
        "$mod,L,movefocus,r"

        # Switch workspace.
        "$mod_SHIFT,H,workspace,e-1"
        "$mod_SHIFT,L,workspace,e+1"
        "$mod,1,workspace,1"
        "$mod,2,workspace,2"
        "$mod,3,workspace,3"
        "$mod,4,workspace,4"
        "$mod,5,workspace,5"
        "$mod,6,workspace,6"
        "$mod,7,workspace,7"
        "$mod,8,workspace,8"
        "$mod,9,workspace,9"

        # Move the window to workspace.
        "$modCTRL,L,movetoworkspace,+1"
        "$modCTRL,H,movetoworkspace,-1"

        # Make the window full screen.
        "$mod,F,fullscreen,0"

        # Toggle float window.
        "$mod,SPACE,togglefloating"
      ];

      bindm = [
        "$mod,mouse:272,movewindow" # Move window.
        "$mod, mouse:273,resizewindow" # Resize window.
      ];

      exec-once = [
        "waybar"
        "fcitx5 -d --replace"
        "fcitx5-remote -r"
      ];

      decoration = {
        blur = {
          enabled = true;
        };
      };
    };
  };
}
