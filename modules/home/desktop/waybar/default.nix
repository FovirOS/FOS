{pkgs, ...}: {
  programs.waybar = {
    enable = true;
  };

  home.file.".config/waybar/config.jsonc".text = builtins.readFile ./config.jsonc;
  home.file.".config/waybar/style.css".text = builtins.readFile ./style.css;
}
