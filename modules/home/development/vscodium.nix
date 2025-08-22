{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-marketplace; [
        catppuccin.catppuccin-vsc
        catppuccin.catppuccin-vsc-icons
        vscodevim.vim
        jock.svg
        albert.tabout
      ];

      enableUpdateCheck = false;
      enableExtensionUpdateCheck = false;
      userSettings = {
        "workbench.colorTheme" = "Catppuccin Mocha";
        "workbench.iconTheme" = "Catppuccin Mocha";
      };
    };
  };
}
