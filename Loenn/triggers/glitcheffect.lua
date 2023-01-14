local enums = require("consts.celeste_enums")
local glitch = {}

glitch.name = "ContortHelper/GlitchEffectTrigger"
glitch.placements = {
    {
        name = "default",
        data = {
            valueFrom = 0.0,
            valueTo = 0.35,
            position = "NoEffect",
            oneUse = false,
            persistent = false
        }
    },    
    {
        name = "heavy",
        data = {
            valueFrom = 0.0,
            valueTo = 0.8,
            position = "NoEffect",
            oneUse = false,
            persistent = false
        }
    },
    {
        name = "light",
        data = {
            valueFrom = 0.0,
            valueTo = 0.1,
            position = "NoEffect",
            oneUse = false,
            persistent = false
        }
    }
}

glitch.fieldInformation = {
    position = {
        options = enums.trigger_position_modes,
        editable = false
    }
}

return glitch