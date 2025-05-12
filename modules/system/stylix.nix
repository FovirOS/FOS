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
    };
  };
}
