#!/bin/bash

pacman_updates=$(checkupdates 2>/dev/null | wc -l)
aur_updates=$(yay -Qua 2>/dev/null | wc -l)
total=$((pacman_updates + aur_updates))

if [ "$total" -eq 0 ]; then
    echo '{"text": " 0", "tooltip": "System is up to date", "class": "updated"}'
else
    echo "{\"text\": \" $total\", \"tooltip\": \"pacman: $pacman_updates\\nAUR: $aur_updates\", \"class\": \"pending\"}"
fi
