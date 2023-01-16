local contorthelper = require("mods").requireFromPlugin("libraries.ContortHelper.contorthelper")

local highResolutionParticleBackdrop = {}

highResolutionParticleBackdrop.name = "ContortHelper/HighResolutionParticleBackdrop"
highResolutionParticleBackdrop.canBackground = false
highResolutionParticleBackdrop.canForeground = true

highResolutionParticleBackdrop.defaultData = {

    particle = "snow",
    overlay = "overlay",
    amount = 50,

    alpha = 1.0,
    particleAlpha = 1.0,
    overlayAlpha = 0.45,

    directionX = -1.0,
    directionY = 0.0,
    move = true,

    easer = "CubeInOut",
    duration = 1.0
}

highResolutionParticleBackdrop.fieldOrder = {
    "only", "exclude", "tag", "flag",
    "notflag"
}

highResolutionParticleBackdrop.fieldInformation = {
    easer = {
        options = contorthelper.easers,
        editable = false
    }
}

return highResolutionParticleBackdrop