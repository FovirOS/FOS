{...}: {
  programs.hyprpanel = {
    enable = true;

    dontAssertNotificationDaemons = true;
    systemd.enable = true;
  };
}
