{...}: {
  programs.git = {
    enable = true;
    userName = "Fovir";
    userEmail = "fovir@disroot.org";

    extraConfig = {
      init = {
        defaultBranch = "main";
      };

      pull = {
        rebase = false;
      };

      merge = {
        ff = false;
      };
    };
  };
}
