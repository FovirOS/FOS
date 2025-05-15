{
  config,
  pkgs,
  ...
}: let
  catppuccinTheme = pkgs.fetchFromGitHub {
    owner = "catppuccin";
    repo = "alacritty";
    rev = "main";
    sha256 = "H8bouVCS46h0DgQ+oYY8JitahQDj0V9p2cOoD4cQX+Q=";
  };
in {
  home.file.".config/alacritty/catppuccin-mocha.toml" = {
    source = "${catppuccinTheme}/catppuccin-mocha.toml";
  };

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

        size = 14.0;
      };

      general = {
        import = ["./catppuccin-mocha.toml"];
      };
    };
  };
}
