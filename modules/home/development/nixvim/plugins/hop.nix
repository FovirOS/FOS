{...}: {
  plugins.hop = {
    enable = true;

    settings = {
      case_insensitive = true;
    };
  };

  keymaps = [
    {
      key = "<leader><leader>f";
      action = "<cmd>HopChar2<CR>";
      mode = "n";
      options.desc = "Hop to A Character";
    }

    {
      key = "<leader><leader>/";
      action = "<cmd>HopPattern<CR>";
      mode = "n";
      options.desc = "Hop to A Pattern";
    }
  ];
}
