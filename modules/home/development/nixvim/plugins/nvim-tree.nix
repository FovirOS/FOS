{...}: {
  plugins.nvim-tree = {
    enable = true;
    autoClose = true;
    openOnSetup = true;
    openOnSetupFile = true;

    git = {
      enable = true;
      ignore = true;
    };
  };

  actions = {
    changeDir = {
      restrictAboveCwd = true;
    };
  };

  keymaps = [
    {
      key = "<leader>tr";
      action = "<cmd>NvimTreeToggle<cr>";
      mode = "n";
      options.desc = "Toggle Nvim Tree";
    }

    {
      key = "<C-n>";
      action = "<cmd>lua require('nvim-tree.api').fs.create()<CR>";
      options.desc = "Create New File";
      mode = "n";
    }
  ];
}
