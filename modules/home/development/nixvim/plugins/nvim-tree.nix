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

  keymaps = [
    {
      key = "<leader>tr";
      action = "<cmd>NvimTreeToggle<cr>";
      options.desc = "Toggle Nvim Tree";
    }
  ];
}
