{pkgs, ...}: {
  home.packages = with pkgs; [
    libreoffice
  ];

  home.file.".config/libreoffice/*/users/config/theme.soc".text = builtins.readFile ./theme.soc;
}
