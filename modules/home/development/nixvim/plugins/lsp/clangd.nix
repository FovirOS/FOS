{pkgs, ...}: {
  plugins.lsp.servers.clangd = {
    enable = true;
    package = pkgs.llvmPackages_19.clang-tools;

    cmd = [
      "clangd"
      "--header-insertion=never"
      "--clang-tidy"
    ];
  };

  keymaps = [
    {
      key = "<F2>";
      mode = "n";
      action = "<cmd>lua vim.lsp.buf.rename()<CR>";
    }
  ];
}
