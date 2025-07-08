{pkgs, ...}: {
  home.file.".local/share/fcitx5/rime" = {
    force = true;
    recursive = true;
    source = pkgs.fetchFromGitHub {
      hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
      owner = "FovirOS";
      repo = "rime";
      rev = "7acdee60d09602383b6299d1bdaaba03f0a57869";
    };
  };
}
