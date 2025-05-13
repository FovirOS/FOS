{...}: {
  plugins.nvim-tree = {
    enable = true;
    autoClose = true;
    openOnSetup = true;

    git = {
      enable = true;
      ignore = true;
    };
  };

  keymaps = [
    {
      key = "<leader>tr";
      action = "<cmd>NvimTreeToggle<cr>";
    }
  ];
}
