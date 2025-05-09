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
              local col = vim.fn.col(".")
              local line = vim.fn.getline(".")

              local char = line:sub(col, col)
              local prev = line:sub(col - 1, col - 1)

              local jump_chars = { [")"]=true, ["}"]=true, ["]"]=true, ['"']=true, ["'"]=true, [">"]=true }

              if cmp.visible() then
                cmp.confirm({select = true})
              elseif jump_chars[char] and (prev:match("%s") or prev == "") then
                local before = line:sub(1, col - 2)
                local after = line:sub(col)

                if (before:match("%b()") or before:match("%b[]") or before:match("%b{}")) then
                  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("", true, true, true), "n", true)
                else
                  fallback()
                end
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
