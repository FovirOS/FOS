{...}: {
  programs.nixvim = {
    enable = true;

    imports = [
      ./colorscheme.nix # Theme.
      ./plugins.nix # Plugins settings.
      ./opts.nix # Options.
    ];
  };
}
