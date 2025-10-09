input := "laptop"

switch:
    sudo nixos-rebuild switch --flake .#{{input}}

build:
  sudo nixos-rebuild build --flake .#{{input}}

vm:
  sudo nixos-rebuild build-vm --flake .#{{input}}

clean:
    sudo nix-collect-garbage --delete-older-than 7d

default: switch
