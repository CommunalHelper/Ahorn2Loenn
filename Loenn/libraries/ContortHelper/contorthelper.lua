-- Contort Helper Library ported to loenn
-- With some changes to make it work with loenn and lua

-- Placements

local contorthelper = {}

contorthelper.anxietyvariants = {
    ["Light"] = 0.25,
    ["Default"] = 0.8,
    ["Heavy"] = 3.5
}

contorthelper.glitchvariants = {
    ["Light"] = 0.1,
    ["Default"] = 0.35,
    ["Heavy"] = 0.8
}

contorthelper.burstattachervariants = {
    ["Light"] = {1.0, 0.25, 25.0},
    ["Default"] = {1.5, 0.25, 50.0},
    ["Heavy"] = {2.0, 0.25, 100.0}
}

contorthelper.bursteffectvariants = {
    ["Light"] = {1.0, 0.25, 25.0},
    ["Default"] = {1.5, 1.0, 50.0},
    ["Heavy"] = {3.0, 1.0, 100.0}
}

contorthelper.burstpathvariants = {
    ["Light"] = {1.0, 20.0},
    ["Default"] = {2.0, 50.0},
    ["Heavy"] = {4.0, 125.0}
}

contorthelper.burstzonevariants = {
    ["Light"] = {1.0, 0.25, 10.0},
    ["Default"] = {1.5, 0.01, 25.0},
    ["Heavy"] = {2.0, 0.25, 150.0}
}

contorthelper.lightvariants = {
    ["Small"] = {10, 20, 20.0},
    ["Default"] = {24, 48, 48.0},
    ["Big"] = {60, 80, 80.0}
}

contorthelper.madelinelightvariants = {
    ["Small"] = {10, 20},
    ["Default"] = {32, 64},
    ["Big"] = {90, 110}
}

contorthelper.alphalerplightsource = "ahorn/muntheory/contorthelper/alphalerplightsource"
contorthelper.alphalerplightsourcepath = "ahorn/muntheory/contorthelper/alphalerplightsourcepath"

contorthelper.anxietyeffectcontroller = "ahorn/muntheory/contorthelper/anxietyeffectcontroller"
contorthelper.anxietyorigincontroller = "ahorn/muntheory/contorthelper/anxietyorigincontroller"

contorthelper.bursteffect = "ahorn/muntheory/contorthelper/bursteffect"
contorthelper.burstpath = "ahorn/muntheory/contorthelper/burstpath"
contorthelper.burstcontroller = "ahorn/muntheory/contorthelper/burstcontroller"

contorthelper.colorlerplightsource = "ahorn/muntheory/contorthelper/colorlerplightsource"
contorthelper.colorlerplightsourcepath = "ahorn/muntheory/contorthelper/colorlerplightsourcepath"

contorthelper.customeffectcontroller = "ahorn/muntheory/contorthelper/customeffectcontroller"

contorthelper.flickerlightsource = "ahorn/muntheory/contorthelper/flickerlightsource"
contorthelper.flickerlightsourcepath = "ahorn/muntheory/contorthelper/flickerlightsourcepath"

contorthelper.glitcheffectcontroller = "ahorn/muntheory/contorthelper/glitcheffectcontroller"

contorthelper.lightningstrikescontroller = "ahorn/muntheory/contorthelper/lightningstrikescontroller"

contorthelper.lightsource = "ahorn/muntheory/contorthelper/lightsource"
contorthelper.lightsourcepath = "ahorn/muntheory/contorthelper/lightsourcepath"

contorthelper.teleportationtarget = "ahorn/muntheory/contorthelper/teleportationtarget"

contorthelper.confettispawner = "ahorn/muntheory/contorthelper/confettispawner"
contorthelper.confettispawnerpath = "ahorn/muntheory/contorthelper/confettispawnerpath"
contorthelper.confetticontroller = "ahorn/muntheory/contorthelper/confetticontroller"

-- Dictionaries

contorthelper.effects = {
    ["Rainbow"] = "muntheory/contorthelper/Rainbow.cso",
    ["Light=Beams"] = "muntheory/contorthelper/LightBeams.cso",
    ["Multiverse"] = "muntheory/contorthelper/Multiverse.cso"
}

contorthelper.effects_boolparams = {
    ["Rainbow (Horizontal)"] = "muntheory_contorthelper_rainbow_horizontal",

    ["Light-Beams (Horizontal)"] = "muntheory_contorthelper_lightbeams_horizontal"
}

contorthelper.effects_intparams = {}

contorthelper.effects_floatparams = {
    ["Rainbow (Speed)"] = "muntheory_contorthelper_rainbow_speed",
	["Rainbow (Offset Multiplier)"] = "muntheory_contorthelper_rainbow_offsetmulti",

	["Light-Beams (Speed)"] = "muntheory_contorthelper_lightbeams_speed",
	["Light-Beams (Position Speed)"] = "muntheory_contorthelper_lightbeams_positionspeed",
	["Light-Beams (Denominator Multiplier)"] = "muntheory_contorthelper_lightbeams_denominatormulti",
	
	["Multiverse (Speed)"] = "muntheory_contorthelper_multiverse_speed",
	["Multiverse (Duration)"] = "muntheory_contorthelper_multiverse_duration",
	["Multiverse (Subtracter)"] = "muntheory_contorthelper_multiverse_subtracter",
	["Multiverse (Denominator)"] = "muntheory_contorthelper_multiverse_denominator"
}

contorthelper.effects_strparams = {}

contorthelper.effects_vec2params = {}

contorthelper.effects_vec3params = {}

contorthelper.effects_vec4params = {}

contorthelper.effects_matrixparams = {}

contorthelper.effects_quaternionparams = {}

contorthelper.effects_colorparams = {}

contorthelper.effects_boolarrparams = {}

contorthelper.effects_intarrparams = {}

contorthelper.effects_floatarrparams = {}

contorthelper.operations = {
    ["="] = "Set",
    ["+"] = "Addition",
    ["-"] = "Subtraction",
    ["*"] = "Multiplication",
    ["/"] = "Division"
}

contorthelper.conditionals = {
    ["<"] = "LessThan",
    ["<="] = "LessThanOrEqualTo",
    ["=="] = "EqualTo",
    [">="] = "GreaterThanOrEqualTo",
    [">"] = "GreaterThan"
}

contorthelper.easers = {
    -- Defaults

    "Linear",

    "SineIn",
    "SineOut",
    "SineInOut",

    "QuadIn",
    "QuadOut",
    "QuadInOut",

    "CubeIn",
    "CubeOut",
    "CubeInOut",

    "QuintIn",
    "QuintOut",
    "QuintInOut",

    "ExpoIn",
    "ExpoOut",
    "ExpoInOut",

    "BackIn",
    "BackOut",
    "BackInOut",

    "BigBackIn",
    "BigBackOut",
    "BigBackInOut",

    "ElasticIn",
    "ElasticOut",
    "ElasticInOut",

    "BounceIn",
    "BounceOut",
    "BounceInOut",

    -- Exclusive

    "HexIn",
    "HexOut",
    "HexInOut",

    "SeptIn",
    "SeptOut",
    "SeptInOut",

    "OctIn",
    "OctOut",
    "OctInOut",

    "NonIn",
    "NonOut",
    "NonInOut",

    "DecIn",
    "DecOut",
    "DecInOut",

    "Round"
}

contorthelper.attaches = {
    "All",
    "Player",
    "Spikes",
    "ZipMover",
    "Refill",
    "Strawberry",
    "DreamBlock",
    "Chaser",
    "TouchSwitch",
    "TouchGate",
    "Key",
    "LockDoor",
    "Oshiro",
    "Spinner",
    "Cloud",
    "Booster",
    "MoveBlock",
    "Snowball",
    "Seeker",
    "SwapBlock",
    "TheoCrystal",
    "Torch",
    "CrushBlock",
    "Feather",
    "Boss",
    "BounceBlock",
    "Glider",
    "Puffer"
}

contorthelper.origintypes = {
    "Player"
}

contorthelper.rumblestrength = {
    "Climb",
    "Low",
    "Medium",
    "Strong"
}

contorthelper.rumblelength = {
    "FullSecond",
    "TwoSeconds",
    "Short",
    "Medium",
    "Long"
}

contorthelper.boolorrand = {
    "True",
    "False",
    "Random"
}

contorthelper.facings = {
    "Left",
    "Right"
}

contorthelper.depths = {
    ["BG Terrain"] = 10000,
    ["BG Mirrors"] = 9500,
    ["BG Decals"] = 9000,
    ["BG Particles"] = 8000,
    ["Solids Below"] = 5000,
    ["Below"] = 2000,
    ["NPCs"] = 1000,
    ["Theo Crystal"] = 100,
    ["Player"] = 0,
    ["Dust"] = -50,
    ["Pickups"] = -100,
    ["Seeker"] = -200,
    ["Particles"] = -8000,
    ["Above"] = -8500,
    ["Solids"] = -9000,
    ["FG Terrain"] = -10000,
    ["FG Decals"] = -10500,
    ["Dream Blocks"] = -11000,
    ["Crystal Spinners"] = -11500,
    ["Player Dream Dashing"] = -12000,
    ["Enemy"] = -12500,
    ["Fake Walls"] = -13000,
    ["FG Particles"] = -50000,
    ["Top"] = -1000000,
    ["Formation Sequences"] = -2000000
}

contorthelper.playerstates = {
    ["Normal"] = 0,
    ["Climb"] = 1,
    ["Dash"] = 2,
    ["Swim"] = 3,
    ["Boost"] = 4,
    ["RedDash"] = 5,
    ["HitSquash"] = 6,
    ["Launch"] = 7,
    ["Pickup"] = 8,
    ["DreamDash"] = 9,
    ["SummitLaunch"] = 10,
    ["Dummy"] = 11,
    ["IntroWalk"] = 12,
    ["IntroJump"] = 13,
    ["IntroRespawn"] = 14,
    ["IntroWakeUp"] = 15,
    ["BirdDashTutorial"] = 16,
    ["Frozen"] = 17,
    ["ReflectionFall"] = 18,
    ["StarFly"] = 19,
    ["TempleFall"] = 20,
    ["CassetteFly"] = 21,
    ["Attract"] = 22,
    ["IntroMoonJump"] = 23,
    ["FlingBird"] = 24,
    ["IntroThinkForABit"] = 25
}

contorthelper.dreamdirections = {
    "Up",
    "Down",
    "Left",
    "Right",
    "UpLeft",
    "UpRight",
    "DownLeft",
    "DownRight"
}

return contorthelper