{...}: {
  keymaps = [
    {
      key = "<Tab>";
      action = {
        __raw = "require(\"cmp\").mapping.confirm()";
      };
      mode = "i";
    }
  ];
}
