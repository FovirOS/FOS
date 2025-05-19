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
    };

    initExtraFirst = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      source $HOME/.p10k.zsh
      set -o vi
    '';

    history.size = 10000;

    oh-my-zsh = {
      enable = true;

      plugins = [
        "git"
      ];
    };
  };
}
