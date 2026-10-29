--[[
▐▓▓▓▓▓▌▐▓▌ ▐▓▌▐▓▓▓▓▌▐▓▌▐▓▌▐▓▓▓▓▓▌▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
  ▐▓▌  ▐▓▓▌▐▓▌▐▓▌▐▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▌      ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
  ▐▓▌  ▐▓▐▓▐▓▌▐▓▓▓▓▌▐▓▌▐▓▌  ▐▓▌  ▐▓▓▓▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▓▓▓▌
  ▐▓▌  ▐▓▌▐▓▓▌▐▓▌   ▐▓▌▐▓▌  ▐▓▌     ▐▓▌   ▐▓▌   ▐▓▌▐▓▌▐▓▌▐▓▌
▐▓▓▓▓▓▌▐▓▌ ▐▓▌▐▓▌   ▐▓▓▓▓▌  ▐▓▌  ▐▓▓▓▓▌▐▓▌▐▓▓▓▓▌▐▓▓▓▓▌▐▓▌▐▓▌
Created by Ryan M

Notes:
	This controls Keyboard/Mouse Profiles, rather then Keybindings. (Most of these are defaults.)
	If you are on Logitech gear, I highly suggest using https://github.com/pwr-Solaar/Solaar for configuration!
]]--

hl.config({
    input = {
        --keyboard (Keychron C2 Pro)
        kb_layout = "us",
        kb_model = "pc104", --my keyboard, run cat /usr/share/X11/xkb/rules/evdev.lst to see options
        numlock_by_default = true,
        repeat_rate = 40, --faster kb scroll.
        repeat_delay = 315, --delay before kb scroll
        
        --Mouse (GPro Wireless)
        accel_profile = "flat",
        follow_mouse = 1,
        sensitivity = 0, --Global sensitivity, adjust between -1 and 1 (float)
    }
})
