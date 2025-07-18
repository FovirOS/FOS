{pkgs, ...}: {
  services.greetd = {
    enable = true;

    vt = 1;

    settings = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd Hyprland --user-menu";
      user = "greeter";
    };
  };
}
