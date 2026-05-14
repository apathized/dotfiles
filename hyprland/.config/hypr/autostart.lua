--[[               __             __             __ 
      ____ ___  __/ /_____  _____/ /_____ ______/ /_
     / __ `/ / / / __/ __ \/ ___/ __/ __ `/ ___/ __/
    / /_/ / /_/ / /_/ /_/ (__  ) /_/ /_/ / /  / /_  
    \__,_/\__,_/\__/\____/____/\__/\__,_/_/   \__/                                                  
]]--

--Tailored for my list of programs, feel free to use and adjust
-- aww for wallpapers is a lifesaver btw.
--https://wiki.hypr.land/Configuring/Basics/Autostart/

--note: uwsm handles xdg-desktop-portal-hyprland and polkit-agent already.

hl.on("hyprland.start", function()
    --core services, dbus/systemd boilerplate + hyde shell
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("hyde-shell app -t service hyde-config --no-startup") --to be deprecated
    hl.exec_cmd("hypridle")

    --load desktop + notifications
    hl.exec_cmd("hyde-shell wallpaper -G")
    hl.exec_cmd("waybar")
    hl.exec_cmd("dunst")

    --clipboard history
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    --applets
    hl.exec_cmd("nm-applet --indicator")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("udiskie --no-automount --smart-tray")

    --personal apps
    hl.exec_cmd("protonvpn-app --start-minimized")
    hl.exec_cmd("vice start --no-open-ui")
end)