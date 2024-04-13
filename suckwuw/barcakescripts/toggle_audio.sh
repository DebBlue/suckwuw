#!/bin/bash

# Get the current mute status
MUTED=$(amixer get Master | grep -o "\[on\]" | head -n 1)

if [ "$MUTED" = "[on]" ]; then
    # If not muted, mute
    amixer set Master mute
else
    # If muted, unmute
    amixer set Master unmute
fi

