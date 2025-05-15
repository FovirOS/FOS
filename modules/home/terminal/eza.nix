{pkgs, ...}: {
  programs.eza = {
    enable = true;
  };

  programs.zsh.shellAliases = {
    ls = "eza -alF --color=always --group --group-directories-first --icons=always"; # preferred listing
    la = "eza -a --color=always --group-directories-first --icons=always"; # all files and dirs
    ll = "eza -l --color=always --group-directories-first --icons=always"; # long format
    lt = "eza -aT --color=always --group-directories-first --icons=always"; # tree listing
  };
}
