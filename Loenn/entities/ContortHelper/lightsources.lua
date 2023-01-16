local contorthelper = require("mods").requireFromPlugin("libraries.ContortHelper.contorthelper")

local lightSource = {}
local lightSourcePath = {}

lightSource.name = "ContortHelper/LightSource"
lightSourcePath.name = "ContortHelper/LightSourcePath"

lightSourcePath.nodeLimits = {1, 1}
lightSourcePath.nodeLineRenderType = "line"

function lightSource.placements(entity)
    local placements = {}

    for k, v in pairs(contorthelper.lightvariants) do
        table.insert(placements, {
            name = k,
            data = {
                alpha = 1.0,
                radius = v[3],

                startFade = v[1],
                endFade = v[2],

                color = "White"
            }
        })
    end

    return placements
end

function lightSourcePath.placements(trigger)
    local placements = {}

    for k, v in pairs(contorthelper.lightvariants) do
        table.insert(placements, {
            name = "path_" .. k,
            data = {
                alpha = 1.0,
                radius = v[3],

                startFade = v[1],
                endFade = v[2],

                color = "White",

                moveSpeed = 1.181818,
                moveEaser = "CubeInOut"
            }
        })
    end

    return placements
end

lightSource.fieldInformation = {
    color = {
        fieldType = "color",
        allowXNAColors = true
    }
}

lightSourcePath.fieldInformation = {
    color = {
        fieldType = "color",
        allowXNAColors = true
    },
    moveEaser = {
        options = contorthelper.easers,
        editable = false
    }
}

lightSource.texture = contorthelper.lightsource
lightSourcePath.texture = contorthelper.lightsourcepath

return {
    lightSource,
    lightSourcePath
}