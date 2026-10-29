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

---- general ----
hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 20,

        border_size = 2,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
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

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

---- animations (LimeFrenzy, carried from old config) ----
--https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

--curve definitions, experiment with wind vs overshot for window movements.
hl.curve("default",  { type = "bezier", points = { {.12, .92}, {.08, 1.0} } })
hl.curve("wind",     { type = "bezier", points = { {.12, .92}, {.08, 1.0} } })
hl.curve("overshot", { type = "bezier", points = { {.18, .95}, {.22, 1.03} } })
hl.curve("linear",   { type = "bezier", points = { {0, 0}, {1, 1} } })

--window movements
hl.animation({ leaf = "windows",     enabled = true, speed = 5,  bezier = "wind",     style = "popin 60%" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6,  bezier = "overshot", style = "popin 60%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 4,  bezier = "overshot", style = "popin 60%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4,  bezier = "overshot", style = "slide" })
hl.animation({ leaf = "layers",      enabled = true, speed = 4,  bezier = "default",  style = "popin" })

--fades
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeSwitch",  enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeShadow",  enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeDim",     enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeLayers",  enabled = true, speed = 7,  bezier = "default" })

--others
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,  bezier = "overshot", style = "slidevert" }) --highly bouncy, may need to pull back.
hl.animation({ leaf = "border",      enabled = true, speed = 1,  bezier = "linear" }) --almost instant border highlight on focus. try 1 vs 2.
hl.animation({ leaf = "borderangle", enabled = true, speed = 24, bezier = "linear", style = "once" }) --was loop style, can be distracting as it slightly moves.

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
