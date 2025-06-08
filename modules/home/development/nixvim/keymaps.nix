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

    {
      action = "<cmd>:nohlsearch<CR>";
      key = "<Esc>";
      mode = "n";
      options.desc = "Disable Highlight After Search";
    }

    {
      action = "zM";
      key = "zC";
      mode = "n";
      options.desc = "Close All Folds";
    }

    {
      action = "zR";
      key = "zO";
      mode = "n";
      options.desc = "Open All Folds";
    }

    {
      action = "<cmd>AerialToggle<CR>";
      key = "<leader>a";
      mode = "n";
      options.desc = "Toggle Outline";
    }
  ];
}
