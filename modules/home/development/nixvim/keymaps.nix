{...}: {
  keymaps = [
    {
      key = "<Tab>";
      action = {
        __raw = ''
          function()
            return require('cmp').visible() and require('cmp').confirm({select = true}) or '<Tab>'
          end;
        '';
      };
      mode = "i";
    }
  ];
}
