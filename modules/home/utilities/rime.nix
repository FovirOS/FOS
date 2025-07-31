{
  config,
  pkgs,
  ...
}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-tXdIiYlSDBFxfBfParVN3lLEw5bp+rK78HSQtBnN5BM=";
      owner = "FovirOS";
      repo = "rime";
      rev = "10c1f3bcd1b9e4415ea9fab6a262e1106fffc346";
    };
  };

  home.file."${config.xdg.configHome}/fcitx5/conf/rime.conf".text = ''
    # Preedit Mode
    PreeditMode="Composing text"
    # Shared Input State
    InputState=All
    # Fix embedded preedit cursor at the beginning of the preedit
    PreeditCursorPositionAtBeginning=True
    # Action when switching input method
    SwitchInputMethodBehavior="Commit commit preview"
    # Deploy
    Deploy=
    # Synchronize
    Synchronize=
  '';
}
