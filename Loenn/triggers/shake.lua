local shake = {}

shake.name = "ContortHelper/ShakeTrigger"
shake.placements = {
    name = "default",
    data = {
        useDirectional = false,
        stopShake = false,
        needed = false,
        directionX = 1.0,
        directionY = 1.0,
        screenShake = 0.3,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

return shake