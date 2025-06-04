{
  config,
  pkgs,
  ...
}: {
  fonts = {
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      lxgw-wenkai
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
