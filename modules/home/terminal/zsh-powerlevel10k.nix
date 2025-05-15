{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    zsh-powerlevel10k
    meslo-lgs-nf
  ];

  home.file.".p10k.zsh".text = builtins.readFile ./.p10k.zsh;
}
