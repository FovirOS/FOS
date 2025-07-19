{...}: {
  services = {
    spice-vdagentd.enable = true;
    spice-webdavd.enable = true;
  };

  virtualisation.libvirtd.enable = true;
}
