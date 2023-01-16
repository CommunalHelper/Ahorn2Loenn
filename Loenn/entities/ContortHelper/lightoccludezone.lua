local drawer = require("utils.drawing")

local lightOccludeZone = {}

lightOccludeZone.name = "ContortHelper/LightOccludeZone"

lightOccludeZone.placements = {
    name = "default",
    data = {
        width = 8,
        height = 8,
        alpha = 1.0
    }
}


lightOccludeZone.fillColor = {0.6, 0.6, 0.6, 0.4}
lightOccludeZone.borderColor = {0.7, 0.7, 0.7, 0.6}

return lightOccludeZone