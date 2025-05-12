{
  config,
  pkgs,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      (nerdfonts.override {fonts = ["JetBrainsMono"];})
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["JetBrainsMono Nerd Font Mono"];
        sansSerif = ["JetBrainsMono Nerd Font Mono"];
        monospace = ["JetBrainsMono Nerd Font Mono"];
      };
    };
  };
}
