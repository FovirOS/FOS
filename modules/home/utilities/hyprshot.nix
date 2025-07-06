{pkgs, ...}: {
  home.packages = with pkgs; [
    hyprshot
  ];

  environment.variables = {
    HYPRSHOT_DIR = "$XDG_PICTURES_DIR/Screenshots";
  };
}
