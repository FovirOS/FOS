{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprshot
  ];

  config.environment.variables = {
    HYPRSHOT_DIR = "${config.xdg.userDirs.extraConfig.XDG_SCREENSHOTS_DIR}";
  };
}
