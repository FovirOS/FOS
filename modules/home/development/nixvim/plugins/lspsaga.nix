{...}: {
  plugins.lspsaga = {
    enable = true;

    codeAction.keys.quit = "<esc>";
    rename.keys.quit = "<esc>";

    lightbulb.enable = false;
  };

  keymaps = [
    {
      key = "<C-.>";
      mode = "n";
      action = "<cmd>Lspsaga code_action<CR>";
      options.desc = "Code Action";
    }

    {
      key = "<F2>";
      mode = "n";
      action = "<cmd>Lspsaga rename<CR>";
      options.desc = "Rename";
    }

    {
      key = "<F3>";
      mode = "n";
      action = "<cmd>Lspsaga peek_definition<CR>";
      options.desc = "Peek Definition";
    }
  ];
}
