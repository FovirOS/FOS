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

      settings = {
        mapping = {
          "<Tab>" = ''
            function(fallback)
              local cmp = require("cmp")
              local col = vim.fn.col(".")
              local line = vim.fn.getline(".")

              local next_char = ""
              if col <= #line then
                next_char = line:sub(col,col)
              end

              local jump_chars = { [")"]=true, ["}"]=true, ["]"]=true }

              if cmp.visible() then
                cmp.confirm({select = true})
              elseif jump_chars[next_char] then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, true, true), "i", true)
              else
                fallback()
              end
            end
          '';
        };
      };
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
