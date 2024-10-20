#!/bin/bash

WORKINGDIR="$HOME/.config/rofi"
MAP="${WORKINGDIR}/menu.cvs"

CMD=$( cat "$MAP" | cut -d ',' -f 1 | rofi -dmenu -i -config "${WORKINGDIR}/config.rasi" -p "do" | head -n 1 )

LINE=$(grep "$CMD" "$MAP")

if [ -z "$LINE" ] && [ ! -z "$CMD" ]; then
  $CMD
elif [ ! -z "$CMD" ]; then
  echo "$LINE" | cut -d ',' -f 2 | head -n 1 | xargs -i --no-run-if-empty /bin/bash -c "{}"
fi

exit 0
