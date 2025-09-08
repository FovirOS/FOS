{...}: {
  programs.git = {
    enable = true;
    userName = "Fovir";
    userEmail = "fovir@disroot.org";

    config = {
      init = {
        defaultBranch = "main";
      };

      pull = {
        rebase = "false";
      };
    };
  };
}
