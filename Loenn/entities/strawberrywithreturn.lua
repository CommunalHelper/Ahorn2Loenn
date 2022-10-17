local strawberryWithReturn = {}

strawberryWithReturn.name = "LunaticHelper/StrawberryWithReturn"
strawberryWithReturn.depth = -1
strawberryWithReturn.nodeLimits = {0, -1}
strawberryWithReturn.nodeLineRenderType = "fan"
strawberryWithReturn.nodeTexture = "collectables/strawberry/seed00"
strawberryWithReturn.placements = {
    {
        name = "default",
        data = {
            checkpointID = -1,
            order = -1,
            winged = true
        }
    },
    {
        name = "winged",
        data = {
            checkpointID = -1,
            order = -1,
            winged = false
        }
    }
}

function strawberryWithReturn.texture(room, entity)
    return entity.winged and "collectables/strawberry/normal00" or "collectables/strawberry/wings01"
end

return strawberryWithReturn
