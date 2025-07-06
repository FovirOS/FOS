{pkgs, ...}: {
  programs.chromium = {
    enable = true;

    commandLineArgs = [
      "--enable-wayland-ime"
      "--ozone-platform=wayland"
      "--ozone-platform-hint=auto"
      "--password-store=basic"
    ];

    extensions = [
      "dbepggeogbaibhgnhhndojpepiihcmeb" # Vimium
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
    ];

    package = pkgs.brave;
  };
}
