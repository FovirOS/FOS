{pkgs, ...}: {
  home.packages = with pkgs; [
    qemu

    quickemu
    virt-manager
  ];
}
