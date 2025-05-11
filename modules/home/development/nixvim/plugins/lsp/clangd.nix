{pkgs, ...}: {
  plugins.lsp.servers.clangd = {
    enable = true;
    package = pkgs.llvmPackages_19.clang-tools;

    cmd = [
      "clangd"
      "--header-insertion=never"
    ];
  };
}
