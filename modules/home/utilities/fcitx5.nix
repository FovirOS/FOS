{
  config,
  pkgs,
  ...
}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-s3r8cdEliiPnKWs64Wgi0rC9Ngl1mkIrLnr2tIcyXWw=";
      owner = "iDvel";
      repo = "rime-ice";
      tag = "2025.04.06";
    };
  };
}
