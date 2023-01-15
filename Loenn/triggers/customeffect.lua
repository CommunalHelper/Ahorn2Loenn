local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

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
        name = "lightbeams",
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
        name = "multiverse",
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
        name = "rainbow",
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

customEffect.fieldInformation = {
    effect = {
        options = contorthelper.effects,
        editable = true
    }
}

return {
	clearEffect,
	customEffect
}
