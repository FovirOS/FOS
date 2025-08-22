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
        "editor.fontFamily" = "JetBrainsMono Nerd Font Mono";
        "editor.fontLigatures" = true;
        "editor.wordWrap" = "on";
        "vim.highlightedyank.enable" = true;
        "vim.useSystemClipboard" = true;
        "workbench.colorTheme" = "Catppuccin Mocha";
        "workbench.iconTheme" = "Catppuccin Mocha";
        "svg.preview.autoShow" = true;
        "editor.formatOnSave" = true;
        "editor.formatOnPaste" = true;
        "editor.formatOnType" = true;
        "editor.fontSize" = 16;
        "editor.wrappingStrategy" = "advanced";
      };
    };
  };
}
