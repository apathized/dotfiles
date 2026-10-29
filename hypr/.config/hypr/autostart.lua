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
    
    -- USB automount; tray icon only shows while a drive is plugged in
    hl.exec_cmd("uwsm app -- udiskie --appindicator --smart-tray")
end)
