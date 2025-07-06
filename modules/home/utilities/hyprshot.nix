{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprshot
  ];

  home.sessionVariables = {
    HYPRSHOT_DIR = "${config.home.xdg.userDirs.pictures}/Screenshots";
  };
}
