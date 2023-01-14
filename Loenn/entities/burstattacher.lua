local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local burst = {}

burst.name = "ContortHelper/BurstAttacher"
burst.placements = {
    name = "default",
    data = {
        alphaMinimum = 1.0,
        alphaMaximum = 1.0,
        coroutineDurationMinimum = 0.25,
        coroutineDurationMaximum = 0.25,
        burstDurationMinimum = 1.5,
        burstDurationMaximum = 1.5,
        amountPerUpdate = 1,
        alphaEaser = "CubeInOut",
        radiusEaser = "CubeInOut",
        radiusToMinimum = 0.0,
        radiusToMaximum = 50.0,
        radiusFromMinimum = 0.0,
        radiusFromMaximum = 50.0,
        textures = "util/displacementcircle",
        needed = false,
        attachTo = "Player",
        width = 8,
        height = 8
    }
}

burst.fieldInformation = {
    alphaEaser = {
        options = contorthelper.easers,
        editable = false
    },
    radiusEaser = {
        options = contorthelper.easers,
        editable = false
    },
    attachTo = {
        options = contorthelper.attaches
    }
}

burst.fillColor = {0.4, 0.6, 1.0, 0.4}
burst.borderColor = {0.5, 1.0, 1.0, 0.6}

return burst