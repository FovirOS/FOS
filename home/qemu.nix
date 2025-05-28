{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.username = "qemu";
  home.homeDirectory = "/home/qemu";

  programs.zsh.enable = true;

  home.stateVersion = "24.11";

  imports = [
    ../modules/home/development # Import the development softwares.
    ../modules/home/terminal # Import terminal applications.
    ../modules/home/desktop # Import the desktop.
    ../modules/home/browsers # Import the browsers.
    ../modules/home/utilities # Import the utilities.
  ];

  programs.git = {
    userName = "qemu";
    userEmail = "qemu@example.com";
  };
}
