{pkgs, ...}: {
  programs.firefox = {
    enable = true;

    languagePacks = ["en-US"];

    policies = {
      DisableAppUpdate = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;

      Preferences = {
      };
    };
  };
}
