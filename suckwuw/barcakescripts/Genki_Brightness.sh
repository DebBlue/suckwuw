#!/bin/bash

brightness() {
    current_brightness=$(light -G)
    percent=$(awk "BEGIN { pc=${current_brightness}; print int(pc) }")

    if [ "$percent" -eq 100 ]; then
        emoji="💡"
        echo "$emoji $percent%"
    elif [ "$percent" -ge 60 ]; then
        emoji="🌟"
        echo "$emoji $percent%"
    elif [ "$percent" -ge 20 ]; then
        emoji="🔆"
        echo "$emoji $percent%"
    fi
}

echo "$(brightness)"

