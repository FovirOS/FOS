{...}: {
  services.keyd = {
    enable = true;

    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            rightalt = "esc";
            menu = "esc";
            # esc = "grave";
            # "shift+esc" = "shift+grave";
          };
        };
      };
    };
  };
}
