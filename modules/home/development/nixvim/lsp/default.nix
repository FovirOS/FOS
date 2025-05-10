{...}: {
  imports = [
    ./clangd.nix
  ];

  lsp = {
    enable = true;
  };
}
