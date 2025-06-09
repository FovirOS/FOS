{...}: {
  plugins.aerial = {
    enable = true;

    settings = {
      open_automatic = true;
      filter_kind = false;

      layout = {
        default_direction = "right";
      };
    };
  };
}

