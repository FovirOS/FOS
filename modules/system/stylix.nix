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

    autoEnable = true;
    targets = {
      fcitx5.enable = false;
      hyprland.enable = false;
      nixvim.enable = false;
    };
  };
}
