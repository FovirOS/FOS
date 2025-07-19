SOURCE_DIR:="."
TARGET_DIR:="/etc/nixos"

build:
  echo "Run rsync..."

  sudo rsync -av --delete \
      --exclude '.git' \
      --exclude 'build.sh' \
      {{SOURCE_DIR}}/ {{TARGET_DIR}}

  echo "Run nixos-rebuild switch..."
  sudo nixos-rebuild switch --flake {{TARGET_DIR}}#laptop;

  echo "Sync hardware-configuration.nix and flake.lock..."

  rsync -av \
      "{{TARGET_DIR}}/hardware-configuration.nix" \
      "{{TARGET_DIR}}/flake.lock" \
      "{{SOURCE_DIR}}/"

  echo "Done!"

clean:
  sudo nix-collect-garbage --delete-older-than 7d
  echo "Done!"

default:='build'
