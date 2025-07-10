{pkgs, ...}: {
  boot = {
    kernelPackages = pkgs.linuxPackages_cachyos;
    zfs.package = pkgs.zfs_cachyos;

    loader.systemd-boot.configurationLimit = 5;
  };
}
