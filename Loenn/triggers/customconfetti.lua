local enums = require("consts.object_depths")
local confetti = {}

confetti.name = "ContortHelper/CustomConfettiTrigger"
confetti.placements = {
    name = "default",
    data = {
        amount = 30,
        audio = "event:/game/07_summit/checkpoint_confetti",
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
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        colors = "White"
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
    }
}

return confetti