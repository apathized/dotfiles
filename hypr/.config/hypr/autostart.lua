--[[         
▐▓▓▓▓▌▐▓▌▐▓▌▐▓▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▌▐▓▌▐▓▌     ▐▓▌  ▐▓▌▐▓▌▐▓▌▐▓▌  ▐▓▌     ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▓▓▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▌▐▓▌▐▓▓▓▓▌  ▐▓▌  ▐▓▓▓▓▌▐▓▓▓▓▌  ▐▓▌     ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▌▐▓▌   ▐▓▌  ▐▓▌  ▐▓▌▐▓▌▐▓▐▓▌   ▐▓▌     ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▌▐▓▌▐▓▓▓▓▌  ▐▓▌  ▐▓▓▓▓▌▐▓▓▓▓▌  ▐▓▌  ▐▓▌▐▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌
Created by Ryan M

Notes:
	This runs commands once Hyprland starts.
	Things with their own systemd service (polkit, waybar, hypridle) don't go here.
]]--

hl.on("hyprland.start", function()
    -- Make the OLED XWayland's primary, so Proton games open there (fixes rl and deadlock.)
    hl.exec_cmd("xrandr --output DP-1 --primary")
    -- Clipboard history
    hl.exec_cmd("uwsm app -- wl-paste --watch cliphist store")
    -- Wallpaper daemon
    hl.exec_cmd("uwsm app -- awww-daemon")
    hl.exec_cmd("sleep 1; waypaper --restore")
    -- USB automount
    hl.exec_cmd("uwsm app -- udiskie --appindicator --smart-tray")
    -- Logitech device manager
    hl.exec_cmd("uwsm app -- solaar --window=hide")
    -- Discord client
    -- wait (max 30s) for waybar's tray before starting vesktop, or its tray icon never shows up (waybar fix)
    hl.exec_cmd([[sh -c 'for i in $(seq 60); do busctl --user status org.kde.StatusNotifierWatcher >/dev/null 2>&1 && break; sleep 0.5; done; exec uwsm app -- vesktop --start-minimized']])
end)
