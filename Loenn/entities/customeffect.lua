local effect = {}

effect.name = "ContortHelper/CustomEffectController"
effect.depth = 0
effect.texture = "ahorn/muntheory/contorthelper/customeffectcontroller"
effect.placements = {
    {
        name = "default",
        data = {
            effect = "Light-Beams",
            epileptic = false,
            shaky = false
        }
    },    
    {
        name = "default",
        data = {
            effect = "Rainbow",
            epileptic = false,
            shaky = false
        }
    },
    {
        name = "default",
        data = {
            effect = "Multiverse",
            epileptic = false,
            shaky = false
        }
    },
    {
        name = "default",
        data = {
            effect = "",
            epileptic = false,
            shaky = false
        }
    }
}

return effect