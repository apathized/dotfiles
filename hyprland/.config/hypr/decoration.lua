--[[       __                           __  _           
      ____/ /__  _________  _________ _/ /_(_)___  ____ 
     / __  / _ \/ ___/ __ \/ ___/ __ `/ __/ / __ \/ __ \
    / /_/ /  __/ /__/ /_/ / /  / /_/ / /_/ / /_/ / / / /
    \__,_/\___/\___/\____/_/   \__,_/\__/_/\____/_/ /_/                                                   
]]--

--Pretty stuff happens here, if you plan on ricing start here!
--Planning to slowly retake control from HyDE. In Progress file.
--https://wiki.hypr.land/Configuring/Basics/Variables/#decoration

hl.config({
    decoration = {
        --general window decoration
        rounding = 6, --set to 0 by hyde, but thats ugly!
        rounding_power = 2, -- same thing!
        active_opacity = .95,
        inactive_opacity = .90,
        fullscreen_opacity = 1,
        
        --dim inactive windows, interesting idea to try?
        dim_modal = false,
        dim_inactive = false, 
        dim_strength = .5,
        dim_special = .1,
        
        --screen shaders. set to disables for now, but was using hyde shader.
        --screen_shader = "",

        --window edge blur
        blur = {
            enabled = true,
            size = 12,
            passes = 3, --can be reduced with little difference to naked eye for more performance.
            new_optimizations = true,
            xray = false,
            special = true,
        },

        --shadows around windows
        shadow = {
            enabled = true,
            range = 16, --set to 0 by hyde, shadow spread radius
            render_power = 4,
            color = "rgba(1a1a1aee)", -- standard dark shadow, somehow hyde uses a white square which is ugly!
        },

        --inner window glow, make sure to try this out!
        glow = {
            enabled = false,
            range = 8,
            render_power = 8,
            color = "rgba(e8d8a8ff)", -- champagne gold, soft cream may also work? test this out.
        }
    }
})