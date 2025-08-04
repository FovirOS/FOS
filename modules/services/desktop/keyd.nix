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
          };

          "alt" = {
            h = "left";
            j = "down";
            k = "up";
            l = "right";
          };
        };
      };
    };
  };
}
