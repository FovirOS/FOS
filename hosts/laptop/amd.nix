{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    microcode-amd
  ];

  hardware.cpu.amd = {
    updateMicrocode = true;
  };
}
