--[[
▐▓▌▐▓▌▐▓▌ ▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌   ▐▓▓▓▓▌▐▓▌ ▐▓▌▐▓▓▓▓▌    ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌ ▐▓▐▓▌ ▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌   ▐▓▌▐▓▌▐▓▓▌▐▓▌▐▓▌ ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▓▓▓▌  ▐▓▌  ▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌   ▐▓▓▓▓▌▐▓▐▓▐▓▌▐▓▌ ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌  ▐▓▌  ▐▓▌   ▐▓▐▓▌ ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▓▌▐▓▌ ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▌▐▓▌  ▐▓▌  ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌▐▓▌▐▓▌▐▓▌ ▐▓▌▐▓▓▓▓▌ ▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌
Created by Ryan M

Notes:
	This is the first file Hypr looks at. This links to all the other config files, make sure to edit those first!
	
]]--
require("variables") --global variables. Must load first!
require("monitors") --resolutions, refreshrates, vrr, hdr and more!
require("inputs") --keyboard and mouse
require("keybinds") --all binds, uses variables.lua
require("autostart") --autostart apps not included in systemd services.
require("rules") --window rules, floats and more!
require("theme") -- theming and style changes. big file! gaps, borders, blur and animations.


--misc
hl.config({
    misc = {
        force_default_wallpaper = 0,     -- no anime mascot wallpapers (sorry vaxry!)
        disable_hyprland_logo   = true,  -- plain background until waypaper sets one
        disable_splash_rendering = true, -- no random text splash on the background
    },
})

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
