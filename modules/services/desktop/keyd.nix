{...}: {
  services.keyd = {
    enable = true;

    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            rightalt = "overload(alt, esc)";
            esc = "grave";
            "shift+esc" = "shift+grave";
          };
        };
      };
    };
  };
}
