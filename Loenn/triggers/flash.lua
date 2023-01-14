local flash = {}

flash.name = "ContortHelper/FlashTrigger"
flash.placements = {
    name = "default",
    data = {
        colorAlpha = 0.7,
        color = "White",
        overPlayer = false,
        needed = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

flash.fieldInformation = {
    color = {
        allowXNAColors = true,
        fieldType = "color",
    }
}

return flash