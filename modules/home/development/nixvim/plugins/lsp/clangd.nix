{pkgs, ...}: {
  plugins.lsp.servers.clangd = {
    enable = true;
    package = pkgs.llvmPackages_20.clang-tools;

    cmd = [
      "clangd"
      "--header-insertion=never"
      "--clang-tidy"
    ];
  };
}
