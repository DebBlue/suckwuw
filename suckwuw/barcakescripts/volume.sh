#!/bin/bash

volume() {
    VOLONOFF=$(amixer scontents | awk '/Left: Playback/ {print $NF}' | sed 's/[][]//g')
    VOL=$(amixer scontents | awk '/Left: Playback/ {print $5}' | sed 's/[][]//g; s/%//')
    LOWVOL="🔈"
    MIDVOL="🔉"
    HIVOL="🔊"
    VOLOFF="🔇"

    if [ "$VOLONOFF" = "off" ] || [ "$VOL" -eq 0 ]; then
        echo "$VOLOFF"
    elif [ "$VOL" -ge 1 ] && [ "$VOL" -le 25 ]; then
        echo "$LOWVOL $VOL%"
    elif [ "$VOL" -ge 26 ] && [ "$VOL" -le 74 ]; then
        echo "$MIDVOL $VOL%"
    elif [ "$VOL" -ge 75 ]; then
        echo "$HIVOL $VOL%"
    fi
}

echo "$(volume)"
