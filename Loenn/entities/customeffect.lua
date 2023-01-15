local customeffect = {}

customeffect.name = "ContortHelper/CustomEffectController"
customeffect.depth = 0
customeffect.texture = "ahorn/muntheory/contorthelper/customeffectcontroller"
customeffect.placements = {
    {
        name = "lightbeam",
        data = {
            effect = "Light-Beams",
            epileptic = false,
            shaky = false
        }
    },    
    {
        name = "rainbow",
        data = {
            effect = "Rainbow",
            epileptic = false,
            shaky = false
        }
    },
    {
        name = "multiverse",
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

return customeffect
