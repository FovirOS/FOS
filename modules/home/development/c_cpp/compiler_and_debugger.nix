{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    libgcc
    gdb
    cgdb
  ];
}
