{
  config,
  pkgs,
  ...
}: {
  programs.alacritty = {
    enable = true;

    settings = {
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Regular";
        };

        bold = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Bold";
        };

        italic = {
          family = "JetBrainsMono Nerd Font Mono";
          style = "Italic";
        };

        size = 12.0;
      };
    };
  };
}
