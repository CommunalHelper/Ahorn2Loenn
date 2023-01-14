local clearEffect = {}

clearEffect.name = "ContortHelper/ClearCustomEffectsTrigger"
clearEffect.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

local customEffect = {}

customEffect.name = "ContortHelper/CustomEffectTrigger"
customEffect.placements = {
    {
        name = "default",
        data = {
            effect = "Light-Beams",
            add = true,
            epileptic = false,
            shaky = false,
            neededFlags = "",
            flagsAfterInvoke = "",
            delay = 0.0,
            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    },    
    {
        name = "default",
        data = {
            effect = "Multiverse",
            add = true,
            epileptic = false,
            shaky = false,
            neededFlags = "",
            flagsAfterInvoke = "",
            delay = 0.0,
            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    },
    {
        name = "default",
        data = {
            effect = "Rainbow",
            add = true,
            epileptic = false,
            shaky = false,
            neededFlags = "",
            flagsAfterInvoke = "",
            delay = 0.0,
            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    },
    {
        name = "default",
        data = {
            effect = "",
            add = true,
            epileptic = false,
            shaky = false,
            neededFlags = "",
            flagsAfterInvoke = "",
            delay = 0.0,
            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    }
}

return {
	clearEffect,
	customEffect
}