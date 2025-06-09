{
  config,
  pkgs,
  ...
}: {
  # Syntax highlight.
  plugins.treesitter = {
    enable = true;

    folding = true;

    grammarPackages = config.plugins.treesitter.package.passthru.allGrammars;

    settings = {
      indent.enable = true;
    };
  };

  extraConfigLua = ''
    vim.o.foldmethod = "expr"
    vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.o.foldenable = true
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
  '';
}

