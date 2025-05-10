{...}: {
  # Syntax highlight.
  treesitter = {
    enable = true;

    # Language options.
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      nix
    ];
  };
}
