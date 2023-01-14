local lightning = {}

lightning.name = "ContortHelper/LightningStrikeTrigger"
lightning.placements = {
    name = "default",
    data = {
        audioEvent = "event:/new_content/game/10_farewell/lightning_strike",
        shake = 0.3,
        amount = 2,
        depth = -8500,
        flashColor = "White",
        flashColorAlpha = "0.6",
        useFlash = true,
        flashOverPlayer = true,
        lightningColors = "ffffff,ffffff,ffffff",
        lightingColorAlpha = 0.9,
        lightningThickness = 1.0,
        lightningSpeed = 0.01,
        needed = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

lightning.fieldInformation = {
    flashColor = {
        allowXNAColors = true,
        fieldType = "color"
    }
}

return lightning