{...}: {
  imports = [
    ./clangd.nix
  ];

  plugins.lsp = {
    enable = true;
  };
}
