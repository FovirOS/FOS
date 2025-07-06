#!/usr/bin/env bash

set -euo pipefail

SOURCE_DIR=".";
TARGET_DIR="/etc/nixos";

echo "Run rsync..."

sudo rsync -av --delete \
    --exclude '.git' \
    --exclude 'build.sh' \
    --exclude 'flake.lock' \
    --exclude 'hardware-configuration.nix' \
    "$SOURCE_DIR/" "$TARGET_DIR"

echo "Run nixos-rebuild switch..."
sudo nixos-rebuild switch --flake "$TARGET_DIR"#laptop;

echo "Sync hardware-configuration.nix and flake.lock..."

rsync -av \
    "$TARGET_DIR/hardware-configuration.nix" \
    "$TARGET_DIR/flake.lock" \
    "$SOURCE_DIR/"

echo "Done!"
