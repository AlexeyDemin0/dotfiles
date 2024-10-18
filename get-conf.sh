#!/bin/bash

DOTFILES_DIR="$HOME/projects/dotfiles"
CONFIG_DIR="$HOME/.config"

copy() {
  rm -rf "${DOTFILES_DIR}/$1"
  mkdir -p "$(dirname "${DOTFILES_DIR}/$1")"
  cp -rf "${CONFIG_DIR}/$1" "${DOTFILES_DIR}/$1"
  echo "file ${CONFIG_DIR}/$1 copied to ${DOTFILES_DIR}/$1"
}

copy rofi
copy hypr
copy waybar

# vscode
copy "Code - OSS/User/settings.json"
copy "Code - OSS/User/snippets/cpp.json"

# wallpapers
rm -rf ${DOTFILES_DIR}/hypr/wallpapers
copy hypr/wallpapers//win11.webp
copy hypr/wallpapers/firewatch.jpg
copy hypr/wallpapers/mountains.jpg

#terminal
copy kitty/kitty.conf
copy fish/config.fish
