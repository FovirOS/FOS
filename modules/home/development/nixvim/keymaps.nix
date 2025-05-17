{...}: {
  keymaps = [
    {
      action = "<C-w>";
      key = "<C-BS>";
      mode = "i";
      options.desc = "Delete a Word";
    }

    {
      action = "<C-w>c";
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
      action = "<cmd>set wrap!<CR>";
      key = "<M-z>";
      mode = "n";
      options.desc = "Toggle Line Wrap";
    }
  ];
}
