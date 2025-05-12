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
        package = pkgs.jetbrains-mono;
      };
    };
  };
}
