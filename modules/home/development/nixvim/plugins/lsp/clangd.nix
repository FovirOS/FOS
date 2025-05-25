{...}: {
  plugins.lsp.servers.clangd = {
    enable = true;

    cmd = [
      "clangd"
      "--header-insertion=never"
      "--clang-tidy"
    ];
  };
}
