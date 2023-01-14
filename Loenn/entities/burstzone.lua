local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local burstZone = {}

burstZone.name = "ContortHelper/BurstZone"
burstZone.placements = {
    {
        name = "default",
        data = {
            width = 8,
            height = 8,
            alphaMinimum = 1.0,
            alphaMaximum = 1.0,
            coroutineDurationMinimum = 0.01,
            coroutineDurationMaximum = 0.01,
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
            needed = false
        }
    },
    {
        name = "heavy",
        data = {
            width = 8,
            height = 8,
            alphaMinimum = 1.0,
            alphaMaximum = 1.0,
            coroutineDurationMinimum = 0.01,
            coroutineDurationMaximum = 0.01,
            burstDurationMinimum = 2.0,
            burstDurationMaximum = 2.0,
            amountPerUpdate = 1,
            alphaEaser = "CubeInOut",
            radiusEaser = "CubeInOut",
            radiusToMinimum = 0.0,
            radiusToMaximum = 150.0,
            radiusFromMinimum = 0.0,
            radiusFromMaximum = 150.0,
            textures = "util/displacementcircle",
            needed = false
        }
    },
    {
        name = "light",
        data = {
            width = 8,
            height = 8,
            alphaMinimum = 1.0,
            alphaMaximum = 1.0,
            coroutineDurationMinimum = 0.01,
            coroutineDurationMaximum = 0.01,
            burstDurationMinimum = 1.0,
            burstDurationMaximum = 1.0,
            amountPerUpdate = 1,
            alphaEaser = "CubeInOut",
            radiusEaser = "CubeInOut",
            radiusToMinimum = 10.0,
            radiusToMaximum = 10.0,
            radiusFromMinimum = 0.0,
            radiusFromMaximum = 0.0,
            textures = "util/displacementcircle",
            needed = false
        }
    }
}

burstZone.fieldInformation = {
    alphaEaser = {
        options = contorthelper.easers,
        editable = false
    },
    radiusEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

burstZone.fillColor = {0.4, 0.6, 1.0, 0.4}
burstZone.borderColor = {0.5, 1.0, 1.0, 0.6}

return burstZone