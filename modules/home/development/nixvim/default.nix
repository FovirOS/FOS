{...}: {
  programs.nixvim = {
    enable = true;

    imports = [./colorscheme.nix];
  };
}
