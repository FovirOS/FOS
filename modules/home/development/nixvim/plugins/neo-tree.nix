{...}: {
  plugins.neo-tree = {
    enable = true;

    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;

    useDefaultMappings = false;

    closeIfLastWindow = true;
    popupBorderStyle = "rounded";

    window.mappings = {
      "<cr>" = "open";
      o = "open";

      l = "toggle_node";
      h = "close_node";
      r = "rename";

      a = {
        command = "add";
        config = {
          show_path = "relative";
        };
      };

      y = "copy_to_clipboard";
      p = "paste_from_clipboard";
      d = "delete";
      "." = "toggle_hidden";
    };
  };

  keymaps = [
    {
      key = "<leader>tr";
      action = "<cmd>Neotree toggle<cr>";
      mode = "n";
      options.desc = "Toggle Neo-Tree";
    }

    {
      key = "<C-n>";
      action = "<cmd>Neotree action=new source=filesystem<CR>";
      options.desc = "Create New File";
      mode = "n";
    }
  ];
}
