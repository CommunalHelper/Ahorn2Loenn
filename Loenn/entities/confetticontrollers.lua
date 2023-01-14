local enums = require("consts.object_depths")
local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local confetti = {}

confetti.name = "ContortHelper/ConfettiSpawnAttacherController"
confetti.depth = 0
confetti.texture = "ahorn/muntheory/contorthelper/confetticontroller"
confetti.placements = {
    name = "default",
    data = {
        amount = 30,
        amountPerUpdate = 1,
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
        confettiAllAtOnce = false,
        attachTo = "Player",
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
    },
    attachTo = {
        options = contorthelper.attaches
    }
}

local confettiSpawnZone = {}

confettiSpawnZone.name = "ContortHelper/ConfettiSpawnZoneController"
confettiSpawnZone.depth = 0
confettiSpawnZone.texture = "ahorn/muntheory/contorthelper/confetticontroller"
confettiSpawnZone.placements = {
    name = "default",
    data = {
        amount = 30,
        amountPerUpdate = 1,
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
        attachTo = "Player",
        colors = "White"
    }
}

confettiSpawnZone.fieldInformation = {
    colors = {
        allowXNAColors = true,
        fieldType = "color"
    },
    attachTo = {
        options = contorthelper.attaches
    }
}

return {
    confetti,
    confettiSpawnZone
}