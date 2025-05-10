{pkgs, ...}: {
  # Syntax highlight.
  plugins.treesitter = {
    enable = true;

    # Language options.
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      nix
    ];
  };
}
