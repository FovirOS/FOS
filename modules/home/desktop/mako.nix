{pkgs, ...}: {
  services.mako = {
    enable = true;

    settings = {
      backgroundColor = "#1e1e2e";
      textColor = "#cdd6f4";
      borderColor = "#89b4fa";
      borderSize = 2;
      defaultTimeout = 5000;
      placement = "top-right";

      font = "JetBrainsMono Nerd Font Mono";
    };
  };

  home.packages = with pkgs; [
    libnotify
  ];
}
