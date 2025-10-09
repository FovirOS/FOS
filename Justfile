input := "laptop"

switch:
    sudo nixos-rebuild switch --flake .#{{input}} --show-trace -L -v

build:
  sudo nixos-rebuild build --flake .#{{input}} --show-trace -L -v

vm:
  sudo nixos-rebuild build-vm --flake .#{{input}} --show-trace -L -v

clean:
    sudo nix-collect-garbage --delete-older-than 7d

default: switch
