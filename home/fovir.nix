{ pkgs, ... }: {
  home.username = "fovir";
  home.homeDirectory = "/home/fovir";

  programs.zsh.enable = true;

  home.stateVersion = "24.11";
}
