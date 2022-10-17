local customRefill = {}

customRefill.name = "LunaticHelper/CustomRefill"
customRefill.depth = -100
customRefill.placements = {
    {
        name = "Custom Refill (Lunatic Helper)",
        data = {
            twoDash = false,
            respawn = 2.5
        }
    },
    {
        name = "Custom Refill (Two Dashes) (Lunatic Helper)",
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