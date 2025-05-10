{...}: {
  programs.nixvim = {
    keymaps = [
      {
        action = "<C-w>";
        key = "<C-BS>";
        mode = "i";
      }
    ];
  };
}
