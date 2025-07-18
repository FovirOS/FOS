{lib, ...}:
with lib; {
  environment = {
    defaultPackages = mkForce [];
  };

  programs = {
    xterm.enable = false;
  };
}
