local saveDataBoolean = {}

saveDataBoolean.name = "ContortHelper/SaveDataBooleanStorageTrigger"
saveDataBoolean.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = false,
        removeKey = false,
        index = ""
    }
}

local saveDataFloat = {}

saveDataFloat.name = "ContortHelper/SaveDataFloatStorageTrigger"
saveDataFloat.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = 0.0,
        removeKey = false,
        index = ""
    }
}

local saveDataInteger = {}

saveDataInteger.name = "ContortHelper/SaveDataIntegerStorageTrigger"
saveDataInteger.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = 0,
        removeKey = false,
        index = ""
    }
}

local saveDataString = {}

saveDataString.name = "ContortHelper/SaveDataStringStorageTrigger"
saveDataString.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = "",
        removeKey = false,
        index = ""
    }
}

local sessionBoolean = {}

sessionBoolean.name = "ContortHelper/SessionBooleanStorageTrigger"
sessionBoolean.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = false,
        removeKey = false,
        index = ""
    }
}

local sessionFloat = {}

sessionFloat.name = "ContortHelper/SessionFloatStorageTrigger"
sessionFloat.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = 0.0,
        removeKey = false,
        index = ""
    }
}

local sessionInteger = {}

sessionInteger.name = "ContortHelper/SessionIntegerStorageTrigger"
sessionInteger.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = 0,
        removeKey = false,
        index = ""
    }
}

local sessionString = {}

sessionString.name = "ContortHelper/SessionStringStorageTrigger"
sessionString.placements = {
    name = "default",
    data = {
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
        state = "",
        removeKey = false,
        index = ""
    }
}

return {
    saveDataBoolean,
    saveDataFloat,
    saveDataInteger,
    saveDataString,
    sessionBoolean,
    sessionFloat,
    sessionInteger,
    sessionString
}