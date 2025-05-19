{pkgs, ...}: {
  home.username = "qemu";
  home.homeDirectory = "/home/qemu";

  programs.zsh.enable = true;

  system.stateVersion = "24.11";
  home.stateVersion = "24.11";

  imports = [
    ../modules/home/develop # Import the develop softwares.
    ../modules/home/terminal # Import terminal applications.
    ../modules/home/desktop # Import the desktop.
  ];
}
