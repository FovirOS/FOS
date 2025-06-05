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
  };
}
