local customRefill = {}

customRefill.name = "LunaticHelper/CustomRefill"
customRefill.depth = -100
customRefill.placements = {
    {
        name = "one",
        data = {
            twoDash = false,
            respawn = 2.5
        }
    },
    {
        name = "two",
        data = {
            twoDash = true,
            respawn = 2.5
        }
    }
}

function customRefill.texture(room, entity)
    return entity.twoDash and "objects/refillTwo/idle00" or "objects/refill/idle00"
end

return customRefill
