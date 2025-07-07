{pkgs, ...}: {
  services.mako = {
    enable = true;

    settings = {
      background-color = "#101010C0";
      text-color = "#cdd6f4";
      default-timeout = 5000;

      font = "JetBrainsMono Nerd Font Mono";
    };
  };

  home.packages = with pkgs; [
    libnotify
  ];
}
