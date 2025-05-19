{unstablePkgs, ...}: {
  plugins.lsp.servers.clangd = {
    enable = true;
    package = unstablePkgs.llvmPackages_20.clang-tools;

    cmd = [
      "clangd"
      "--header-insertion=never"
      "--clang-tidy"
    ];
  };
}
