--[[               __         
       _______  __/ /__  _____
      / ___/ / / / / _ \/ ___/
     / /  / /_/ / /  __(__  ) 
    /_/   \__,_/_/\___/____/                    
]]--

--Window and Layer rules. Heavily based on HyDE's windowrules.conf file. Check them out
--https://github.com/HyDE-Project/HyDE
--https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "^(.*mpv.*)$|^(.*vlc.*)$" }, --regex for VLC Media Player and mpv, prevents idle during media playback.
})

hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "^(.*[Ss]potify.*)$|^(.*[Cc]ider.*)$"}, --regex for Cider (apple music) and spotify players.
})
hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "^(.*brave-browser.*)$|^(.*zen.*)$" }, --browser catch all.
})
hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "^(.*[Jj]ellyfin.*)$" }, --jellyfin fullscreen support
})

--PIP Window rules, May remove when HyDE gets removed!
hl.window_rule({
    name = "hyde_picture_in_picture",
    match = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    tag = "+picture-in-picture",
    float = true,
    keep_aspect_ratio = true,
    move = "(monitor_w*0.73) (monitor_h*0.72)",
    size = "(monitor_w*0.25) (monitor_h*0.25)",
    pin = true,
})

--opacity rules = (active, inactive, fullscreen)
--browsers opacity rules
hl.window_rule({ opacity = "0.9 0.9 1", match = { class = "^(brave-browser)$" } })
hl.window_rule({ opacity = "0.9 0.9 1", match = { class = "^(zen)$" } })

--streaming clients
hl.window_rule({ opacity = "0.7 0.7 1", match = { class = "^([Cc]ider)$" } })
hl.window_rule({ opacity = "0.7 0.7 1", match = { class = "^([Ss]potify)$" } })
hl.window_rule({ opacity = "0.7 0.7 1", match = { class = "^(org\\.jellyfin\\.JellyfinDesktop)$" } })

--gaming clients & chats
hl.window_rule({ opacity = "0.7 0.7 1", match = { class = "^([Ss]team)$" } })
hl.window_rule({ opacity = "0.7 0.7 1", match = { class = "^(steamwebhelper)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(vesktop)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(discord)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(WebCord)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(ArmCord)$" } })

--file editors and terminals
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(code-oss)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^([Cc]ode)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(code-url-handler)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(code-insiders-url-handler)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(kitty)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(ghostty)$" } }) --might switch too..
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(org.kde.dolphin)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(org.kde.ark)$" } })

--qt and various settings / sys panels.
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(nwg-look)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(qt5ct)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(qt6ct)$" } })
hl.window_rule({ opacity = "0.8 0.8 1", match = { class = "^(kvantummanager)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(org.pulseaudio.pavucontrol)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(blueman-manager)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(nm-applet)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(nm-connection-editor)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(hyprpolkitagent)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(org.freedesktop.impl.portal.desktop.gtk)$" } })
hl.window_rule({ opacity = "0.8 0.7 1", match = { class = "^(org.freedesktop.impl.portal.desktop.hyprland)$" } })

--misc apps that did not fit anywhere else. (all from HyDE, likely to remove due to never using.)
hl.window_rule({ opacity = "0.9 0.9", match = { class = "^(com.github.rafostar.Clapper)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(com.github.tchx84.Flatseal)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(hu.kramo.Cartridges)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(com.obsproject.Studio)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(gnome-boxes)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(app.drey.Warp)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(net.davidotek.pupgui2)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(yad)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(Signal)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(io.github.alainm23.planify)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(io.gitlab.theevilskeleton.Upscaler)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(com.github.unrud.VideoDownloader)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(io.gitlab.adhami3310.Impression)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(io.missioncenter.MissionCenter)$" } })
hl.window_rule({ opacity = "0.8 0.8", match = { class = "^(io.github.flattool.Warehouse)$" } })


--Floating apps
hl.window_rule({ float = true, match = { class = "^(Signal)$" } })
hl.window_rule({ float = true, match = { class = "^(com.github.rafostar.Clapper)$" } })
hl.window_rule({ float = true, match = { class = "^(app.drey.Warp)$" } })
hl.window_rule({ float = true, match = { class = "^(net.davidotek.pupgui2)$" } })
hl.window_rule({ float = true, match = { class = "^(yad)$" } })
hl.window_rule({ float = true, match = { class = "^(eog)$" } })
hl.window_rule({ float = true, match = { class = "^(io.github.alainm23.planify)$" } })
hl.window_rule({ float = true, match = { class = "^(io.gitlab.theevilskeleton.Upscaler)$" } })
hl.window_rule({ float = true, match = { class = "^(com.github.unrud.VideoDownloader)$" } })
hl.window_rule({ float = true, match = { class = "^(io.gitlab.adhami3310.Impression)$" } })
hl.window_rule({ float = true, match = { class = "^(io.missioncenter.MissionCenter)$" } })
hl.window_rule({ float = true, match = { title = "^(Friends List)$" } }) --steam
hl.window_rule({ float = true, match = { title = "^(Steam Settings)$" } }) --steam

--Gaming fixes
--confine_pointer requires the application report content = "game" which proton does do correctly. if not, then wilkl require regex.
hl.window_rule({
    confine_pointer = true,
    match = { content = "game", fullscreen = true },
})
-- allow tearing for fullscreen games (lower latency).
-- **requires general:allow_tearing = true in general.lua.**
hl.window_rule({
    immediate = true,
    match = { content = "game", fullscreen = true },
})

--Layer Rules, Rofi Focused. All from HyDE
hl.layer_rule({ blur = true,         match = { namespace = "rofi" } })
hl.layer_rule({ ignore_alpha = 0,    match = { namespace = "rofi" } })

hl.layer_rule({ blur = true,         match = { namespace = "notifications" } })
hl.layer_rule({ ignore_alpha = 0,    match = { namespace = "notifications" } })

hl.layer_rule({ blur = true,         match = { namespace = "swaync-notification-window" } })
hl.layer_rule({ ignore_alpha = 0,    match = { namespace = "swaync-notification-window" } })

hl.layer_rule({ blur = true,         match = { namespace = "swaync-control-center" } })
hl.layer_rule({ ignore_alpha = 0,    match = { namespace = "swaync-control-center" } })

hl.layer_rule({ blur = true,         match = { namespace = "logout_dialog" } })

