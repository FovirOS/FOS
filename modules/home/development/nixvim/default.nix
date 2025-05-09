{...}: {
  programs.nixvim = {
    enable = true;

    imports = [
      ./keymaps.nix
      ./colorscheme.nix
      ./plugins.nix
      ./options.nix
    ];
  };
}
