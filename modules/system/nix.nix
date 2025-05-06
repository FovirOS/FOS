{ pkgs, config, lib, ... }: {
  nix = {
    settings.experimental-features =
      [ "nix-command" "flakes" ]; # Enable flakes.
  };
}
