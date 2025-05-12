{...}: {
  plugins.lspsaga = {
    enable = true;

    codeAction.keys.quit = "<esc>";
    rename.keys.quit = "<esc>";
  };

  keymaps = [
    {
      key = "<C-.>";
      mode = "n";
      action = "<cmd>Lspsaga code_action<CR>";
    }

    {
      key = "<F2>";
      mode = "n";
      action = "<cmd>Lspsaga rename<CR>";
    }

    {
      key = "<F3>";
      mode = "n";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
  ];
}
