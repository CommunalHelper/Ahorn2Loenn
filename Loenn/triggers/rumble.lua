local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")
local rumble = {}

rumble.name = "ContortHelper/RumbleTrigger"
rumble.placements = {
    name = "default",
    data = {
        rumbleStrength = "Low",
        rumbleLength = "Short",
        specificStrength = 0.0,
        specificLength = 0.0,
        needed = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

rumble.fieldInformation = {
    rumbleStrength = {
        options = contorthelper.rumblestrength,
        editable = false
    },
    rumbleLength = {
        options = contorthelper.rumblelength,
        editable = false
    }
}


return rumble
