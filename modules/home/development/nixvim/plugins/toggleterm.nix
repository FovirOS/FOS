{...}: {
  plugins.toggleterm = {
    enable = true;

    settings = {
      direction = "float";

      open_mapping = "[[<C-`>]]";
    };
  };

  extraConfigLua = ''
    function RunCurrentFile()
      local runners = {
        py = "python -u %s",
        c = "gcc *.c -o %s && ./%s",
        cpp = "g++ *.cpp -o %s && ./%s",
      }

      local filename = vim.fn.expand("%:t")
      local filename_without_ext = vim.fn.expand("%:t:r")
      local ext = vim.fn.expand("%:e")

      local cmd_template = runners[ext]

      if cmd_template then
        local cmd
        if cmd_template:match("%%s.-%%s") then
          cmd = string.format(cmd_template, filename_without_ext, filename_without_ext)
        else
          cmd = string.format(cmd_template, filename)
        end

        vim.cmd("TermExec cmd='" .. cmd .. "'")
      else
        print("No code runner.")
      end
    end
  '';

  keymaps = [
    {
      key = "<F5>";
      mode = "n";
      action = ":lua RunCurrentFile()<CR>";
      options.desc = "Run Code";
    }
  ];
}
