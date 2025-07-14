{pkgs, ...}: {
  programs.hyprpanel = {
    enable = true;

    systemd.enable = true;
  };

  home.packages = with pkgs; [
    libnotify
  ];
}
