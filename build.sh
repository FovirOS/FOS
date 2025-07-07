#!/usr/bin/env bash

set -euo pipefail

echo "Run nixos-rebuild switch..."
sudo nixos-rebuild switch --flake .#laptop;

echo "Done!"
