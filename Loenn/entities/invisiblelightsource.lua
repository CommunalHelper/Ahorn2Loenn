local invisibleLightSource = {}

invisibleLightSource.name = "LunaticHelper/InvisibleLightSource"
invisibleLightSource.depth = 0
invisibleLightSource.texture = "objects/hanginglamp"
invisibleLightSource.placements = {
    name = "Invisible Light Source (Lunatic Helper)",
    alpha = 1.0,
    endFade = 48.0,
    radius = 48.0,
    startFade = 24.0,
    color = ffffff
}

invisibleLightSource.fieldInformation = {
    color = {
        fieldType = "color",
        allowXNAColors = true
    }
}

return invisibleLightSource