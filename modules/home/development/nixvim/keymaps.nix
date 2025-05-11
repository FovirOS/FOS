{...}: {
  keymaps = [
    {
      action = "<C-w>";
      key = "<C-BS>";
      mode = "i";
    }

    {
      mode = "n";
      key = "<F5>";
      action = "<cmd>%SnipRun<CR>";
    }
  ];
}
