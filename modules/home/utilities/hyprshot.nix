{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    hyprshot
  ];

  home.sessionVariables = {
    HYPRSHOT_DIR = "${config.xdg.userDirs.pictures}/Screenshots";
  };
}
