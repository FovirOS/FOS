{...}: {
  plugins.neo-tree = {
    enable = true;

    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;

    useDefaultMappings = false;

    closeIfLastWindow = true;
    popupBorderStyle = "rounded";

    eventHandlers = {
      file_opened = ''
        function(file_path)
          require("neo-tree").close_all()
        end
      '';
    };

    window.mappings = {
      "<cr>" = "open";
      o = "open";

      "<C-\\>" = "open_vsplit";

      l = "toggle_node";
      h = "close_node";
      r = "rename";
      f = "refresh";

      a = {
        command = "add";
        config = {
          show_path = "relative";
        };
      };
      A = "add_directory";

      y = "copy_to_clipboard";
      p = "paste_from_clipboard";
      d = "delete";
      "." = "toggle_hidden";
    };
  };

  keymaps = [
    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      mode = "n";
      options.desc = "Toggle File Explorer";
    }
  ];
}
