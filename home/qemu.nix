{
  pkgs,
  unstablePkgs,
  ...
}: {
  home.username = "qemu";
  home.homeDirectory = "/home/qemu";

  programs.zsh.enable = true;

  system.stateVersion = "24.11";
>>>>>>> hosts/qemu
  home.stateVersion = "24.11";

  imports = [
    ../modules/home/development # Import the development softwares.
    ../modules/home/terminal # Import terminal applications.
    ../modules/home/desktop # Import the desktop.
    ../modules/home/browsers # Import the browsers.
  ];

  programs.git = {
    userName = "qemu";
    userEmail = "qemu@example.com";
  };
}
