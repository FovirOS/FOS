{pkgs, ...}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-yCVcTc8qitar5JJfVTH4xNJMTPgx/NsRMoTxVm5PVrY=";
      owner = "FovirOS";
      repo = "rime";
      rev = "10c1f3bcd1b9e4415ea9fab6a262e1106fffc346";
    };
  };
}
