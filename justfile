SOURCE_DIR:="."
TARGET_DIR:="/etc/nixos"

build:
  sudo rsync -av --delete \
      --exclude '.git' \
      --exclude 'build.sh' \
      {{SOURCE_DIR}}/ {{TARGET_DIR}}

  sudo nixos-rebuild switch --flake {{TARGET_DIR}}#laptop;

  rsync -av \
      "{{TARGET_DIR}}/hardware-configuration.nix" \
      "{{TARGET_DIR}}/flake.lock" \
      "{{SOURCE_DIR}}/"

clean:
  sudo nix-collect-garbage --delete-older-than 7d

default:='build'
