local burstRemover = {}

burstRemover.name = "ContortHelper/BurstRemoverTrigger"
burstRemover.placements = {
    name = "default",
    data = {
        untilReenter = true,
        neededFlags = "",
        flagsAfterInvoke ="",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

return burstRemover