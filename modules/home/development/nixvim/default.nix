{...}: {
  programs.nixvim = {
    enable = true;

    globals = {
      mapleader = " "; # Set space as the leader key.
    };

    imports = [
      ./colorscheme.nix # Theme.
      ./plugins # Plugins settings.
      ./opts.nix # Options.
    ];
  };
}
