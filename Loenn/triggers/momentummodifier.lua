local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")
local momentum = {}

momentum.name = "ContortHelper/MomentumModifierTrigger"
momentum.placements = {
    name = "default",
    data = {
        modifierX = 0.0,
        modifierY = 0.0,
        operation = "Set",
        onlyX = false,
        onlyY = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

local conditionalMomentum = {}

conditionalMomentum.name = "ContortHelper/ConditionalMomentumModifierTrigger"
conditionalMomentum.placements = {
    name = "default",
    data = {
        modifierX = 0.0,
        modifierY = 0.0,
        conditionalModifierX = 0.0,
        conditionalModifierY = 0.0,
        operation = "Set",
        conditionalOperation = "EqualTo",
        onlyX = false,
        onlyY = false,
        conditionalOnlyX = false,
        conditionalOnlyY = false,
        neededFlags = "",
        flagsAfterInvoke = "",
        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false
    }
}

momentum.fieldInformation = {
    operation = {
        options = contorthelper.operations,
        editable = false
    }
}

conditionalMomentum.fieldInformation = {
    operation = {
        options = contorthelper.operations,
        editable = false
    },
    conditionalOperation = {
        options = contorthelper.conditionals,
        editable = false
    }
}

return {
    momentum,
    conditionalMomentum
}
