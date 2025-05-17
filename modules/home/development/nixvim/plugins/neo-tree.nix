{...}: {
  plugins.neo-tree = {
    enable = true;

    enableDiagnostics = true;
    enableGitStatus = true;
    enableModifiedMarkers = true;

    useDefaultMappings = false;
  };

  keymaps = [
    {
      key = "<leader>tr";
      action = "<cmd>Neotree<cr>";
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
