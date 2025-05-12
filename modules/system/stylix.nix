{
  config,
  pkgs,
  ...
}: {
  stylix = {
    enable = true;

    fonts = {
      monospace = {
        name = "JetBrainsMono Nerd Font Mono";
        packages = pkgs.nerd-fonts.jetbrains-mono;
      };
    };
  };
}
