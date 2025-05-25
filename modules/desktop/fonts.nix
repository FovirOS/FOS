{
  config,
  pkgs,
  ...
}: {
  fonts = {
    packages = pkgs.nerd-fonts.jetbrains-mono;

    fontconfig = {
      defaultFonts = {
        serif = ["JetBrainsMono Nerd Font Mono"];
        sansSerif = ["JetBrainsMono Nerd Font Mono"];
        monospace = ["JetBrainsMono Nerd Font Mono"];
      };
    };
  };
}
