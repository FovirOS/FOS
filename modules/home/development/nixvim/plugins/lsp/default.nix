{...}: {
  imports = [
    ./clangd.nix
    ./gopls.nix
  ];

  plugins.lsp = {
    enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };
}
