{...}: {
  home = {
    username = "fovir";
    homeDirectory = "/home/fovir";

    stateVersion = "25.05";
  };

  imports = [
    ../../modules/home/development # Import the development softwares.
    ../../modules/home/terminal # Import terminal applications.
    ../../modules/home/desktop # Import the desktop.
    ../../modules/home/browsers # Import the browsers.
    ../../modules/home/utilities # Import the utilities.
    ../../modules/home/cybersecurity # Import the softwares of cybersecurity.
    ../../modules/home/hardwares # Import hardwares.
    ../../modules/home/media # Import media tools.
    ../../modules/home/office # Import office tools.

    ./git.nix # Import `git` configuration.
  ];
}
