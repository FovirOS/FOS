{...}: {
  plugins.markview = {
    enable = true;

    settings = {
      preview = {
        icon_provider = "devicons";
        modes = ["n"];
        enable_hybrid_mode = true;
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>Markview<CR>";
      key = "<leader>m";
      mode = "n";
      options.desc = "Toggle Markview";
    }
  ];
}
