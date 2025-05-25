{pkgs, ...}: {
  programs.firefox = {
    enable = true;

    languagePacks = ["en-US"];

    policies = {
      DisableAccounts = true;
      DisableAppUpdate = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DisplayBookmarksToolbar = "newtab";
      DisplayMenuBar = "default-off";
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Cryptomining = true;
        Fingerprinting = true;
        Locked = true;
        Value = true;
      };

      Preferences = {
      };
    };
  };
}
