--[[                                     __   ___        __                        __ 
       ____ ____  ____  ___  _________ _/ /  ( _ )      / /___ ___  ______  __  __/ /_
      / __ `/ _ \/ __ \/ _ \/ ___/ __ `/ /  / __ \/|   / / __ `/ / / / __ \/ / / / __/
     / /_/ /  __/ / / /  __/ /  / /_/ / /  / /_/  <   / / /_/ / /_/ / /_/ / /_/ / /_  
     \__, /\___/_/ /_/\___/_/   \__,_/_/   \____/\/  /_/\__,_/\__, /\____/\__,_/\__/  
    /____/                                                   /____/                   
]]--

--https://wiki.hypr.land/Configuring/Basics/Variables/#general

hl.config({
    general = {
        layout = "dwindle",
        gaps_in = 10,
        gaps_out = 18,
        border_size = 2,
        col = {
            active_border   = { colors = { "rgba(7aa2f7ff)", "rgba(bb9af7ff)" }, angle = 45 },
            inactive_border = { colors = { "rgba(414868cc)", "rgba(24283bcc)" }, angle = 45 },
        },
        allow_tearing = true, --might need to be played with.
        resize_on_border = true,
        extend_border_grab_area = 15,
        --float_gaps = -1, --play with this setting. off for now as thats what it already was.
    },

    dwindle = {
        preserve_split = true,
    }
})