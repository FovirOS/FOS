{...}: {
  programs.fastfetch = {
    enable = true;
  };

  home.file.".config/fastfetch/config.jsonc".source = ./fastfetch.jsonc;

  home.file.".config/fastfetch/logo.txt" = {
    source = ../../../../logo.txt;
  };
}
