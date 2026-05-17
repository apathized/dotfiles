--[[                                       _       __    __         
      ___  ____ _   __   _   ______ ______(_)___ _/ /_  / /__  _____
     / _ \/ __ \ | / /  | | / / __ `/ ___/ / __ `/ __ \/ / _ \/ ___/
    /  __/ / / / |/ /   | |/ / /_/ / /  / / /_/ / /_/ / /  __(__  ) 
    \___/_/ /_/|___/    |___/\__,_/_/  /_/\__,_/_.___/_/\___/____/                                                                 
]]--

-- Note: uwsm users may need to place these in ~/.config/uwsm/env
-- and in ~/.config/uwsm/env-hyprland as per the hyprland wiki.
--https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/
-- You will find NO nvidia settings here! See the readme!

--XDG (uwsm sets these, somewhat redundant in nature.)
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

--QT
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1") --automatic scaling
hl.env("QT_QPA_PLATFORM", "wayland;xcb") --wayland first, x11 fallback enabled.
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1") --disable window bars
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct") --can switch to qt5ct if needed.

--Wayland
hl.env("GDK_SCALE", "1") --autoscaling
hl.env("GDK_BACKEND", "wayland,x11,*")--x11 fallback, may fix bugs or cause them. can never win!
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")--electron flicker fix
hl.env("SDL_VIDEODRIVER", "wayland")--if sdl games break, may require swap to x11.
hl.env("CLUTTER_BACKEND", "wayland")--native, should have no issues.


--Cursor
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
--hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")

--Others
--prepending ~/.local/bin
hl.env("PATH", os.getenv("HOME") .. "/.local/bin:" .. os.getenv("PATH"))
--Java Workaround, fixes Jetbrains IDE's
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
