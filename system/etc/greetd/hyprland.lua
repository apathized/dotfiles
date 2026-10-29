-- Greeter session: OLED only, runs ReGreet, then exits.
hl.monitor({ output = "DP-1", mode = "2560x1440@240", position = "0x0", scale = 1.0 })
hl.monitor({ output = "DP-3", disabled = true })

-- Keep the login on the OLED even if it reconnects
hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true })

hl.on("hyprland.start", function()
    hl.exec_cmd("sleep 2; regreet; hyprctl dispatch 'hl.dsp.exit()'")
end)

hl.config({
    misc = {
        disable_hyprland_logo           = true,
        disable_splash_rendering        = true,
        disable_hyprland_guiutils_check = true,
    },
})
