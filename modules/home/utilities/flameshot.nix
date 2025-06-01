{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    (flameshot.override {enableWlrSupport = true;})
  ];

  home.activation.createFlameshotSaveDir = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/Pictures/flameshot
  '';

  home.file.".config/flameshot/flameshot.ini".text = ''
    [General]
    savePath=${config.home.homeDirectory}/Pictures/flameshot
    savePathFixed=true
    saveAsFileExtension=.png
    uiColor=#54baf1
    contrastUiColor=#190d4f
    showHelp=false
    showSidePanelButton=false
    filenamePattern=%F_%H-%M
    disabledTrayIcon=true
    copyPathAfterSave=true
    saveAfterCopy=true

    [Shortcuts]
    TYPE_COPY=Enter
  '';
}
