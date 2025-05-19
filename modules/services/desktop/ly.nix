{pkgs, ...}: {
  services.displayManager.ly = {
    enable = true;

    settings = {
      allow_empty_password = false;
      auth_fails = 5;

      animation = "matrix";

      # Hide password.
      asterisk = "0x0";
    };
  };
}
