{pkgs, ...}: {
  home.packages = with pkgs; [
    (flameshot.override {enableWlrSupport = true;})
  ];

  home.file.".config/flameshot/flameshot.ini".text = builtins.readFile ./flameshot.ini;
}
