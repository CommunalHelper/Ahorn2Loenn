local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local lightSourceZone = {}

lightSourceZone.name = "ContortHelper/LightSourceZone"

function lightSourceZone.placements(entity)
    local placements = {}

    for k, v in pairs(contorthelper.lightvariants) do
        table.insert(placements, {
            name = k,
            data = {
                width = 8,
                height = 8,

                colors = "ffffff,ffffff,ffffff",

                alphaMinimum = 0.8,
                alphaMaximum = 1.0,

                radiusMinimum = v[3],
                radiusMaximum = v[3],

                startFadeMinimum = v[1],
                startFadeMaximum = v[1],

                endFadeMinimum = v[2],
                endFadeMaximum = v[2],

                amount = 5
            }
        })
    end

    return placements
end

lightSourceZone.fieldInformation = {
    amount = {
        fieldType = "integer"
    }
}

local displayName = "Light Zone"

lightSourceZone.fillColor = {0.9, 0.5, 0.8, 0.4}
lightSourceZone.borderColor = {1.0, 0.8, 1.0, 0.6}

return lightSourceZone