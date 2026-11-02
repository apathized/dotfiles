--[[
▐▓▓▓▓▓▌▐▓▌▐▓▌▐▓▓▓▓▌▐▓▌   ▐▓▌▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
  ▐▓▌  ▐▓▌▐▓▌▐▓▌   ▐▓▓▌ ▐▓▓▌▐▓▌      ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
  ▐▓▌  ▐▓▓▓▓▌▐▓▓▓▌ ▐▓▐▓▐▓▐▓▌▐▓▓▓▌    ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
  ▐▓▌  ▐▓▌▐▓▌▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌      ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
  ▐▓▌  ▐▓▌▐▓▌▐▓▓▓▓▌▐▓▌   ▐▓▌▐▓▓▓▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌
Created by Ryan M

Notes:
	Subject to change whenever i get bored. Originally was HyDE based, but at this point it is a amalgamation of what i like.
	Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
]]--


local c = dofile("/home/ryanm/.config/themes/current/colors.lua") --Theme System, see docs

---- general ----
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = { colors = { "rgba(" .. c.accent .. "ee)", "rgba(" .. c.accent2 .. "ee)" }, angle = 45 },
            inactive_border = "rgba(" .. c.bg2 .. "aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        -- Window-level transparency stays off: it fades text too.
        -- Transparency lives in the apps themselves (kitty background_opacity).
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        -- dim unfocused windows. 0 = none, 1 = black. try 0.1 - 0.25
        dim_inactive = true,
        dim_strength = 0.15,

        shadow = {
            enabled        = true,
            range          = 14,          -- spread
            render_power   = 3,           -- falloff: 1 = softest, 4 = sharpest
            offset         = "2 5",       -- 2px right, 5px down
            color          = 0x66000000,  -- focused: soft black (dark in every theme, so not from the palette)
            color_inactive = 0x33000000,  -- unfocused: fainter, so the focused window pops
        },

        -- blur only shows behind things with transparency (kitty, waybar pills)
        blur = {
            enabled   = true,
            size      = 5,       -- radius
            passes    = 2,       -- more = smoother, frostier
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },

    misc = {
        background_color = tonumber("ff" .. c.bg_hard, 16), -- shown before the wallpaper loads (no gray flash)
        font_family      = "JetBrainsMono Nerd Font",       -- Hyprland's own text: error bar, notices
    },
})

---- animations: bouncy + floaty ----
--https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
--speed = duration in 100ms steps (5 = 0.5s). bigger = slower, floatier.

--curves
hl.curve("linear",   { type = "bezier", points = { {0, 0},       {1, 1}     } })
hl.curve("ease",     { type = "bezier", points = { {0.25, 1},    {0.5, 1}   } }) -- floaty ease-out, no bounce
hl.curve("overshot", { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.05} } }) -- glides past the target, settles back
hl.curve("bounce",   { type = "bezier", points = { {0.3, 1.2},   {0.6, 1}   } }) -- springy pop. raise 1.2 for more bounce
hl.curve("butter",   { type = "bezier", points = { {0.25, 0.1},  {0.25, 1}  } }) -- gentle start, soft landing, no overshoot

--window movements
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 5,  bezier = "bounce",   style = "popin 80%" }) -- open: springy pop
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 4,  bezier = "ease",     style = "popin 80%" }) -- close: smooth, no bounce
hl.animation({ leaf = "windowsMove", enabled = true, speed = 2,  bezier = "butter",   style = "slide" })     -- move/resize: smooth, no bounce

--layers (waybar, rofi, notifications)
hl.animation({ leaf = "layersIn",    enabled = true, speed = 4,  bezier = "bounce",   style = "popin 90%" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 3,  bezier = "ease",     style = "popin 90%" })

--fades
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 5,  bezier = "ease" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 5,  bezier = "ease" })
hl.animation({ leaf = "fadeSwitch",  enabled = true, speed = 5,  bezier = "ease" })
hl.animation({ leaf = "fadeShadow",  enabled = true, speed = 5,  bezier = "ease" })
hl.animation({ leaf = "fadeDim",     enabled = true, speed = 5,  bezier = "ease" }) -- dim/undim on focus change
hl.animation({ leaf = "fadeLayers",  enabled = true, speed = 5,  bezier = "ease" })

--others
hl.animation({ leaf = "workspaces",  enabled = true, speed = 6,  bezier = "overshot", style = "slidefadevert 20%" }) --floaty vertical slide with a fade
hl.animation({ leaf = "border",      enabled = true, speed = 1,  bezier = "linear" }) --almost instant border highlight on focus. try 1 vs 2.
hl.animation({ leaf = "borderangle", enabled = true, speed = 24, bezier = "linear", style = "once" }) --was loop style, can be distracting as it slightly moves.

---- dim exemptions ----
-- games and video stay full brightness when you focus the other monitor
hl.window_rule({
    name   = "no-dim-media",
    match  = { class = "^(steam_app_.*|gamescope|mpv)$" },
    no_dim = true,
})
hl.window_rule({
    name   = "no-dim-fullscreen",
    match  = { fullscreen = true },
    no_dim = true,
})

---- blur behind layers ----
-- ignore_alpha: only blur where the layer is more than 50% opaque (the pills, not the empty bar area)
hl.layer_rule({
    name         = "waybar-blur",
    match        = { namespace = "waybar" },
    blur         = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    name         = "dunst-blur",
    match        = { namespace = "notifications" },
    blur         = true,
    ignore_alpha = 0.5,
    animation    = "slide right", -- notifications glide in from the screen edge
})

---- smart gaps ----
-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
