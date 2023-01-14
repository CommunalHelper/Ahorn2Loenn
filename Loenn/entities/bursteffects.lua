local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local burstEffects = {}
local burstPath = {}

burstEffects.name = "ContortHelper/BurstEffect"
burstPath.name = "ContortHelper/BurstPath"

burstPath.nodeLimits = {1, 1}
burstPath.nodeLineRenderType = "line"

function burstEffects.placements(entity)
    local placements = {}

    for k, v in pairs(contorthelper.bursteffectvariants) do
        table.insert(placements, {
            name = k,
            data = {
                texture = "util/displacementcircle",

                burstDuration = v[1],
                coroutineDuration = v[2],

                radiusFrom = 0.0,
                radiusTo = v[3],

                alpha = 1.0,

                alphaEaser = "CubeInOut",
                radiusEaser = "CubeInOut",

                needed = false
            }
        })
    end

    return placements
end

function burstPath.placements(trigger)
    local placements = {}

    for k, v in pairs(contorthelper.burstpathvariants) do
        table.insert(placements, {
            name = k,
            data = {
                texture = "util/displacementcircle",

                burstDuration = v[1],
                coroutineDuration = 0.15,

                radiusFrom = 0.0,
                radiusTo = v[2],

                alpha = 1.0,

                alphaEaser = "CubeInOut",
                radiusEaser = "CubeInOut",

                moveSpeed = 1.181818,
                moveEaser = "CubeInOut",

                needed = false
            }
        })
    end

    return placements
end

burstEffects.fieldInformation = {
    alphaEaser = {
        options = contorthelper.easers,
        editable = false
    },
    radiusEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

burstPath.fieldInformation = {
    alphaEaser = {
        options = contorthelper.easers,
        editable = false
    },
    radiusEaser = {
        options = contorthelper.easers,
        editable = false
    },
    moveEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

burstEffects.texture = contorthelper.bursteffect
burstPath.texture = contorthelper.burstpath

burstPath.nodeTexture = contorthelper.burstpath

return {
    burstEffects,
    burstPath
}