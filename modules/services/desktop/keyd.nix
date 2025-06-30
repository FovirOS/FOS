{...}: {
  services.keyd = {
    enable = true;

    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            capslock = "overload(alt, esc)";
          };

          "shift" = {
            capslock = "capslock";
          };
        };
      };
    };
  };
}
