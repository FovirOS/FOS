{pkgs, ...}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-yCVcTc8qitar5JJfVTH4xNJMTPgx/NsRMoTxVm5PVrY=";
      owner = "FovirOS";
      repo = "rime";
      rev = "7acdee60d09602383b6299d1bdaaba03f0a57869";
    };
  };

  home.file.".config/fcitx5/conf/rime.conf".text = ''
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
