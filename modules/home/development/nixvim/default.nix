{...}: {
  programs.nixvim = {
    enable = true;

    imports = [
      ./colorscheme.nix
      ./plugins.nix
    ];
  };
}
