{pkgs, ...}: {
  programs.hyprpanel = {
    enable = true;

    systemd.enable = true;
  };

  home.packages = with pkgs; [
    libnotify
    cava
  ];

  home.file.".config/hyprpanel/config.json" = {
    force = true;
    source = ./config.json;
  };

  home.file.".config/hyprpanel/profile.png" = {
    source = ./profile.png;
  };
}
