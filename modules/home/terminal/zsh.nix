{
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls -alF";
    };

    history.size = 10000;

    oh-my-zsh = {
      enable = true;
    };
  };
}
