{pkgs, ...}: {
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font Mono";
      size = 14;
    };

    themeFile = "Catppuccin-Mocha";

    settings = {
      clear_all_shortcuts = "yes";
    };
  };
}
