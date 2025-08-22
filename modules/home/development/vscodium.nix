{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        catppuccin.catppuccin-vsc
        catppuccin.catppuccin-vsc-icons
        vscodevim.vim
        jock.svg
        albert.TabOut
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
