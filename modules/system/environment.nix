{config, ...}: {
  time.timeZone = "Asia/Kuala_Lumpur";

  environment.variables = {
    HYPRSHOT_DIR = "${config.xdg.userDirs.pictures}/Screenshots";
  };
}
