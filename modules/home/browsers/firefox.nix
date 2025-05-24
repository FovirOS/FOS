{pkgs, ...}: {
  programs.firefox = {
    enable = true;

    languagePacks = ["en-US"];

    policies = {
      DisableAppUpdate = true;
      DisableFirefoxAccounts = true;
      DisableFirefoxScreenshots = true;
      DisableFirefoxStudies = true;
    };

    preferences = {
      "sidebar.verticalTabs" = true;
      "sidebar.visibility" = "expand-on-hover";
      "sidebar.expandOnHover" = true;
      "sidebar.main.tools" = "history,bookmarks";
    };
  };
}
