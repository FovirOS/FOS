{
  hostName,
  config,
  ...
}: let
  monitor_name =
    if hostName == "qemu"
    then "Virtual-1"
    else if hostName == "FovirOS"
    then "eDP-1"
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
      monitor = "${monitor_name},preferred,auto,auto";

      "$mod" = "SUPER";
      bind = [
        "$mod,T,exec,kitty" # Run `kitty`.
        ",F1,exec,kitty" # Run `kitty`.

        "$mod,P,exec,hyprlock" # Lock.
        "ALT,SPACE,exec,fuzzel" # Run `fuzzel`.
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
        "$mod,period,workspace,e+1"
        "$mod,comma,workspace,e-1"
        "$mod,period,exec,${config.home.homeDirectory}/.local/bin/random_wallpaper.sh"
        "$mod,comma,exec,${config.home.homeDirectory}/.local/bin/random_wallpaper.sh"

        "$mod,1,workspace,1"
        "$mod,2,workspace,2"
        "$mod,3,workspace,3"
        "$mod,4,workspace,4"
        "$mod,5,workspace,5"
        "$mod,6,workspace,6"
        "$mod,7,workspace,7"
        "$mod,8,workspace,8"
        "$mod,9,workspace,9"
        "$mod,TAB,exec,hyprctl dispatch togglespecialworkspace"

        # Move the window to workspace.
        "$mod,bracketright,movetoworkspace,+1"
        "$mod,bracketleft,movetoworkspace,-1"

        # Make the window full screen.
        "$mod,F,fullscreen,0"

        # Toggle float window.
        "$mod,SPACE,togglefloating"

        # Toupad operations.
        "ALT,T,exec,${config.home.homeDirectory}/.local/bin/disable_touchpad.sh"
        "ALT_SHIFT,T,exec,${config.home.homeDirectory}/.local/bin/enable_touchpad.sh"

        # Key binds of `master` layout.
        "$mod,RETURN,layoutmsg,swapwithmaster master"
        "ALT,TAB,layoutmsg, cyclenext"
        "ALT_SHIFT,TAB,layoutmsg, cycleprev"

        # Key binds of `playerctl`.
        "CTRL_ALT,SPACE,exec,playerctl play-pause"
        "CTRL_ALT,L,exec,playerctl next"
        "CTRL_ALT,H,exec,playerctl previous"
      ];

      bindm = [
        "$mod,mouse:272,movewindow" # Move window.
        "$mod, mouse:273,resizewindow" # Resize window.
      ];

      bindl = [
        # Volume control.
        ",XF86AudioRaiseVolume,exec,pamixer -i 5"
        ",XF86AudioLowerVolume,exec,pamixer -d 5"
        ",XF86AudioMute,exec,pamixer --toggle-mute"

        # Brightness control.
        ",XF86MonBrightnessUp,exec, brightnessctl set +5%"
        ",XF86MonBrightnessDown,exec,brightnessctl set 5%-"
      ];

      exec-once = [
        "fcitx5-remote -r"
        "fcitx5 -d --replace &"
        "fcitx5-remote -r"

        "hyprpaper"

        "bash -c ${config.home.homeDirectory}/.local/bin/disable_touchpad.sh"
        "nekoray"
        "keepassxc"
        "strawberry"
        "thunderbird"
      ];

      general = {
        gaps_in = 3;
        gaps_out = 0;
        layout = "master";

        border_size = 3;
        "col.active_border" = "0xfff38ba8 0xffcba6f7 0xfff5c2e7 0xfff2cdcd";
        "col.inactive_border" = "0x00ffffff";
      };

      master = {
        mfact = 0.55;
      };

      decoration = let
        OPACITY = 0.9;
      in {
        rounding = 16;
        rounding_power = 4.0;

        active_opacity = OPACITY;
        inactive_opacity = OPACITY;
        fullscreen_opacity = OPACITY;

        blur = {
          enabled = true;
        };

        shadow = {
          enabled = false;
        };
      };

      input = {
        numlock_by_default = true;
      };

      cursor = {
        hide_on_key_press = true;
      };

      windowrulev2 = [
        "workspace special, class:^(thunderbird)$|^(nekoray)$|^*strawberry*$"
      ];
    };
  };

  home.file.".local/bin/disable_touchpad.sh" = {
    text = ''
      #!/usr/bin/env bash
      hyprctl keyword "device[uniw0001:00-093a:0274-touchpad]:enabled" false
      notify-send "Touchpad Disabled!"
    '';

    executable = true;
  };

  home.file.".local/bin/enable_touchpad.sh" = {
    text = ''
      #!/usr/bin/env bash
      hyprctl keyword "device[uniw0001:00-093a:0274-touchpad]:enabled" true
      notify-send "Touchpad Enabled!"
    '';

    executable = true;
  };
}
