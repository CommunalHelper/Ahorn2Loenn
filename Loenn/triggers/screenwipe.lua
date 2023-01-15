local wipe = {}

wipe.name = "ContortHelper/ScreenWipeTrigger"
wipe.placements = {
    {
        name = "default",
        data = {
            wipeIn = false,
            hiresSnow = false,
            needed = false,
            oneUse = false,
            persistent = false,
            delay = 0.0,
            neededFlags = "",
            flagsAfterInvoke = "",
            occurOnEnter = true
        }
    },    
    {
        name = "wipein",
        data = {
            wipeIn = true,
            hiresSnow = false,
            needed = true,
            oneUse = false,
            persistent = false,
            delay = 0.0,
            neededFlags = "",
            flagsAfterInvoke = "",
            occurOnEnter = true
        }
    }
}

local wipeModify = {}

wipeModify.name = "ContortHelper/ScreenWipeModifierTrigger"
wipeModify.placements = {
    name = "default",
    data = {
        color = "white",
        oneUse = false,
        persistent = false,
        occurOnEnter = false,
        delay = 0.0,
        neededFlags = "",
        flagsAfterInvoke = ""
    } 
}

wipeModify.fieldInformation = {
    color = {
        allowXNAColors = true,
        fieldType = "color",
    }
}

return {
    wipe,
    wipeModify
}
