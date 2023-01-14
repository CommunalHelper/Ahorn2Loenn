local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local lightningStrikes = {}

lightningStrikes.name = "ContortHelper/LightningStrikesController"

lightningStrikes.placements = {
    name = "default",
    data = {
        chanceOfPlayingAudio = 1.0,
        audioEvents = "event:/new_content/game/10_farewell/lightning_strike",

        shakeMinimum = 0.25,
        shakeMaximum = 0.35,
        amountMinimum = 3,
        amountMaximum = 6,
        depth = -8500,

        flashColors = "ffffff,ffffff,ffffff",
        flashColorAlphaMinimum = 0.6,
        flashColorAlphaMaximum = 0.8,

        chanceOfUsingFlash = 1.0,
        chanceOfFlashOverPlayer = 0.1,

        secondsToTry = 3.0,
        chanceOfOccurring = 0.5,

        lightningColors = "ffffff,ffffff,ffffff",
        lightningColorAlphaMinimum = 0.8,
        lightningColorAlphaMaximum = 1.0,
        lightningThicknessMinimum = 0.8,
        lightningThicknessMaximum = 1.2,
        lightningSpeedMinimum = 0.005,
        lightningSpeedMaximum = 0.02,

        needed = false
    }
}

lightningStrikes.fieldInformation = {
    amountMinimum = {
        fieldType = "integer",
    },
    amountMaximum = {
        fieldType = "integer",
    },
    depth = {
        fieldType = "integer",
        options = contorthelper.depths
    },
    flashColors = {
        allowXNAColors = true,
        fieldType = "color"
    },
    lightningColors = {
        allowXNAColors = true,
        fieldType = "color"
    }
}

lightningStrikes.texture = contorthelper.lightningstrikescontroller

return lightningStrikes