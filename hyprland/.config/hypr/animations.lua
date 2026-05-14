--[[               _                 __  _                 
      ____ _____  (_)___ ___  ____ _/ /_(_)___  ____  _____
     / __ `/ __ \/ / __ `__ \/ __ `/ __/ / __ \/ __ \/ ___/
    / /_/ / / / / / / / / / / /_/ / /_/ / /_/ / / / (__  ) 
    \__,_/_/ /_/_/_/ /_/ /_/\__,_/\__/_/\____/_/ /_/____/                                                         
]]--

--Cool Transition stuff happens here, if you plan on ricing start here!
--Planning to slowly retake control from HyDE. In Progress file. As of now, this is a ONE FOR ONE RIP of LimeFrenzy.
--https://hydeproject.pages.dev/
--https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/


hl.config({
    animations = {
        enabled = true,

    }
})

--curve definitions, experiment with wind vs overshot for window movements.
hl.curve("default",  { type = "bezier", points = { {.12, .92}, {.08, 1.0} } })
hl.curve("wind",     { type = "bezier", points = { {.12, .92}, {.08, 1.0} } })
hl.curve("overshot", { type = "bezier", points = { {.18, .95}, {.22, 1.03} } })
hl.curve("linear",   { type = "bezier", points = { {1, 1}, {1, 1} } })

--window movements
hl.animation({ leaf = "windows",     enabled = true, speed = 5,  bezier = "wind",     style = "popin 60%" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 6,  bezier = "overshot", style = "popin 60%" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 4,  bezier = "overshot", style = "popin 60%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4,  bezier = "overshot", style = "slide" })
hl.animation({ leaf = "layers",      enabled = true, speed = 4,  bezier = "default",  style = "popin" })


--fades
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeSwitch",  enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeShadow",  enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeDim",     enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "fadeLayers",  enabled = true, speed = 7,  bezier = "default" })


--others
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,  bezier = "overshot", style = "slidevert" }) --highly bouncy, may need to pull back.
hl.animation({ leaf = "border",      enabled = true, speed = 1,  bezier = "linear" }) --almost instant border highlight on focus. try 1 vs 2.
hl.animation({ leaf = "borderangle", enabled = true, speed = 24, bezier = "linear", style = "once" }) --was loop style, can be distracting as it slightly moves. 