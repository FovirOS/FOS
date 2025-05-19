{pkgs, ...}: {
  services.displayManager.ly = {
    enable = true;

    settings = {
      # Set `vim` mode.
      vi_mode = true;
      vi_default_mode = "insert";

      allow_empty_password = false;
      auth_fails = 5;

      animation = "CMatrix";

      # Hide password.
      asterisk = "";
    };
  };
}
