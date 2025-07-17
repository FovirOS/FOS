{...}: {
  programs.chromium = {
    enable = true;
    extraOpts = {
      "OsColorMode" = "dark";
    };

    extensions = [
      "dbepggeogbaibhgnhhndojpepiihcmeb" # Vimium
      "cjpalhdlnbpafiamejdnhcphjbkeiagm" # uBlock Origin
    ];
  };
}
