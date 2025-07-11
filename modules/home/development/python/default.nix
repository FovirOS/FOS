{pkgs, ...}: {
  home.packages = with pkgs; [
    python2
    python314
  ];
}
