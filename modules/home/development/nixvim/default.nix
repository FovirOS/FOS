{unstablePkgs, ...}: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    globals = {
      mapleader = " "; # Set space as the leader key.
    };

    imports = [
      ./colorscheme.nix # Theme.
      (import ./plugins {inherit unstablePkgs;}) # Plugins settings.
      ./opts.nix # Options.
      ./keymaps.nix # Import key maps.
    ];
  };
}
