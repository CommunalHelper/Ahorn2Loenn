local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local effectBooleanParameterTrigger = {}
local effectIntegerParameterTrigger = {}
local effectFloatParameterTrigger = {}
local effectStringParameterTrigger = {}
local effectVector2ParameterTrigger = {}
local effectVector3ParameterTrigger = {}
local effectVector4ParameterTrigger = {}
local effectMatrixParameterTrigger = {}
local effectQuaternionParameterTrigger = {}
local effectColorParameterTrigger = {}
local effectBooleanArrayParameterTrigger = {}
local effectIntegerArrayParameterTrigger = {}
local effectFloatArrayParameterTrigger = {}
local reinstateParametersTrigger = {}

effectBooleanParameterTrigger.name = "ContortHelper/EffectBooleanParameterTrigger"
effectIntegerParameterTrigger.name = "ContortHelper/EffectIntegerParameterTrigger"
effectFloatParameterTrigger.name = "ContortHelper/EffectFloatParameterTrigger"
effectStringParameterTrigger.name = "ContortHelper/EffectStringParameterTrigger"
effectVector2ParameterTrigger.name = "ContortHelper/EffectVector2ParameterTrigger"
effectVector3ParameterTrigger.name = "ContortHelper/EffectVector3ParameterTrigger"
effectVector4ParameterTrigger.name = "ContortHelper/EffectVector4ParameterTrigger"
effectMatrixParameterTrigger.name = "ContortHelper/EffectMatrixParameterTrigger"
effectQuaternionParameterTrigger.name = "ContortHelper/EffectQuaternionParameterTrigger"
effectColorParameterTrigger.name = "ContortHelper/EffectColorParameterTrigger"
effectBooleanArrayParameterTrigger.name = "ContortHelper/EffectBooleanArrayParameterTrigger"
effectIntegerArrayParameterTrigger.name = "ContortHelper/EffectIntegerArrayParameterTrigger"
effectFloatArrayParameterTrigger.name = "ContortHelper/EffectFloatArrayParameterTrigger"
reinstateParametersTrigger.name = "ContortHelper/ReinstateParametersTrigger"

effectVector2ParameterTrigger.nodeLimits = {0, 1}

effectBooleanParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = false,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectIntegerParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = 0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectFloatParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectStringParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = "",

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectVector2ParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        valueX = 0.0,
        valueY = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectVector3ParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        valueX = 0.0,
        valueY = 0.0,
        valueZ = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectVector4ParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        valueX = 0.0,
        valueY = 0.0,
        valueZ = 0.0,
        valueW = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectMatrixParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        valueM11 = 0.0,
        valueM12 = 0.0,
        valueM13 = 0.0,
        valueM14 = 0.0,
        valueM21 = 0.0,
        valueM22 = 0.0,
        valueM23 = 0.0,
        valueM24 = 0.0,
        valueM31 = 0.0,
        valueM32 = 0.0,
        valueM33 = 0.0,
        valueM34 = 0.0,
        valueM41 = 0.0,
        valueM42 = 0.0,
        valueM43 = 0.0,
        valueM44 = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectQuaternionParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        valueX = 0.0,
        valueY = 0.0,
        valueZ = 0.0,
        valueW = 0.0,

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectColorParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = "White",

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectBooleanArrayParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = "false,false,false",

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectIntegerArrayParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = "0,0,0",

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

effectFloatArrayParameterTrigger.placements = {
    name = "default",
    data = {
        key = "",
        value = "0.000,0.000,0.000",

        removeKey = false,

        neededFlags = "",
        flagsAfterInvoke = "",

        delay = 0.0,
        occurOnEnter = true,
        oneUse = false,
        persistent = false,
    }
}

function reinstateParametersTrigger.placements(trigger)
    local placements = {}

    local table1 = {true, false}

    for i in pairs(table1) do
        local triggerName = "default"
        if table1[i] then
            triggerName = "reinstate"
        end
        table.insert(placements, {
            name = triggerName,
            data = {
                clear = table1[i],

                neededFlags = "",
                flagsAfterInvoke = "",

                delay = 0.0,
                occurOnEnter = true,
                oneUse = false,
                persistent = false,
            }
        })
    end

    return placements
end

effectBooleanParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_boolparams
    }
}

effectIntegerParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_intparams
    },
    value = {
        fieldType = "integer"
    }
}

effectFloatParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_floatparams
    }
}

effectStringParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_strparams
    }
}

effectVector2ParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_vec2params
    }
}

effectVector3ParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_vec3params
    }
}

effectVector4ParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_vec4params
    }
}

effectMatrixParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_matrixparams
    }
}

effectQuaternionParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_quaternionparams
    }
}

effectColorParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_colorparams
    },
    value = {
        fieldType = "color",
        allowXNAColors = true
    }
}

effectBooleanArrayParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_boolarrparams
    }
}

effectIntegerArrayParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_intarrparams
    }
}

effectFloatArrayParameterTrigger.fieldInformation = {
    key = {
        options = contorthelper.effects_floatarrparams
    }
}

return {
    effectBooleanParameterTrigger,
    effectIntegerParameterTrigger,
    effectFloatParameterTrigger,
    effectStringParameterTrigger,
    effectVector2ParameterTrigger,
    effectVector3ParameterTrigger,
    effectVector4ParameterTrigger,
    effectMatrixParameterTrigger,
    effectQuaternionParameterTrigger,
    effectColorParameterTrigger,
    effectBooleanArrayParameterTrigger,
    effectIntegerArrayParameterTrigger,
    effectFloatArrayParameterTrigger,
    reinstateParametersTrigger
}