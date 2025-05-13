{...}: {
  plugins.nvim-tree = {
    enable = true;
    autoClose = true;

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
