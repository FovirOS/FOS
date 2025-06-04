{pkgs, ...}: {
  home.packages = with pkgs; [
    libreoffice
  ];

  home.file.".config/libreoffice/4/user/config/theme.soc".text = builtins.readFile ./theme.soc;
}
