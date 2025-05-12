{
  config,
  pkgs,
  ...
}: {
  stylix = {
    enable = false;

    fonts = {
      monospace = {
        name = "JetBrainsMono Nerd Font Mono";
        package = pkgs.jetbrains-mono;
      };
    };
  };
}
