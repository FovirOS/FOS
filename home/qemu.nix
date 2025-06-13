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
    ../modules/home/cybersecurity # Import the softwares of cybersecurity.
    ../modules/home/hardwares # Import hardwares.
    ../modules/home/media # Import media tools.
    ../modules/home/office # Import office tools.
  ];

  programs.git = {
    userName = "qemu";
    userEmail = "qemu@example.com";
  };
}
