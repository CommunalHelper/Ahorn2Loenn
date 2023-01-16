local contorthelper = require("mods").requireFromPlugin("libraries.ContortHelper.contorthelper")

local teleportationTarget = {}

teleportationTarget.name = "ContortHelper/TeleportationTarget"

function teleportationTarget.placements(entity)
    local placements = {}

    table.insert(placements, {
        name = "default",
        data = {
            targetTag = ""
        }
    })

    for i = 1, 5 do
        table.insert(placements, {
            name = "target_" .. i,
            data = {
                targetTag = "t" .. i
            }
        })
    end

    return placements
end

teleportationTarget.texture = contorthelper.teleportationtarget

return teleportationTarget