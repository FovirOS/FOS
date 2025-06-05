{
  config,
  pkgs,
  ...
}: {
  # Syntax highlight.
  plugins.treesitter = {
    enable = true;

    folding = true;
    indent.enable = true;

    grammarPackages = config.plugins.treesitter.package.passthru.allGrammars;
  };

  extraConfigLua = ''
    vim.o.foldmethod = "indent"
    vim.o.foldexpr = "nvim_treesitter#foldexpr()"
    vim.o.foldenable = true
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
  '';
}
