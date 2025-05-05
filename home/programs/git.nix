{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "qemu";
    userEmail = "qemu@example.com";
  };
}
