#!/bin/bash

# Define a function to check battery status
bat() {
	# Read battery status for BAT1
	batstat="$(cat /sys/class/power_supply/BAT1/status)"

	# Read battery capacity for BAT1
	bat1="$(cat /sys/class/power_supply/BAT1/capacity)"

	# Set capacity to BAT1 capacity
	capacity="$bat1"

	# Determine emoji and output based on battery status and capacity
	if [ "$batstat" = "Charging" ]; then
		emoji="🔌"
		echo "$emoji $capacity%"
	elif [ "$capacity" -ge 1 ] && [ "$capacity" -le 25 ]; then
		emoji="🪫"
		echo "$emoji $capacity%"
	elif [ "$capacity" -ge 26 ]; then
		emoji="🔋"
		echo "$emoji $capacity%"
	fi
}

# Execute the function and print the result
echo "$(bat)"
