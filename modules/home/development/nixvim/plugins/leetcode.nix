{...}: {
  plugins.leetcode = {
    enable = true;

    settings = {
      storage = {
        home = "~/Projects/leetcode";
      };
      picker = {
        provider = "telescope";
      };
    };
  };
}
