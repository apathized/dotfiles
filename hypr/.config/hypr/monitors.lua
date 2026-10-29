--[[
▐▓▌   ▐▓▌▐▓▓▓▓▌▐▓▌ ▐▓▌▐▓▓▓▓▓▌▐▓▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▓▌ ▐▓▓▌▐▓▌▐▓▌▐▓▓▌▐▓▌  ▐▓▌    ▐▓▌  ▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌      ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▐▓▐▓▐▓▌▐▓▌▐▓▌▐▓▐▓▐▓▌  ▐▓▌    ▐▓▌  ▐▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌▐▓▓▌  ▐▓▌    ▐▓▌  ▐▓▌▐▓▌▐▓▐▓▌    ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▌   ▐▓▌▐▓▓▓▓▌▐▓▌ ▐▓▌▐▓▓▓▓▓▌  ▐▓▌  ▐▓▓▓▓▌▐▓▌▐▓▌▐▓▓▓▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌

Created by Ryan M

Notes:
	Tailored for my particular monitor setup. Highly suggest reading the wiki for customization.
	https://wiki.hypr.land/Configuring/Basics/Monitors/

]]--

-- Primary: ASUS XG27AQDMG QD-OLED
hl.monitor({
    output              = "DP-1",
    mode                = "2560x1440@240",
    position            = "0x0",
    scale               = 1.0,
    vrr                 = 2, -- fullscreen only
    cm                  = "auto",
    bitdepth            = 10, --can cause discord screenshare  issues, keep and eye on
    supports_hdr        = 1,
    supports_wide_color = 1, --can cause issues, keep and eye on (game crashes)
})

-- Secondary: ASUS VG279QML5A
hl.monitor({
    output              = "DP-3",
    mode                = "1920x1080@240",
    position            = "2560x360", --bottom aligned, can be adjusted.
    scale               = 1.0,
    vrr                 = 2,
    cm                  = "auto",
    bitdepth            = 10,
    supports_hdr        = 1,
    supports_wide_color = 1, --can cause oversaturation on monitors that dont actually support it.
})

-- Anything else that gets plugged in (catch all. not ideal, hypr always seems to default to 60hz on devices!)
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

-- Workspace 1 on the OLED, 2 on the side monitor.
-- Everything else is created on whichever monitor is focused.
hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-3", default = true })
