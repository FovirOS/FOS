{...}: {
  plugins = {
    nvim-autopairs = {
      enable = true;
    };

    treesitter = {
      enable = true;

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        nix
      ];
    };
  };
}
