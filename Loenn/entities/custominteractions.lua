local contorthelper = require("mods").requireFromPlugin("libraries.contorthelper")

local memo = {}

memo.name = "ContortHelper/CustomMemo"
memo.placements = {
    name = "default",
    data = {
        width = 8,
        height = 8,
        dialogFlag = "",
        beforeDialog = "",
        beforeDialogDelay = "",
        afterDialog = "",
        afterDialogDelay = "",
        poemDialog = "",
        poemColor = "Black",
        poemInEaser = "CubeInOut",
        poemOutEaser = "CubeInOut",
        poemInAudioEvent = "event:/game/03_resort/memo_in",
        poemOutAudioEvent = "event:/game/03_resort/memo_out",
        paper = "memo/memo",
        title = "memo/title_english"
    }
}

local note = {}

note.name = "ContortHelper/CustomNote"
note.placements = {
    name = "default",
    data = {
        width = 8,
        height = 8,
        dialogFlag = "",
        beforeDialog = "",
        beforeDialogDelay = "",
        afterDialog = "",
        afterDialogDelay = "",
        poemDialog = "",
        poemColor = "Black",
        poemInEaser = "CubeInOut",
        poemOutEaser = "CubeInOut",
        poemInAudioEvent = "event:/game/03_resort/memo_in",
        poemOutAudioEvent = "event:/game/03_resort/memo_out",
        paper = "poempage",
        paperOffsetX = 0.0,
        paperOffsetY = 0.0
    }
}

memo.nodeLimits = {1, 1}
note.nodeLimits = {1, 1}

memo.fieldInformation = {
    poemColor = {
        allowXNAColors = true,
        fieldType = "color"
    },
    poemInEaser = {
        options = contorthelper.easers
    },
    poemOutEaser = {
        options = contorthelper.easers,
    }
}

memo.fieldInformation = {
    poemColor = {
        allowXNAColors = true,
        fieldType = "color"
    },
    poemInEaser = {
        options = contorthelper.easers
    },
    poemOutEaser = {
        options = contorthelper.easers,
    }
}

memo.fillColor = {1.0, 0.9, 0.5, 0.4}
memo.borderColor = {0.9, 1.0, 0.7, 0.6}

note.fillColor = {1.0, 0.9, 0.5, 0.4}
note.borderColor = {0.9, 1.0, 0.7, 0.6}

return {
    memo,
    note
}