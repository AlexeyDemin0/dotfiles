#!/bin/bash

DIRECTORY=$HOME/.config/hypr/wallpapers
INDEXDIR=${DIRECTORY}/.index

MONITOR=$(hyprctl monitors | grep Monitor | awk '{print $2}')

if [[ ! -f "${INDEXDIR}" ]]; then
  echo 0 > "${INDEXDIR}"
fi

FILES=($(ls ${DIRECTORY}))
INDEX=$(< ${INDEXDIR})
BACKGROUND=${FILES[$INDEX]}

hyprpaper &

sleep 1

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "${DIRECTORY}/${BACKGROUND}"
hyprctl hyprpaper wallpaper "$MONITOR, ${DIRECTORY}/${BACKGROUND}"

exit 0
