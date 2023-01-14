local anxiety = {}

anxiety.name = "ContortHelper/AnxietyEffectController"
anxiety.depth = 0
anxiety.texture = "ahorn/muntheory/contorthelper/anxietyeffectcontroller"
anxiety.placements = {
    {
        name = "Default",
        data = {
            enterValue = 0.8,
            leaveValue = 0.0
        }
    },    
    {
        name = "Heavy",
        data = {
            enterValue = 3.5,
            leaveValue = 0.0
        }
    },
    {
        name = "Light",
        data = {
            enterValue = 0.25,
            leaveValue = 0.0
        }
    }
}

return anxiety