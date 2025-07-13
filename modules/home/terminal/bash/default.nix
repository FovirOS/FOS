{...}: {
  programs.bash = {
    enable = true;

    enableCompletion = true;

    initExtra = ''
      set -o vi
      bind '"\C-h": backward-kill-word'
      bind 'set completion-ignore-case on'
      eval "$(starship init bash)"
    '';

    shellAliases = {
      ls = "eza -alF --color=always --group --group-directories-first --icons=always"; # Preferred listing.
      la = "eza -a --color=always --group-directories-first --icons=always"; # All files and dirs.
      ll = "eza -l --color=always --group-directories-first --icons=always"; # Long format.
      lt = "eza -aT --color=always --group-directories-first --icons=always"; # Tree listing.

      open = "xdg-open"; # Open.

      cat = "bat"; # Use `bat` instead of `cat`.

      ga = "git add";
      gaa = "git add --all";
      gc = "git commit --verbose";
      gs = "git switch";
      gp = "git push --all";
      gd = "git diff";
      gb = "git branch";

      "-" = "cd -";
      "..." = "../..";
      "...." = "../../..";
      "....." = "../../../..";
      "......" = "../../../../..";
    };
  };
}
