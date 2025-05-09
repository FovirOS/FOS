{inputs, ...}: {
  imports = [inputs.nixvim.homeManagerModule.nixvim];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}
