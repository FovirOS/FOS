{pkgs, ...}: {
  services.mako = {
    enable = true;

    settings = {
      background-color = "#1e1e2e";
      text-color = "#cdd6f4";
      border-color = "#89b4fa";
      border-size = 2;
      default-timeout = 5000;

      font = "JetBrainsMono Nerd Font Mono";
    };
  };

  home.packages = with pkgs; [
    libnotify
  ];
}
