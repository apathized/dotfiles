--[[    _                   __ 
       (_)___  ____  __  __/ /_
      / / __ \/ __ \/ / / / __/
     / / / / / /_/ / /_/ / /_  
    /_/_/ /_/ .___/\__,_/\__/  
           /_/                 
]]--

--Keyboard and Mouse settings, No keybinds here. 
--https://wiki.hypr.land/Configuring/Basics/Variables/#input

hl.config({
    input = {
        --keyboard (Keychron C2 Pro)
        kb_layout = "us",
        kb_model = "pc104", --my keyboard, run cat /usr/share/X11/xkb/rules/evdev.lst to see options
        numlock_by_default = true,
        repeat_rate = 40, --faster kb scroll.
        repeat_delay = 275, --delay before kb scroll
        --Mouse (GPro Wireless)
        accel_profile = "flat",
        follow_mouse = 1,
        sensitivity = 0, --Global sensitivity, adjust between -1 and 1 (float)
    }
})