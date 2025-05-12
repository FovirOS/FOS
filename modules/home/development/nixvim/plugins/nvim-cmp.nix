{...}: {
  plugins. cmp = {
    enable = true;

    # Completion sources.
    autoEnableSources = true;
    settings.sources = [
      {name = "nvim_lsp";}
      {name = "path";}
      {name = "buffer";}
    ];

    settings = {
      sorting.comparators = [
        "require('cmp.config.compare').recently_used"
        "require('cmp.config.compare').exact"
        "require('cmp.config.compare').order"
      ];
      mapping = {
        # Configure tab out.
        "<Tab>" = ''
          function(fallback)
            local cmp = require("cmp")
            local col = vim.fn.col(".")
            local line = vim.fn.getline(".")

            local next_char = ""
            if col <= #line then
              next_char = line:sub(col,col)
            end

            local jump_chars = { [")"]=true, ["}"]=true, ["]"]=true, ['"']=true, ["'"]=true, ["`"]=true, [">"]=true, [";"]=true }

            if cmp.visible() then
              cmp.confirm({select = true})
            elseif jump_chars[next_char] then
              vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, true, true), "i", true)
            else
              fallback()
            end
          end
        '';

        # Close the completion
        "<BS>" = ''
          function(fallback)
            if cmp.visible() then
              cmp.close()
            else
              fallback()
            end
          end
        '';

        "<Down>" = "cmp.mapping.select_next_item()";
        "<Up>" = "cmp.mapping.select_prev_item()";
      };
    };
  };
}
