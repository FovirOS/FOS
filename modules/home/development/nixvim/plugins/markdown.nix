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
}
