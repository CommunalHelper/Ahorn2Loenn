local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local burst = {}

burst.name = "ContortHelper/BurstAttacherController"
burst.depth = 0
burst.texture = "ahorn/muntheory/contorthelper/burstcontroller"
burst.placements = {
    {
        name = "default",
        data = {
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
            needed = false,
            attachTo = "Player",
            allAtOnce = false
        }
    },
    {
        name = "heavy",
        data = {
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
            needed = false,
            attachTo = "Player",
            allAtOnce = false
        }
    },
    {
        name = "light",
        data = {
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
            needed = false,
            attachTo = "Player",
            allAtOnce = false
        }
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

local burstZone = {}

burstZone.name = "ContortHelper/BurstZoneController"
burstZone.depth = 0
burstZone.texture = "ahorn/muntheory/contorthelper/burstcontroller"
burstZone.placements = {
    {
        name = "default",
        data = {
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

return {
    burst,
    burstZone
}