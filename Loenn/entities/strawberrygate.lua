local strawberryGate = {}

strawberryGate.name = "LunaticHelper/StrawberryGate"
strawberryGate.depth = 0
strawberryGate.nodeLineRenderType = "line"
strawberryGate.texture = "objects/lunatichelper/strawberrygate/edge"
strawberryGate.nodeLimits = {0, 1}
strawberryGate.placements = {
    name = "default",
    data = {
        requires = 0,
        width = 40,
        flash = true,
        freeze = true,
        shake = true,
        startHidden = false
    }
}

return strawberryGate
