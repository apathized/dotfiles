#!/usr/bin/env bash
# waybar custom/notifications: text label + dunst history count
# click: show last · right-click: toggle dnd · middle-click: clear history
#written by claude tbh. was easier this way.
count=$(dunstctl count history)

if [ "$(dunstctl is-paused)" = "true" ]; then
    printf '{"text":"dnd %s","tooltip":"do not disturb (%s in history)","class":"dnd"}\n' "$count" "$count"
else
    printf '{"text":"notif %s","tooltip":"%s in history","class":"normal"}\n' "$count" "$count"
fi
