--[[               __         
       _______  __/ /__  _____
      / ___/ / / / / _ \/ ___/
     / /  / /_/ / /  __(__  ) 
    /_/   \__,_/_/\___/____/                    
]]--

--Window and Layer rules, custom opacities on a per-program basis to match aesthetics.
--https://wiki.hypr.land/Configuring/Basics/Window-Rules/

--idle prevention on video playback
hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "mpv|vlc|[Ss]potify|[Cc]ider|brave-browser|zen|[Jj]ellyfin" }, --regex for various audio, video and browser playback.
})
hl.window_rule({
    idle_inhibit = "fullscreen",
    match = { class = "org.jellyfin.JellyfinDesktop" }, --jellyfin fullscreen support
})




--opacity rules = (active, inactive, fullscreen)
--browsers opacity rules
hl.window_rule({
    opacity = "0.98 override 0.9 override 1",
    match = { class = "brave-browser" },
})
hl.window_rule({
    opacity = "0.95 override 0.9 override 1",
    match = { class = "zen" },
})

--streaming clients
hl.window_rule({
    opacity = "0.95 override 0.90 override 1",
    match = { class = "Cider" },
})
hl.window_rule({
    opacity = "1 override 0.90 override 1",
    match = { class = "org.jellyfin.JellyfinDesktop" },
})

--gaming clients & chats
hl.window_rule({ opacity = "0.95 0.9 1", match = { class = "^steam$" } })
hl.window_rule({ opacity = "0.95 0.7 1", match = { class = "^(steamwebhelper)$" } })
hl.window_rule({ opacity = "0.9 0.8", match = { class = "^(discord)$" } })
hl.window_rule({ opacity = "0.9 0.8", match = { class = "^(WebCord)$" } })


--file editors and terminals
hl.window_rule({ opacity = ".98 override 0.85 1", match = { class = "^(code-oss)$" } })
hl.window_rule({ opacity = "0.95 0.85 1", match = { class = "^([Cc]ode)$" } })
hl.window_rule({ opacity = "0.98 0.85 1", match = { class = "^(code-url-handler)$" } })
hl.window_rule({ opacity = "0.95 0.85 1", match = { class = "^(code-insiders-url-handler)$" } })
hl.window_rule({ opacity = "0.98 override 0.8 1", match = { class = "^(kitty)$" } })
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

