{pkgs, ...}: {
  plugins.lsp.servers.clangd = {
    enable = true;
    package = llvmPackages_19.clang-unwrapped;
  };
}
