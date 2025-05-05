{ pkgs, ... }: {
  home.username = "qemu";
  home.homeDirectory = "/home/qemu";

  programs.zsh.enable = true;

  home.stateVersion = "24.11";

  imports = [ ./programs/git.nix ];
}
