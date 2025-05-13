{
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "ls -alF";
    };

    history.size = 10000;

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
        "vi-mode"
        "thefuck"
      ];

      theme = "robbyrussell";
    };
  };
}
