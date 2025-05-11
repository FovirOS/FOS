{...}: {
  plugins.sniprun = {
    enable = true;

    settings = {
      display = [
        "Terminal"
      ];

      interpreter_options = {
        C_original = {
          compiler = "gcc";
        };

        Cpp_original = {
          compiler = "g++";
        };
      };
    };
  };
}
