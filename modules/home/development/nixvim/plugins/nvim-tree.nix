{...}: {
  plugins.nvim-tree = {
    enable = true;
    autoClose = true;
    openOnSetup = false;
    openOnSetupFile = true;

    actions = {
      changeDir = {
        enable = false;
        restrictAboveCwd = true;
      };

      openFile = {
        quitOnOpen = false;
      };
    };

    git = {
      enable = true;
      ignore = true;
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
