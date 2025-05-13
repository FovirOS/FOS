{...}: {
  plugins.markview = {
    enable = true;

    settings = {
      preview = {
        icon_provider = "devicons";
        modes = ["n"];
      };
    };
  };

  plugins.diagram = {
    enable = true;
  };
}
