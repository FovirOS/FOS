{
  config,
  pkgs,
  lib,
  ...
}: {
  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ls = "eza -alF --color=always --group --group-directories-first --icons=always"; # preferred listing
      la = "eza -a --color=always --group-directories-first --icons=always"; # all files and dirs
      ll = "eza -l --color=always --group-directories-first --icons=always"; # long format
      lt = "eza -aT --color=always --group-directories-first --icons=always"; # tree listing
    };

    initExtraFirst = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source $HOME/.p10k.zsh
    '';

    history.size = 10000;

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
        "vi-mode"
      ];
    };
  };
}
