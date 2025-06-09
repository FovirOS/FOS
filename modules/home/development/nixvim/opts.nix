{pkgs, ...}: {
  extraConfigVim = ''
    set clipboard+=unnamedplus
  '';

  opts = {
    # Configure tab behaviours.
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 4;
    expandtab = true;

    # Show line number and relative line number.
    number = true;
    relativenumber = true;

    # Use terminal's color.
    termguicolors = true;

    # Automatically indent and smart indent.
    autoindent = true;
    smartindent = true;

    # Highlight current line.
    cursorline = true;

    # Search with case-insenstive.
    ignorecase = true;
    smartcase = true;

    # Enable spell check.
    spell = true;
    spelllang = "en_US";
  };
}

