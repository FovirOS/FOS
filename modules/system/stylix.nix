{
  config,
  pkgs,
  ...
}: {
  stylix = {
    fonts = {
      monospace = {
        name = "JetBrains Mono Nerd Font";
        package = pkgs.jetbrains-mono;
      };

      sizes = {
        applications = 16;
        desktop = 14;
        popups = 12;
        terminal = 12;
      };
    };
  };
}
