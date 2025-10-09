{...}: {
  virtualisation.virtualbox = {
    host = {
      enable = true;

      enableKvm = true;
      addNetworkInterface = false;
    };
    guest = {
      enable = true;
      clipboard = true;
      dragAndDrop = true;
    };
  };

  users.extraGroups.vboxusers.members = [
    "fovir"
  ];
}
