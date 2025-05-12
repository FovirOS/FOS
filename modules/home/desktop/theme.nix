{
  pkgs,
  config,
  ...
}: {
  stylix = {
    autoEnable = true;

    fonts = {
      serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.monospace;
    };
  };
}
