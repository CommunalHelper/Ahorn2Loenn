local glitch = {}

glitch.name = "ContortHelper/GlitchEffectController"
glitch.depth = 0
glitch.texture = "ahorn/muntheory/contorthelper/glitcheffectcontroller"
glitch.placements = {
    {
        name = "Default",
        data = {
            enterValue = 0.35,
            leaveValue = 0.0
        }
    },    
    {
        name = "Heavy",
        data = {
            enterValue = 0.8,
            leaveValue = 0.0
        }
    },
    {
        name = "Light",
        data = {
            enterValue = 0.1,
            leaveValue = 0.0
        }
    }
}

return glitch