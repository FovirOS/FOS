{pkgs, ...}: {
  home.packages = with pkgs; [
    swappy
    grim
    slurp
  ];
}
