local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local burst = {}

burst.name = "ContortHelper/BurstEffectTrigger"
burst.placements = {
    name = "default",
    data = {
        alpha = 1.0,
        delay = 0.0,
        burstDuration = 1.5,
        alphaEaser = "CubeInOut",
        radiusEaser = "CubeInOut",
        radiusTo = 50.0,
        radiusFrom = 50.0,
        texture = "util/displacementcircle",
        needed = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

burst.nodeLimits = {0, 1}

burst.fieldInformation = {
    alphaEaser = {
        options = contorthelper.easers,
        editable = false
    },
    radiusEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

return burst