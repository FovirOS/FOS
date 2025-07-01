{...}: {
  services.keyd = {
    enable = true;

    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            rightalt = "esc";
            # esc = "grave";
            # "shift+esc" = "shift+grave";
          };
        };
      };
    };
  };
}
