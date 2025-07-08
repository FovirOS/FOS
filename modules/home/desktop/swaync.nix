{pkgs, ...}: {
  services.swaync = {
    enable = true;
  };

  home.packages = with pkgs; [
    SwayNotificationCenter
    libnotify
  ];
}
