{pkgs, ...}: {
  home.packages = with pkgs; [
    prettier
  ];

  home.file.".prettierrc" = {
    text = ''
      {
        "printWidth": 72
      }
    '';
  };
}
