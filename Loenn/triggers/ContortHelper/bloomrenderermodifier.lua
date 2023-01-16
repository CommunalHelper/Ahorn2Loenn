local bloomRendererModifier = {}

bloomRendererModifier.name = "ContortHelper/BloomRendererModifierTrigger"
bloomRendererModifier.placements = {
    name = "default",
    data = {
        texture = "util/bloomgradient",
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

return bloomRendererModifier