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
        options = {
            "Climb",
            "Low",
            "Medium",
            "Strong"
        },
        editable = false
    },
    rumbleLength = {
        options = {
            "FullSecond",
            "TwoSeconds",
            "Short",
            "Medium",
            "Long"
        },
        editable = false
    }
}

return rumble