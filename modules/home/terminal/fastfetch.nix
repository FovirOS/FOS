{pkgs, ...}: {
  programs.fastfetch = {
    enable = true;
  };

  home.file.".config/fastfetch/config.jsonc".text = builtins.readFile ./fastfetch.jsonc;
}
