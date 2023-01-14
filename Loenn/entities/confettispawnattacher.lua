local enums = require("consts.object_depths")
local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local confetti = {}

confetti.name = "ContortHelper/ConfettiSpawnAttacher"
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
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        attachTo = "Player",
        colors = "White",
        height = 8,
        width = 8
    }
}

confetti.nodeLimits = {0, 1}

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

confetti.fillColor = {0.5, 1.0, 0.3, 0.4}
confetti.borderColor = {0.6, 1.0, 0.4, 0.6}

return confetti