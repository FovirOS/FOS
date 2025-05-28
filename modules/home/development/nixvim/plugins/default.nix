{...}: {
  # plugins.lsp.servers.clangd.package = unstablePkgs.llvmPackages_20.clang-tools;

  imports = [
    ./wakatime.nix
    ./noice.nix
    ./comment.nix
    ./nvim-autopairs.nix
    ./nvim-cmp.nix
    ./nvim-surround.nix
    ./treesitter.nix
    ./neo-tree.nix
    ./web-devicons.nix
    ./mini.nix
    ./toggleterm.nix
    ./lspsaga.nix
    ./tmux-navigator.nix
    ./markdown.nix
    ./hop.nix
    ./which-key.nix
    ./luasnip.nix
    ./telescope.nix
    ./lsp
    ./bufferline.nix
    ./indent-blankline.nix
    ./persistence.nix
    # (import ./lsp {inherit unstablePkgs;})
  ];
}
