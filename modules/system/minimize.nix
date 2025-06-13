{lib, ...}:
with lib; {
  environment = {
    defaultPackages = mkForce [];
  };
}
