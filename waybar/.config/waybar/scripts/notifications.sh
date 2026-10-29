#!/bin/sh
# Waybar: dunst notification count (JSON so it gets a tooltip).
if [ "$(dunstctl is-paused)" = "true" ]; then
    n=$(dunstctl count waiting)
    printf '{"text":"󰂛 %s","tooltip":"Do Not Disturb on, %s held\\nRight-click: turn DND off","class":"dnd"}\n' "$n" "$n"
else
    n=$(dunstctl count history)
    printf '{"text":"󰂚 %s","tooltip":"%s notifications\\nLeft: show last | Right: Do Not Disturb | Middle: clear all","class":"normal"}\n' "$n" "$n"
fi
