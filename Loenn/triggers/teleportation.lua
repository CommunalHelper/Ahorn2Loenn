local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")
local songs = require("consts.songs")
local ambience = require("consts.ambient_sounds")

local teleportationTriggerLevel1 = {}
local teleportationTriggerLevel2 = {}
local teleportationTriggerLevel3 = {}
local teleportationTriggerLevel4 = {}
local teleportationTriggerLevel5 = {}

teleportationTriggerLevel1.name = "ContortHelper/TeleportationTriggerLevel1"
teleportationTriggerLevel2.name = "ContortHelper/TeleportationTriggerLevel2"
teleportationTriggerLevel3.name = "ContortHelper/TeleportationTriggerLevel3"
teleportationTriggerLevel4.name = "ContortHelper/TeleportationTriggerLevel4"
teleportationTriggerLevel5.name = "ContortHelper/TeleportationTriggerLevel5"

teleportationTriggerLevel1.nodeLimits = {0, 2}
teleportationTriggerLevel2.nodeLimits = {0, 2}
teleportationTriggerLevel3.nodeLimits = {0, 2}
teleportationTriggerLevel4.nodeLimits = {0, 2}
teleportationTriggerLevel5.nodeLimits = {0, 2}

teleportationTriggerLevel1.nodeLineRenderType = "fan"
teleportationTriggerLevel2.nodeLineRenderType = "fan"
teleportationTriggerLevel3.nodeLineRenderType = "fan"
teleportationTriggerLevel4.nodeLineRenderType = "fan"
teleportationTriggerLevel5.nodeLineRenderType = "fan"

local table1 = {true, false}
local table2 = {0, 1, 2}

function teleportationTriggerLevel1.placements(trigger)
    local placements = {}

    table.insert(placements, {
        name = "inlevel1",
        data = {
            roomName = "",
            targetTag = "",

            startDuration = 0.1,

            spawnPointIsNearestSpawn = false,
            onlyInvokeWithGolden = false,
            useLegacyCamera = false,
            reloadRoom = false,
            noEffects = false,

            neededFlags = "",
            flagsAfterInvoke = "",

            occurOnEnter = true,
            oneUse = false,
            persistent = false,
        }
    })

    for i in pairs(table1) do
        local triggerName = "default"

        if table1[i] then triggerName = "golden1" end

        table.insert(placements, {
            name = triggerName,
            data = {
                roomName = "",
                targetTag = "",

                startDuration = 0.1,

                spawnPointIsNearestSpawn = false,
                onlyInvokeWithGolden = table1[i],
                useLegacyCamera = false,
                reloadRoom = true,
                noEffects = false,

                neededFlags = "",
                flagsAfterInvoke = "",

                occurOnEnter = true,
                oneUse = false,
                persistent = false,
            }
        })
    end

    return placements
end

function teleportationTriggerLevel2.placements(trigger)
    local placements = {}

    table.insert(placements, {
        name = "inlevel2",
        data = {
            roomName = "",
            targetTag = "",
            
            transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

            startDuration = 0.1,

            glitchMultiplier = 0.25,
            startGlitchDuration = 0.1,
            endGlitchDuration = 0.3,

            screenShake = 0.0,

            changePlayerX = true,
            changePlayerY = true,

            spawnPointIsNearestSpawn = false,
            onlyInvokeWithGolden = false,
            useLegacyCamera = false,
            reloadRoom = false,
            noEffects = false,

            neededFlags = "",
            flagsAfterInvoke = "",

            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    })

    for i in pairs(table1) do
        for j in pairs(table2) do
            local triggerName = "default"

            if table1[i] then triggerName = "golden2" end

            if table2[j] == 1 then triggerName = triggerName .. "_hrange" end

            if table2[j] == 2 then triggerName = triggerName .. "_vrange" end

            -- check if triggerName starts with "default_" if so remove it
            if string.sub(triggerName, 1, 8) == "default_" then triggerName = string.sub(triggerName, 9) end

            table.insert(placements, {
                name = triggerName,
                data = {
                    roomName = "",
                    targetTag = "",
                    
                    transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

                    startDuration = 0.1,

                    glitchMultiplier = 0.25,
                    startGlitchDuration = 0.1,
                    endGlitchDuration = 0.3,

                    screenShake = 0.0,

                    changePlayerX = table2[j] == 1,
                    changePlayerY = table2[j] == 2,

                    spawnPointIsNearestSpawn = false,
                    onlyInvokeWithGolden = table1[i],
                    useLegacyCamera = false,
                    reloadRoom = true,
                    noEffects = false,

                    neededFlags = "",
                    flagsAfterInvoke = "",

                    occurOnEnter = true,
                    oneUse = false,
                    persistent = false
                }
            })
        end
    end

    return placements
end

function teleportationTriggerLevel3.placements(trigger)
    local placements = {}

    table.insert(placements, {
        name = "inlevel3",
        data = {
            roomName = "",
            roomNameForGolden = "",
            targetTag = "",

            musicEvent = "",
            transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

            startDuration = 0.1,

            glitchMultiplier = 0.25,
            startGlitchDuration = 0.1,
            endGlitchDuration = 0.3,

            anxietyMultiplier = 0.25,
            startAnxietyDuration = 0.1,
            endAnxietyDuration = 0.3,

            screenShake = 0.0,

            changePlayerX = true,
            changePlayerY = true,

            momentumModifierX = 0.0,
            momentumModifierY = 0.0,
            momentumOperation = "Addition",
            momentumOnlyX = false,
            momentumOnlyY = false,

            spawnPointIsNearestSpawn = false,
            onlyInvokeWithGolden = false,
            useLegacyCamera = false,
            reloadRoom = false,
            noEffects = false,

            neededFlags = "",
            flagsAfterInvoke = "",

            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    })

    for i in pairs(table1) do
        for j in pairs(table2) do
            local triggerName = "default"

            if table1[i] then triggerName = "golden3" end

            if table2[j] == 1 then triggerName = triggerName .. "_hrange" end

            if table2[j] == 2 then triggerName = triggerName .. "_vrange" end

            if string.sub(triggerName, 1, 8) == "default_" then triggerName = string.sub(triggerName, 9) end

            table.insert(placements, {
                name = triggerName,
                data = {
                    roomName = "",
                    roomNameForGolden = "",
                    targetTag = "",

                    musicEvent = "",
                    transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

                    startDuration = 0.1,

                    glitchMultiplier = 0.25,
                    startGlitchDuration = 0.1,
                    endGlitchDuration = 0.3,

                    anxietyMultiplier = 0.25,
                    startAnxietyDuration = 0.1,
                    endAnxietyDuration = 0.3,

                    screenShake = 0.0,

                    changePlayerX = table2[j] == 1,
                    changePlayerY = table2[j] == 2,

                    momentumModifierX = 0.0,
                    momentumModifierY = 0.0,
                    momentumOperation = "Addition",
                    momentumOnlyX = false,
                    momentumOnlyY = false,

                    spawnPointIsNearestSpawn = false,
                    onlyInvokeWithGolden = table1[i],
                    useLegacyCamera = false,
                    reloadRoom = true,
                    noEffects = false,

                    neededFlags = "",
                    flagsAfterInvoke = "",

                    occurOnEnter = true,
                    oneUse = false,
                    persistent = false
                }
            })
        end
    end

    return placements
end

function teleportationTriggerLevel4.placements(trigger)
    local placements = {}

    table.insert(placements, {
        name = "inlevel4",
        data = {
            roomName = "",
            roomNameForGolden = "",
            targetTag = "",

            musicEvent = "",
            transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

            startDuration = 0.1,

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

            momentumModifierX = 0.0,
            momentumModifierY = 0.0,
            momentumOperation = "Addition",
            momentumOnlyX = false,
            momentumOnlyY = false,

            spawnPointIsNearestSpawn = false,
            onlyInvokeWithGolden = false,
            useLegacyCamera = false,
            reloadRoom = false,
            noEffects = false,

            neededFlags = "",
            flagsAfterInvoke = "",

            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    })

    for i in pairs(table1) do
        for j in pairs(table2) do
            local triggerName = "default"

            if table1[i] then triggerName = "golden4" end

            if table2[j] == 1 then triggerName = triggerName .. "_hrange" end

            if table2[j] == 2 then triggerName = triggerName .. "_vrange" end

            if string.sub(triggerName, 1, 8) == "default_" then triggerName = string.sub(triggerName, 9) end

            table.insert(placements, {
                name = triggerName,
                data = {
                    roomName = "",
                    roomNameForGolden = "",
                    targetTag = "",

                    musicEvent = "",
                    transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",

                    startDuration = 0.1,

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

                    changePlayerX = table2[j] == 1,
                    changePlayerY = table2[j] == 2,

                    momentumModifierX = 0.0,
                    momentumModifierY = 0.0,
                    momentumOperation = "Addition",
                    momentumOnlyX = false,
                    momentumOnlyY = false,

                    spawnPointIsNearestSpawn = false,
                    onlyInvokeWithGolden = table1[i],
                    useLegacyCamera = false,
                    reloadRoom = true,
                    noEffects = false,

                    neededFlags = "",
                    flagsAfterInvoke = "",

                    occurOnEnter = true,
                    oneUse = false,
                    persistent = false
                }
            })
        end
    end

    return placements
end

function teleportationTriggerLevel5.placements(trigger)
    local placements = {}

    table.insert(placements, {
        name = "inlevel5",
        data = {
            roomName = "",
            roomNameForGolden = "",
            targetTag = "",

            musicEvent = "",
            ambienceEvent = "",
            startAudioEvent = "",
            transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",
            endAudioEvent = "",

            startDuration = 0.1,

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

            momentumModifierX = 0.0,
            momentumModifierY = 0.0,
            momentumOperation = "Addition",
            momentumOnlyX = false,
            momentumOnlyY = false,

            spawnPointIsNearestSpawn = false,
            onlyInvokeWithGolden = false,
            useLegacyCamera = false,
            reloadRoom = false,
            noEffects = false,

            neededFlags = "",
            flagsAfterInvoke = "",

            occurOnEnter = true,
            oneUse = false,
            persistent = false
        }
    })

    for i in pairs(table1) do
        for j in pairs(table2) do
            local triggerName = "default"

            if table1[i] then triggerName = "golden5" end

            if table2[j] == 1 then triggerName = triggerName .. "_hrange" end

            if table2[j] == 2 then triggerName = triggerName .. "_vrange" end

            if string.sub(triggerName, 1, 8) == "default_" then triggerName = string.sub(triggerName, 9) end

            table.insert(placements, {
                name = triggerName,
                data = {
                    roomName = "",
                    roomNameForGolden = "",
                    targetTag = "",

                    musicEvent = "",
                    ambienceEvent = "",
                    startAudioEvent = "",
                    transitionAudioEvent = "event:/new_content/game/10_farewell/glitch_short",
                    endAudioEvent = "",

                    startDuration = 0.1,

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

                    changePlayerX = table2[j] == 1,
                    changePlayerY = table2[j] == 2,
                    changeCameraX = table2[j] == 1,
                    changeCameraY = table2[j] == 2,

                    rememberDashes = true,
                    rememberFacing = true,

                    momentumModifierX = 0.0,
                    momentumModifierY = 0.0,
                    momentumOperation = "Addition",
                    momentumOnlyX = false,
                    momentumOnlyY = false,

                    spawnPointIsNearestSpawn = false,
                    onlyInvokeWithGolden = table1[i],
                    useLegacyCamera = false,
                    reloadRoom = true,
                    noEffects = false,

                    neededFlags = "",
                    flagsAfterInvoke = "",
                    
                    occurOnEnter = true,
                    oneUse = false,
                    persistent = false
                }
            })
        end
    end

    return placements
end

teleportationTriggerLevel1.fieldInformation = {
    roomName = {
        -- options = 
    }
}

teleportationTriggerLevel2.fieldInformation = {
    roomName = {
        -- options = 
    }
}

teleportationTriggerLevel3.fieldInformation = {
    roomName = {
        -- options = 
    },
    roomNameForGolden = {
        -- options = 
    },
    musicEvent = {
        options = songs
    },
    momentumOperation = {
        options = contorthelper.operations,
        editable = false
    }
}

teleportationTriggerLevel4.fieldInformation = {
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
    momentumOperation = {
        options = contorthelper.operations,
        editable = false
    }
}

teleportationTriggerLevel5.fieldInformation = {
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
    flashColor = {
        fieldType = "color",
        allowXNAColors = true
    },
    momentumOperation = {
        options = contorthelper.operations,
        editable = false
    }
}

return {
    teleportationTriggerLevel1,
    teleportationTriggerLevel2,
    teleportationTriggerLevel3,
    teleportationTriggerLevel4,
    teleportationTriggerLevel5,
}