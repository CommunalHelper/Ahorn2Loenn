local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local light = {}

light.name = "ContortHelper/ColorLerpLightSource"
light.depth = 0
light.texture = "ahorn/muntheory/contorthelper/colorlerplightsource"
light.placements = {
    name = "default",
    data = {
        radius = 48.0,
        startFade = 24,
        endFade = 48,
        colorA = "White",
        colorB = "White",
        colorEaser = "CubeInOut",
        colorSpeed = 1.0,
        inverted = "false"
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
    colorA = {
        allowXNAColors = true,
        fieldType = "color"
    },
    colorB = {
        allowXNAColors = true,
        fieldType = "color"
    },
    colorEaser = {
        options = contorthelper.easers
    }
}

local lightPath = {}

lightPath.name = "ContortHelper/ColorLerpLightSourcePath"
lightPath.depth = 0
lightPath.texture = "ahorn/muntheory/contorthelper/colorlerplightsourcepath"
lightPath.placements = {
    name = "default",
    data = {
        radius = 48.0,
        startFade = 24,
        endFade = 48,
        colorA = "White",
        colorB = "White",
        colorEaser = "CubeInOut",
        colorSpeed = 1.0,
        moveSpeed = 1.181818,
        moveEaser = "CubeInOut",
        inverted = "false"
    }
}

lightPath.fieldInformation = {
    inverted = {
        options = {
            "True",
            "False",
            "Random"
        },
        editable = false
    },
    colorA = {
        allowXNAColors = true,
        fieldType = "color"
    },
    colorB = {
        allowXNAColors = true,
        fieldType = "color"
    },
    colorEaser = {
        options = contorthelper.easers
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