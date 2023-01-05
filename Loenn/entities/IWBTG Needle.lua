local enums = require("consts.celeste_enums")

local needle = {}

needle.name = "Needle Helper/IWBTGNeedle"
needle.depth = 0
needle.placements = {
    {
        name = "needleUp",
        data = {
            direction = "Up",
            directory = "objects/NeedleHelper"
        }
    },
    {
        name = "needleDown",
        data = {
            direction = "Down",
            directory = "objects/NeedleHelper"
        }
    },
    {
        name = "needleLeft",
        data = {
            direction = "Left",
            directory = "objects/NeedleHelper"
        }
    },
    {
        name = "needleRight",
        data = {
            direction = "Right",
            directory = "objects/NeedleHelper"
        }
    }
}

needle.fieldInformation = {
    direction = {
        options = enums.dash_switch_sides,
        editable = false
    }
}

function needle.texture(room, entity)
    return entity.direction and "objects/NeedleHelper/Needle" .. entity.direction .. "/needle00"
end

return needle