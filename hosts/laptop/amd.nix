{...}: {
  environment.systemPackages = [
    "microcode-amd"
  ];

  hardware.cpu.amd = {
    updateMicrocode = true;
  };
}
