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
        options = {
            "Set",
            "Addition",
            "Subtraction",
            "Multiplication",
            "Division"
        },
        editable = false
    }
}

conditionalMomentum.fieldInformation = {
    operation = {
        options = {
            "Set",
            "Addition",
            "Subtraction",
            "Multiplication",
            "Division"
        },
        editable = false
    },
    conditionalOperation = {
        options = {
            "LessThan",
            "LessThanOrEqualTo",
            "EqualTo",
            "GreaterThanOrEqualTo",
            "GreaterThan"
        },
        editable = false
    }
}

return {
    momentum,
    conditionalMomentum
}