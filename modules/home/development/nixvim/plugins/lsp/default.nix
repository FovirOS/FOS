{unstablePkgs, ...}: {
  imports = [
    # ./clangd.nix
    (import ./clangd.nix {inherit unstablePkgs;})
  ];

  plugins.lsp = {
    enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };
}
