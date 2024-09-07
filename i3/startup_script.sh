#!/usr/bin/env bash

## Screens
displays=("DP-1-1" "DP-1-2")
xrandr_output=$(xrandr)
all_connected=true

# echo $xrandr_output
for display in "${displays[@]}"; do
	if echo "$xrandr_output" | grep -q "$display connected"; then 
		echo "$display is connected"
	else 
		all_connected=false
	fi
done


if [ "$all_connected" = true ]; then
	echo "all connected"
	xrandr --output DP-1-1 --auto --output DP1-2 --auto
	xrandr --output eDP-1 --off --output DP-1-1 --right-of DP-1-2 --rotate left
else
	xrandr --auto
fi

