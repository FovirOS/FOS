{...}: {
  programs.keepassxc = {
    enable = true;

    settings = {
      General = {
        MinimizeAfterUnlock = false;
      };

      GUI = {
        MinimizeOnClose = true;
        MinimizeToTray = true;
        ShowTrayIcon = true;
        TrayIconAppearance = "colorful";
      };

      Security = {
        LockDatabaseIdle = true;
        LockDatabaseIdleSeconds = 300;
      };
    };
  };
}
