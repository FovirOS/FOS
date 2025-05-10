{...}: {
  imports = [
    ./clangd.nix
  ];

  plugins.lsp = {
    enable = true;
  };

  plugins.lsp-format = {
    enable = true;
  };
}
