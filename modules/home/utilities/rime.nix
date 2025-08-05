{
  config,
  pkgs,
  ...
}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-Rz4dMcLJ2yRwKPBb3F/xutzK0//RRSLLCLfBTIGpaa0=";
      owner = "FovirOS";
      repo = "rime";
      rev = "df4dc1811d936df02a0f76ce1903ba3d3b8caf17";
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
