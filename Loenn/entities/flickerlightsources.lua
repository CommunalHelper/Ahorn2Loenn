local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local light = {}

light.name = "ContortHelper/FlickerLightSource"
light.depth = 0
light.texture = "ahorn/muntheory/contorthelper/flickerlightsource"
light.placements = {
    name = "default",
    data = {
        color = "White",
        alpha = 1.0,
        radius = 48.0,
        startFade = 24,
        endFade = 48,
        durationOn = 1.0,
        durationOff = 1.0,
        startOn = "True"
    }
}

light.fieldInformation = {
    inverted = {
        options = {
            "True",
            "False",
            "Random"
        },
        editable = false
    },
    color = {
        allowXNAColors = true,
        fieldType = "color"
    }
}

light.nodeLimits = {1, 1}

local lightPath = {}

lightPath.name = "ContortHelper/FlickerLightSourcePath"
lightPath.depth = 0
lightPath.texture = "ahorn/muntheory/contorthelper/flickerlightsourcepath"
lightPath.placements = {
    name = "default",
    data = {
        color = "White",
        alpha = 1.0,
        radius = 48.0,
        startFade = 24,
        endFade = 48,
        durationOn = 1.0,
        durationOff = 1.0,
        moveEaser = "CubeInOut",
        moveSpeed = 1.181818,
        startOn = "False"
    }
}

lightPath.fieldInformation = {
    startOn = {
        options = {
            "True",
            "False",
            "Random"
        },
        editable = false
    },
    color = {
        allowXNAColors = true,
        fieldType = "color"
    },
    moveEaser = {
        options = contorthelper.easers
    }
}

lightPath.nodeLimits = {1, 1}

return {
    light,
    lightPath
}