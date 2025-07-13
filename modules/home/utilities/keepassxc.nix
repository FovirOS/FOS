{...}: {
  programs.keepassxc = {
    enable = true;

    settings = {
      General = {
        MinimizeAfterUnlock = false;
      };

      Browser.Enabled = true;

      GUI = {
        ApplicationTheme = "dark";
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
