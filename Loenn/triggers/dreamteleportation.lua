-- Todo: Find a working way too add the rooms list to trigger options

local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")
local songs = require("consts.songs")
local ambience = require("consts.ambient_sounds")

local dreamTeleportationTriggerLevel1 = {}
local dreamTeleportationTriggerLevel2 = {}
local dreamTeleportationTriggerLevel3 = {}
local dreamTeleportationTriggerLevel4 = {}
local dreamTeleportationTriggerLevel5 = {}

dreamTeleportationTriggerLevel1.name = "ContortHelper/DreamTeleportationTriggerLevel1"
dreamTeleportationTriggerLevel2.name = "ContortHelper/DreamTeleportationTriggerLevel2"
dreamTeleportationTriggerLevel3.name = "ContortHelper/DreamTeleportationTriggerLevel3"
dreamTeleportationTriggerLevel4.name = "ContortHelper/DreamTeleportationTriggerLevel4"
dreamTeleportationTriggerLevel5.name = "ContortHelper/DreamTeleportationTriggerLevel5"

dreamTeleportationTriggerLevel1.nodeLimits = {0, 2}
dreamTeleportationTriggerLevel2.nodeLimits = {0, 2}
dreamTeleportationTriggerLevel3.nodeLimits = {0, 2}
dreamTeleportationTriggerLevel4.nodeLimits = {0, 2}
dreamTeleportationTriggerLevel5.nodeLimits = {0, 2}

dreamTeleportationTriggerLevel1.nodeLineRenderType = "fan"
dreamTeleportationTriggerLevel2.nodeLineRenderType = "fan"
dreamTeleportationTriggerLevel3.nodeLineRenderType = "fan"
dreamTeleportationTriggerLevel4.nodeLineRenderType = "fan"
dreamTeleportationTriggerLevel5.nodeLineRenderType = "fan"

dreamTeleportationTriggerLevel1.placements = {
    name = "default",
    data = {
        roomName = "",
        targetTag = "",

        startDuration = 0.0,

        spawnPointIsNearestSpawn = true,
        onlyInvokeWithGolden = false,
        useLegacyCamera = false,
        reloadRoom = true,
        noEffects = false,

        dreamDirection = "KeepPrevious",

        neededFlags = "",
        flagsAfterInvoke = "",

        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

dreamTeleportationTriggerLevel2.placements = {
    name = "default",
    data = {
        roomName = "",
        targetTag = "",

        transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

        startDuration = 0.0,

        glitchMultiplier = 0.25,
        startGlitchDuration = 0.1,
        endGlitchDuration = 0.3,

        screenShake = 0.0,

        changePlayerX = true,
        changePlayerY = true,

        spawnPointIsNearestSpawn = true,
        onlyInvokeWithGolden = false,
        useLegacyCamera = false,
        reloadRoom = true,
        noEffects = false,

        dreamDirection = "KeepPrevious",
        speedMultiplierX = 1.0,
        speedMultiplierY = 1.0,

        neededFlags = "",
        flagsAfterInvoke = "",

        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

dreamTeleportationTriggerLevel3.placements = {
    name = "default",
    data = {
        roomName = "",
        roomNameForGolden = "",
        targetTag = "",

        musicEvent = "",
        transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

        startDuration = 0.0,

        glitchMultiplier = 0.25,
        startGlitchDuration = 0.1,
        endGlitchDuration = 0.3,

        anxietyMultiplier = 0.25,
        startAnxietyDuration = 0.1,
        endAnxietyDuration = 0.3,

        screenShake = 0.0,

        changePlayerX = true,
        changePlayerY = true,

        spawnPointIsNearestSpawn = true,
        onlyInvokeWithGolden = false,
        useLegacyCamera = false,
        reloadRoom = true,
        noEffects = false,

        dreamDirection = "KeepPrevious",
        speedMultiplierX = 1.0,
        speedMultiplierY = 1.0,
        preserveMomentum = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

dreamTeleportationTriggerLevel4.placements = {
    name = "default",
    data = {
        roomName = "",
        roomNameForGolden = "",
        targetTag = "",

        musicEvent = "",
        transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

        startDuration = 0.0,

        glitchMultiplier = 0.25,
        startGlitchDuration = 0.1,
        endGlitchDuration = 0.3,

        anxietyMultiplier = 0.25,
        startAnxietyDuration = 0.1,
        endAnxietyDuration = 0.3,

        rumbleStrength = "None",
        rumbleLength = "None",

        screenShake = 0.0,

        useLightningStrike = false,
        flashColor = "White",
        flashColorAlpha = 0.6,
        flashOverPlayer = false,
        useFlash = false,

        useStartScreenWipe = false,
        useEndScreenWipe = false,

        changePlayerX = true,
        changePlayerY = true,

        spawnPointIsNearestSpawn = true,
        onlyInvokeWithGolden = false,
        useLegacyCamera = false,
        reloadRoom = true,
        noEffects = false,

        dreamDirection = "KeepPrevious",
        speedMultiplierX = 1.0,
        speedMultiplierY = 1.0,
        preserveMomentum = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

dreamTeleportationTriggerLevel5.placements = {
    name = "default",
    data = {
        roomName = "",
        roomNameForGolden = "",
        targetTag = "",

        musicEvent = "",
        ambienceEvent = "",
        startAudioEvent = "",
        transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",
        endAudioEvent = "",

        startDuration = 0.0,

        glitchMultiplier = 0.25,
        startGlitchDuration = 0.1,
        endGlitchDuration = 0.3,
        glitchDelay = 0.0,
        startGlitchEaser = "Linear",
        endGlitchEaser = "Linear",

        anxietyMultiplier = 0.25,
        startAnxietyDuration = 0.1,
        endAnxietyDuration = 0.3,
        anxietyDelay = 0.0,
        startAnxietyEaser = "Linear",
        endAnxietyEaser = "Linear",

        rumbleStrength = "None",
        rumbleLength = "None",

        specificRumbleStrength = 0.0,
        specificRumbleLength = 0.0,

        screenShake = 0.0,
        screenShakeDirectionX = 1.0,
        screenShakeDirectionY = 1.0,
        useDirectionalShake = false,

        screenFreeze = 0.0,

        useLightningStrike = false,
        flashColor = "White",
        flashColorAlpha = 0.6,
        flashOverPlayer = false,
        useFlash = false,

        useStartScreenWipe = false,
        useEndScreenWipe = false,

        changePlayerX = true,
        changePlayerY = true,
        changeCameraX = true,
        changeCameraY = true,

        rememberDashes = true,
        rememberFacing = true,

        spawnPointIsNearestSpawn = true,
        onlyInvokeWithGolden = false,
        useLegacyCamera = false,
        reloadRoom = true,
        noEffects = false,

        dreamDirection = "KeepPrevious",
        speedMultiplierX = 1.0,
        speedMultiplierY = 1.0,
        preserveMomentum = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

dreamTeleportationTriggerLevel1.fieldOrder = {
    "x", "y",
    "width", "height",
    "neededFlags", "flagsAfterInvoke"
}

dreamTeleportationTriggerLevel2.fieldOrder = {
    "x", "y",
    "width", "height",
    "transitionAudioEvent", "flagsAfterInvoke",
    "neededFlags"
}

dreamTeleportationTriggerLevel1.fieldInformation = {
    roomName = {
        -- options = Some way to get the room list
    },
    dreamDirection = {
        options = contorthelper.dreamdirections,
        editable = false
    }
}

dreamTeleportationTriggerLevel2.fieldInformation = {
    roomName = {
        -- options =
    },
    dreamDirection = {
        options = contorthelper.dreamdirections,
        editable = false
    }
}

dreamTeleportationTriggerLevel3.fieldInformation = {
    roomName = {
        -- options =
    },
    roomNameForGolden = {
        -- options =
    },
    musicEvent = {
        options = songs
    },
    dreamDirection = {
        options = contorthelper.dreamdirections,
        editable = false
    }
}

dreamTeleportationTriggerLevel4.fieldInformation = {
    roomName = {
        -- options =
    },
    roomNameForGolden = {
        -- options =
    },
    musicEvent = {
        options = songs
    },
    rumbleStrength = {
        options = contorthelper.rumblestrength,
        editable = false
    },
    rumbleLength = {
        options = contorthelper.rumblelength,
        editable = false
    },
    flashColor = {
        fieldType = "color",
        allowXNAColors = true
    },
    dreamDirection = {
        options = contorthelper.dreamdirections,
        editable = false
    }
}

dreamTeleportationTriggerLevel5.fieldInformation = {
    roomName = {
        -- options =
    },
    roomNameForGolden = {
        -- options =
    },
    musicEvent = {
        options = songs
    },
    ambienceEvent = {
        options = ambience
    },
    startGlitchEaser = {
        options = contorthelper.easers,
        editable = false
    },
    endGlitchEaser = {
        options = contorthelper.easers,
        editable = false
    },
    startAnxietyEaser = {
        options = contorthelper.easers,
        editable = false
    },
    endAnxietyEaser = {
        options = contorthelper.easers,
        editable = false
    },
    rumbleStrength = {
        options = contorthelper.rumblestrength,
        editable = false
    },
    rumbleLength = {
        options = contorthelper.rumblelength,
        editable = false
    },
    dreamDirection = {
        options = contorthelper.dreamdirections,
        editable = false
    }
}

return {
    dreamTeleportationTriggerLevel1,
    dreamTeleportationTriggerLevel2,
    dreamTeleportationTriggerLevel3,
    dreamTeleportationTriggerLevel4,
    dreamTeleportationTriggerLevel5
}