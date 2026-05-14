--[[              _                ____                                 
       ____ ___  (_)____________  / / /___ _____  ___  ____  __  _______
      / __ `__ \/ / ___/ ___/ _ \/ / / __ `/ __ \/ _ \/ __ \/ / / / ___/
     / / / / / / (__  ) /__/  __/ / / /_/ / / / /  __/ /_/ / /_/ (__  ) 
    /_/ /_/ /_/_/____/\___/\___/_/_/\__,_/_/ /_/\___/\____/\__,_/____/  
]]--                                                                    

--Miscellaneous stuff happens here. Got nothing else.
--https://wiki.hypr.land/Configuring/Basics/Variables/#misc

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        splash_font_family = "JetBrainsMono Nerd Font",
        force_default_wallpaper = 0,
        anr_missed_pings = 5, --how long untill applications are declared not responding.
        font_family = "JetBrainsMono Nerd Font",
        render_unfocused_fps = 30,
    },
    xwayland = {
        enabled = true,
        use_nearest_neighbor = true,
        force_zero_scaling = true,
    },
    ecosystem = {
        no_update_news = false,
        no_donation_nag = true, --already donated :D
    },
    render = {
        cm_enabled = true,
        cm_auto_hdr = true,
        send_content_type = true,
        direct_scanout = 0, -- can be buggy, can help performance. off for now.
    },
    quirks = {
        prefer_hdr = false,
    }
})