local enums = require("consts.object_depths")
local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local confetti = {}

confetti.name = "ContortHelper/ConfettiSpawner"
confetti.depth = 0
confetti.texture = "ahorn/muntheory/contorthelper/confettispawner"
confetti.placements = {
    name = "default",
    data = {
        amount = 30,
        audio = "event:/game/07_summit/checkpoint_confetti",
        delaySpawnMaximum = 0.25,
        delaySpawnMinimum = 0.25,
        durationMaximum = 4.0,
        durationMinimum = 2.0,
        fallSpeedMaximum = 20.0,
        fallSpeedMinimum = 20.0,
        fallSpreadMaximum = 0.0,
        fallSpreadMinimum = 0.0,
        offsetXMaximum = 3.0,
        offsetXMinimum = -3.0,
        offsetYMaximum = 3.0,
        offsetYMinimum = -3.0,
        Rotation = 4.0,
        textures = "particles/confetti",
        depth = -10000,
        colors = "White"
    }
}

confetti.fieldInformation = {
    depth = {
        options = enums.depths,
        editable = true
    },
    colors = {
        allowXNAColors = true,
        fieldType = "color"
    }
}

local confettiPath = {}

confettiPath.name = "ContortHelper/ConfettiSpawner"
confettiPath.depth = 0
confettiPath.texture = "ahorn/muntheory/contorthelper/confettispawnerpath"
confettiPath.placements = {
    name = "default",
    data = {
        amount = 30,
        audio = "event:/game/07_summit/checkpoint_confetti",
        delaySpawnMaximum = 0.25,
        delaySpawnMinimum = 0.25,
        durationMaximum = 4.0,
        durationMinimum = 2.0,
        fallSpeedMaximum = 20.0,
        fallSpeedMinimum = 20.0,
        fallSpreadMaximum = 0.0,
        fallSpreadMinimum = 0.0,
        offsetXMaximum = 3.0,
        offsetXMinimum = -3.0,
        offsetYMaximum = 3.0,
        offsetYMinimum = -3.0,
        Rotation = 4.0,
        textures = "particles/confetti",
        depth = -10000,
        colors = "White",
        moveEaser = "CubeInOut",
        pathSpeed = 1.181818
    }
}

confetti.fieldInformation = {
    depth = {
        options = enums.depths,
        editable = true
    },
    colors = {
        allowXNAColors = true,
        fieldType = "color"
    },
    moveEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

confettiPath.nodeLimits = {1, 1}

return {
    confetti,
    confettiPath
}