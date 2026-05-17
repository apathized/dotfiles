--[[                          _ __                 
       ____ ___  ____  ____  (_) /_____  __________
      / __ `__ \/ __ \/ __ \/ / __/ __ \/ ___/ ___/
     / / / / / / /_/ / / / / / /_/ /_/ / /  (__  ) 
    /_/ /_/ /_/\____/_/ /_/_/\__/\____/_/  /____/                                          
]]--
-- Tailored for my monitors. Highly suggest following: 
-- https://wiki.hypr.land/Configuring/Basics/Monitors/

-- Quoted from wiki: "Hyprland uses an inverse Y cartesian system. 
-- Thus, a negative y coordinate places a monitor higher, and a positive y coordinate will place it lower.
-- Secondary monitors should be written first as such. (hint, will save bug fixes later!)


hl.monitor({ --Secondary 240HZ LED
    output = "DP-3",
    mode = "1920x1080@240",
    position = "2560x360", --Bottom aligned.
    scale = 1.0,
    vrr = 2,
    cm = "auto",
    supports_hdr = 1,
    supports_wide_color = 0, 
})


hl.monitor({ -- Primary 240HZ OLED
    output = "DP-1",
    mode = "2560x1440@240",
    position = "0x0",
    scale = 1.0,
    vrr = 2,
    cm = "auto",
    supports_hdr = 1,
    supports_wide_color = 1,
    --bitdepth = 10, <-- causes weirdness on fullscreening, look into later.
})