{...}: {
  keymaps = [
    {
      action = "<C-w>";
      key = "<C-BS>";
      mode = "i";
      options.desc = "Delete a Word";
    }

    {
      action = "<cmd>lua require('mini.bufremove').delete(0, false)<CR>";
      key = "<leader>w";
      mode = "n";
      options.desc = "Close Current Buffer";
    }

    {
      action = "<C-w>v";
      key = "<leader>v";
      mode = "n";
      options.desc = "Split Tab Vertically";
    }

    {
      action = "<C-w>q";
      key = "<leader>q";
      mode = "n";
      options.desc = "Close Splited Tab";
    }

    {
      action = "<cmd>set wrap!<CR>";
      key = "<M-z>";
      mode = "n";
      options.desc = "Toggle Line Wrap";
    }

    {
      action = "<cmd>Telescope lsp_definitions<CR>";
      key = "gd";
      mode = "n";
      options.desc = "[G]o to [D]efinition";
    }

    {
      action = "<cmd>WhichKey<CR>";
      key = "<leader>?";
      mode = "n";
      options.desc = "Open which-key";
    }
  ];
}
