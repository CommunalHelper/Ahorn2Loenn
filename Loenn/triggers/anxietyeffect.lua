local enums = require("consts.celeste_enums")
local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local anxietyEffectTrigger = {}

anxietyEffectTrigger.name = "ContortHelper/AnxietyEffectTrigger"

function anxietyEffectTrigger.placements(trigger)
    local placements = {}

    for k, v in pairs(contorthelper.anxietyvariants) do
        table.insert(placements, {
            name = k,
            data = {
                position = "NoEffect",
                from = 0.0,
                to = v,

                delay = 0.0,
                oneUse = false,
                persistent = false,
            }
        })
    end
    return placements
end

anxietyEffectTrigger.fieldInformation = {
    position = {
        options = enums.trigger_position_modes,
        editable = false
    }
}

return anxietyEffectTrigger