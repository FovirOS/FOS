{...}: {
  imports = [
    ./clangd.nix
    ./gopls.nix
    ./nil.nix
  ];

  plugins.lsp = {
    enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };
}
