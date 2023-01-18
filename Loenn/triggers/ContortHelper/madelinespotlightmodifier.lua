local contorthelper = require("mods").requireFromPlugin("libraries.ContortHelper.contorthelper")

local spotlight = {}

spotlight.name = "ContortHelper/MadelineSpotlightModifierTrigger"
spotlight.placements = {
    name = "default",
    data = {
        alpha = 1.0,
        delay = 0.0,
        duration = 1.0,
        endFade = 64,
        startFade = 32,
        color = "White",
        easer = "CubeInOut",
        neededFlags = "",
        flagsAfterInvoke = "",
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

spotlight.fieldInformation = {
    color = {
        allowXNAColors = true,
        fieldType = "color"
    },
    spotlightLength = {
        options = contorthelper.easers,
        editable = false
    }
}

return spotlight