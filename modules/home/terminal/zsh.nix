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
      ls = "ls -alF";
    };

    initExtraFirst = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      souce $HOME/.p10k.zsh
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
