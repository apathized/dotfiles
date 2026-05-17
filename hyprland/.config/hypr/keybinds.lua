--[[    __ __           __    _           ___                 
       / //_/__  __  __/ /_  (_)___  ____/ (_)___  ____ ______
      / ,< / _ \/ / / / __ \/ / __ \/ __  / / __ \/ __ `/ ___/
     / /| /  __/ /_/ / /_/ / / / / / /_/ / / / / / /_/ (__  ) 
    /_/ |_\___/\__, /_.___/_/_/ /_/\__,_/_/_/ /_/\__, /____/  
              /____/                            /____/        
]]--

--Keybindings, some Omarchy and HyDE mixed in together. Made for me and me only, recommend playing with this yourself!
--https://wiki.hypr.land/Configuring/Basics/Binds/
--https://wiki.hypr.land/Configuring/Basics/Dispatchers/

hl.bind(mainmod .."+ W", hl.dsp.window.close(), {description = "Close focused window"})
hl.bind("ALT + F4", hl.dsp.window.close(), {description = "Close focused window"})
hl.bind(mainmod .."+ Delete", hl.dsp.exec_cmd("hyde-shell logoutlaunch"), {description = "Logout Launcher"})
hl.bind(mainmod .."+ Q", hl.dsp.window.float({action = "toggle"}), {description = "Toggle window float"})
--play with this setting, fullscreen vs maximized.
hl.bind("SHIFT + F11", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}), {description = "Toggle focused fullscreen"})
hl.bind(mainmod .."+ SHIFT + L", hl.dsp.exec_cmd("hyde-shell lock-session"), {description = "Lock user session"})
hl.bind(mainmod .."+ L", hl.dsp.exec_cmd("hyde-shell window.pin"), {description = "Pin active window to screen"})
hl.bind("CONTROL + ALT + Delete", hl.dsp.exec_cmd("hyde-shell logoutlaunch"), {description = "Logout Screen"})
hl.bind(mainmod .."+ Control_R", hl.dsp.exec_cmd("hyde-shell waybar --hide"), {description = "Hide Waybar"})


--focus movement
hl.bind(mainmod .."+ Left", hl.dsp.focus({ direction = "l" }), {description = "Focus Left"})
hl.bind(mainmod .."+ Right", hl.dsp.focus({ direction = "r" }), {description = "Focus Right"})
hl.bind(mainmod .."+ Up", hl.dsp.focus({ direction = "u" }), {description = "Focus Upwards"})
hl.bind(mainmod .."+ Down", hl.dsp.focus({ direction = "d" }), {description = "Focus Downwards"})

--window movements across workspace
hl.bind(mainmod .."+ SHIFT + Left", hl.dsp.window.move({ direction = "l" }), {description = "Move Window to Left"})
hl.bind(mainmod .."+ SHIFT + Right", hl.dsp.window.move({ direction = "r" }), {description = "Move Window to Right"})
hl.bind(mainmod .."+ SHIFT + Up", hl.dsp.window.move({ direction = "u" }), {description = "Move Window Upwards"})
hl.bind(mainmod .."+ SHIFT + Down", hl.dsp.window.move({ direction = "d" }), {description = "Move Window Downwards"})

-- resize active window (hold to repeat)
hl.bind(mainmod .."+ CONTROL + SHIFT + Right", hl.dsp.window.resize({ x = 30,  y = 0,   relative = true }), { description = "Resize window right", repeating = true})
hl.bind(mainmod .."+ CONTROL + SHIFT + Left", hl.dsp.window.resize({ x = -30, y = 0,   relative = true }), { description = "Resize window left", repeating = true})
hl.bind(mainmod .."+ CONTROL + SHIFT + Up", hl.dsp.window.resize({ x = 0,   y = -30, relative = true }), { description = "Resize window up", repeating = true})
hl.bind(mainmod .."+ CONTROL + SHIFT + Down", hl.dsp.window.resize({ x = 0,   y = 30,  relative = true }), { description = "Resize window down", repeating = true})

--workspace swaps
hl.bind(mainmod .."+ CONTROL + Right", hl.dsp.focus({ workspace = "r+1" }), { description = "Next workspace"})
hl.bind(mainmod .."+ CONTROL + Left", hl.dsp.focus({ workspace = "r-1" }), { description = "Previous workspace"})
hl.bind(mainmod .."+ CONTROL + Down", hl.dsp.focus({ workspace = "empty" }), { description = "Next empty workspace"})
hl.bind(mainmod .."+ CONTROL + Up", hl.dsp.focus({ workspace = "previous" }), { description = "Last active workspace"})
hl.bind(mainmod .."+ T", hl.dsp.layout("togglesplit"), { description = "Toggle split direction"})
-- mouse resizing
hl.bind(mainmod .."+ mouse:272", hl.dsp.window.drag(),{ drag = true, description = "hold to move window"})
hl.bind(mainmod .."+ mouse:273", hl.dsp.window.resize(),{ drag = true, description = "hold to resize window"})
hl.bind(mainmod .."+ Z", hl.dsp.window.drag(), { drag = true, description = "hold to move window"})
hl.bind(mainmod .."+ X", hl.dsp.window.resize(), { drag = true,  description = "hold to resize window"})

-- mouse swaps
hl.bind(mainmod .."+ mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace", mouse = true })
hl.bind(mainmod .."+ mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace", mouse = true })


for i = 1, 10 do --rewritten the 20+ hyde binds thanks to claude
    local key = tostring(i % 10)
    -- focus workspace
    hl.bind(mainmod .. " + " .. key, hl.dsp.focus({ workspace = i }), { description = "Workspace " .. i })
    --move active window to workspace (and follow)
    hl.bind(mainmod .."+ SHIFT + " .. key, hl.dsp.window.move({workspace = i}), {description = "Move to workspace " .. i})
    --move active window to workspace silently (don't follow)
    hl.bind(mainmod .."+ ALT + " .. key, hl.dsp.window.move({workspace = i, follow = false}), {description = "Move to workspace " .. i .. " and do not follow."})
end


--apps and rofi
hl.bind(mainmod .."+ RETURN", hl.dsp.exec_cmd(terminal), {description = "Terminal"})
hl.bind(mainmod .."+ F", hl.dsp.exec_cmd(explorer), {description = "File Browser"})
hl.bind(mainmod .."+ B", hl.dsp.exec_cmd(browser), {description = "Web Browser"})
hl.bind(mainmod .. " + C", hl.dsp.exec_cmd(editor), { description = "Code editor" })
hl.bind("CONTROL + SHIFT + Escape", hl.dsp.exec_cmd("hyde-shell system.monitor"), {description = "System Monitor"})

--straight one for one translated from the HyDE file. will replace all of these eventually with my own.
hl.bind(mainmod .. " + SPACE",     hl.dsp.exec_cmd("pkill -x rofi || hyde-shell rofilaunch d"),     { description = "Application finder" })
hl.bind(mainmod .. " + TAB",       hl.dsp.exec_cmd("pkill -x rofi || hyde-shell rofilaunch w"),     { description = "Window switcher" })
hl.bind(mainmod .. " + SHIFT + E", hl.dsp.exec_cmd("pkill -x rofi || hyde-shell rofilaunch f"),     { description = "File finder" })
hl.bind(mainmod .. " + slash",     hl.dsp.exec_cmd("pkill -x rofi || hyde-shell keybinds_hint c"),  { description = "Keybinds hint" })
hl.bind(mainmod .. " + comma",     hl.dsp.exec_cmd("pkill -x rofi || hyde-shell emoji-picker"),     { description = "Emoji picker" })
hl.bind(mainmod .. " + period",    hl.dsp.exec_cmd("pkill -x rofi || hyde-shell glyph-picker"),     { description = "Glyph picker" })
hl.bind(mainmod .. " + V",         hl.dsp.exec_cmd("pkill -x rofi || hyde-shell cliphist -c"),      { description = "Clipboard" })
hl.bind(mainmod .. " + SHIFT + V", hl.dsp.exec_cmd("pkill -x rofi || hyde-shell cliphist"),         { description = "Clipboard manager" })
hl.bind(mainmod .. " + SHIFT + A", hl.dsp.exec_cmd("pkill -x rofi || hyde-shell rofiselect"),       { description = "Rofi launcher select" })

--audio incld. redundancy keys
--hl.bind(", F10", hl.dsp.exec_cmd("hyde-shell volumecontrol -o m"), {description = "F10 Toggle Audio Mute, locked = true, repeating = true "})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("hyde-shell volumecontrol -o m"), {description = "Toggle Audio Mute", locked = true, repeating = true })
--hl.bind(", F11", hl.dsp.exec_cmd("hyde-shell volumecontrol -o d"), {description = "Lower Volume, locked = true, repeating = true "})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("hyde-shell volumecontrol -o d"), {description = "Lower Volume", locked = true, repeating = true })
--hl.bind(", F12", hl.dsp.exec_cmd("hyde-shell volumecontrol -o i"), {description = "Raise Volume", locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("hyde-shell volumecontrol -o i"), {description = "Raise Volume", locked = true, repeating = true })
hl.bind("F20", hl.dsp.exec_cmd("hyde-shell volumecontrol -i m"), {description = "Mute Volume using custom Key"}) --Custom key binding for Keychron keyboard. Extra key bound to "F20"
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("hyde-shell volumecontrol -i m"), {description = "Mute Volume using custom Key"})
--media playback incld. redundancy keys
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {description = "Play and Pause A/V", locked = true})
--hl.bind(", F8", hl.dsp.exec_cmd("playerctl play-pause"), {description = "Play and Pause A/V", locked = true})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {description = "Previous A/V", locked = true })
--hl.bind(", F7", hl.dsp.exec_cmd("playerctl previous"), {description = "Previous A/V", locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {description = "Next A/V", locked = true })
--hl.bind(", F9", hl.dsp.exec_cmd("playerctl next"), {description = "Next A/V", locked = true })


--brightness keys incld. redundancy keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("hyde-shell brightnesscontrol i"), { description = "Increase brightness", locked = true, repeating = true})
--hl.bind(", F6", hl.dsp.exec_cmd("hyde-shell brightnesscontrol i"), { description = "Increase brightness", locked = true, repeating = true})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("hyde-shell brightnesscontrol d"), { description = "Decrease brightness", locked = true, repeating = true})
--hl.bind(", F5", hl.dsp.exec_cmd("hyde-shell brightnesscontrol d"), { description = "Decrease brightness", locked = true, repeating = true})

--screen grabber and color picker.
hl.bind(mainmod .."+ SHIFT + P", hl.dsp.exec_cmd("hyprpicker -an"), { description = "Color picker"})
hl.bind(mainmod .."+ P", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"), { description = "Snip screen"}) --grim > anything else
hl.bind(mainmod .."+ CONTROL + P", hl.dsp.exec_cmd("grim -g \"$(slurp -f)\" - | wl-copy"), { description = "Freeze and snip"})

--utilities
hl.bind(mainmod .."+ G", hl.dsp.exec_cmd("hyde-shell gamemode"), {description = "Hypr Game Mode"})

--wallpaper (HyDE — will be replaced in Phase 2)
hl.bind(mainmod .."+ ALT + Right", hl.dsp.exec_cmd("hyde-shell wallpaper -Gn"), { description = "Next wallpaper"})
hl.bind(mainmod .."+ ALT + Left", hl.dsp.exec_cmd("hyde-shell wallpaper -Gp"), { description = "Previous wallpaper"})