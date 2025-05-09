{pkgs, ...}: {
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

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings.sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
      ];
    };

    nvim-surround = {
      enable = true;

      settings = {
        keymaps = {
          visual = "S";
        };
      };
    };
  };
}
