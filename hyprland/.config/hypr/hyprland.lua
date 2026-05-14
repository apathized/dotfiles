--[[                     __  __         _          __                     __                __                    _____      
      ____ _____  ____ _/ /_/ /_  __  _( )_____   / /_  __  ______  _____/ /___ _____  ____/ /  _________  ____  / __(_)___ _
     / __ `/ __ \/ __ `/ __/ __ \/ / / /// ___/  / __ \/ / / / __ \/ ___/ / __ `/ __ \/ __  /  / ___/ __ \/ __ \/ /_/ / __ `/
    / /_/ / /_/ / /_/ / /_/ / / / /_/ / (__  )  / / / / /_/ / /_/ / /  / / /_/ / / / / /_/ /  / /__/ /_/ / / / / __/ / /_/ / 
    \__,_/ .___/\__,_/\__/_/ /_/\__, / /____/  /_/ /_/\__, / .___/_/  /_/\__,_/_/ /_/\__,_/   \___/\____/_/ /_/_/ /_/\__, /  
        /_/                    /____/                /____/_/                                                       /____/   
]]--

--Was originally based on HyDE, somwhat forking their config after the hyprland lua switch. Highly recommend for new users,
--Its where I started and learned from!
--https://hydeproject.pages.dev/


--Include List, in order of load states
--When in doubt: https://wiki.hypr.land/Configuring/Start/

--Setup / Shared
require("variables")
require("env")

-- Hardware / IO
require("monitors")
require("input")

--Aesthetics / Animations
require("general")
require("decoration")
require("animations")
require("misc")

-- Keybindings / Other Behaviour
require("rules")
require("keybinds")
require("autostart")

