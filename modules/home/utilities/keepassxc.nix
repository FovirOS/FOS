{...}: {
  programs.keepassxc = {
    enable = true;
  };

  home.file.".config/keepassxc/keepassxc.ini".text = ''
    [Browser]
    Enabled=true

    [GUI]
    ApplicationTheme=dark
    MinimizeOnClose=true
    MinimizeToTray=true
    ShowTrayIcon=true
    TrayIconAppearance=colorful

    [General]
    MinimizeAfterUnlock=false

    [Security]
    LockDatabaseIdle=true
    LockDatabaseIdleSeconds=300
  '';
}
