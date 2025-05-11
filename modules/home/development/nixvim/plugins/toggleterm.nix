{...}: {
  plugins.toggleterm = {
    enable = true;

    settings = {
      direction = "vertical";

      open_mapping = "[[<C-`>]]";
      size = ''
        function(term)
          return vim.o.columns * 0.4
        end
      '';
    };
  };
}
