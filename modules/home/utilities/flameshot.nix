{config, ...}: {
  services.flameshot = {
    enable = true;

    settings = {
      General = {
        disabledTrayIcon = true;
        startupLaunch = true;
        showStartupLaunchMessage = false;
        savePath = config.xdg.userDirs.extraConfig.XDG_SCREENSHOTS_DIR;
        savePathFixed = true;
        showDesktopNotification = false;
      };
    };
  };
}
