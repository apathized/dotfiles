--[[
▐▓▓▓▓▌▐▓▌▐▓▌▐▓▌   ▐▓▓▓▓▌▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌   ▐▓▌   ▐▓▌      ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▓▓▓▌▐▓▌▐▓▌▐▓▌   ▐▓▓▓▌ ▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
▐▓▐▓▌ ▐▓▌▐▓▌▐▓▌   ▐▓▌      ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌
Created by Ryan M

Notes:
	Window rules go here! Floating windows, maximize rules and more.
	See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
	and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
]]--

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

---- games ----

hl.window_rule({
    -- Proton/Steam games always open on the OLED
    name    = "games-on-oled",
    match   = { class = "^steam_app_.*" },
    monitor = "DP-1",
})

---- floating utilities ----

hl.window_rule({
    name   = "float-yazi",
    match  = { class = "^yazi$" },
    float  = true,
    center = true,
})

hl.window_rule({
    name   = "float-btop",
    match  = { class = "^btop$" },
    float  = true,
    center = true,
})

---- layouts ----
-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})


---- parked fixes: uncomment only if the problem shows up ----

-- cursor escapes to DP-3 during fullscreen games
-- hl.window_rule({
--     name  = "confine-games",
--     match = { content = "game", fullscreen = true },
--     confine_pointer = true,
-- })

-- screen dims or locks during fullscreen video
-- hl.window_rule({
--     name  = "idle-video",
--     match = { class = "mpv|brave-browser|zen|[Cc]ider" },
--     idle_inhibit = "fullscreen",
-- })

---- floating popups from waybar ----
hl.window_rule({
    name   = "float-wiremix",
    match  = { class = "^wiremix$" },
    float  = true,
    center = true,
})

hl.window_rule({
    name   = "float-nmtui",
    match  = { class = "^nmtui$" },
    float  = true,
    center = true,
})
