SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SIG SG 550-1"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "6Precision Rifle"

SWEP.Description = "Carbine caliber marksman rifle with low recoil and fast semi-automatic fire. Penetrates armor easily.\nEquipped with a 6x scope by default."

SWEP.ViewModel = "models/weapons/tacint_shark/v_krieg.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_krieg.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 18,
        Damage_Min = 32,

        Range_Min = 600,
        Range_Max = 3000,

        MoveSpeedMult = 0.82,
        ShootingSpeedMult = 0.7,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 20,
        Range_Min = 500,
        Range_Max = 3000,
        RPM = 450,

        RecoilDissipationRate = 9,
        RecoilSpreadPenalty = 0.0025,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 4,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.75
        },

        ReloadTimeMult = 1.25,

        MoveSpeedMult = 0.85,
        ShootingSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        SightedSpeedMult = 0.5,
        ReloadSpeedMult = 0.5,
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 12,
        Damage_Min = 20,
        Range_Min = 600,
        Range_Max = 3000,
        RPM = 500,

        MoveSpeedMult = 0.82,
        ShootingSpeedMult = 0.7,
        SightedSpeedMult = 0.75,
        MeleeSpeedMult = 1,
        ReloadSpeedMult = 1,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MarksmanRifle

SWEP.MuzzleVelocity = 28000

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 20
SWEP.Range_Min = 1800 // distance for which to maintain maximum damage
SWEP.Range_Max = 7000 // distance at which we drop to minimum damage
SWEP.Penetration = 2 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.95

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 28000

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 700

SWEP.Spread = 0.0005

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 8
SWEP.RecoilResetTime = 0.1
SWEP.RecoilDissipationRate = 10
SWEP.RecoilFirstShotMult = 0.75

SWEP.RecoilVisualKick = 0.75
SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.5
SWEP.RecoilAltMultiplier = 300

SWEP.RecoilSpreadPenalty = 0.0035
SWEP.HipFireSpreadPenalty = 0.06
SWEP.PeekPenaltyFraction = 0.15

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.875
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.4

SWEP.AimDownSightsTime = 0.37
SWEP.SprintToFireTime = 0.45

SWEP.Sway = 2
SWEP.ScopedSway = 0.1

SWEP.FreeAimMaxAngle = 7

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.2, -7.5, -4.225)

SWEP.CorrectivePos = Vector(0, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.ScopedSway = 0.1

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/l96.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 6
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/sg551.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.7
SWEP.DropMagazineTime = 0.6

// sounds

local path = "tacrp/weapons/sg551/sg551_"
local path1 = "tacint_shark/krieg/"

SWEP.Sound_Shoot = path1 .. "sg500.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2

// anims

// VM:
// idle
// fire
// fire1, fire2...
// dryfire
// melee
// reload
// midreload
// prime_grenade
// throw_grenade
// throw_grenade_underhand
// deploy
// blind_idle
// blind_fire
// blind_fire1, blind_fire2...
// blind_dryfire

// WM:
// attack1
SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
    ["sights"] = {
        BGs_VM = {
            {2, 2}
        },
        BGs_WM = {
            {2, 2}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {2, 1}
        },
        BGs_WM = {
            {2, 1}
        },
    },
    ["tactical"] = {
        BGs_VM = {
            {3, 1}
        },
        BGs_WM = {
            {3, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights", "optic_cqb", "optic_medium", "optic_sniper"},
        InstalledElements = {"sights"},
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-5, 0, 5.5),
        Pos_WM = Vector(0, 5, 1),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-3.2, 0.05, 32.25),
        Pos_WM = Vector(0.1, 36, -1.2),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        InstalledElements = {"tactical"},
        Bone = "ValveBiped.sg551_rootbone",
        WMBone = "Box01",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.5, -0.75, 15),
        Pos_WM = Vector(2, 13, -0.5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-90, -90 + 3.5, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "perk_extendedmag", "acc_sling", "acc_duffle", "acc_bipod"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_krieg.Remove_Clip", path .. "remove_clip.wav")
addsound("tacint_krieg.Insert_Clip", path .. "insert_clip.wav")
addsound("tacint_krieg.Insert_Clip-mid", path .. "insert_clip-mid.wav")
addsound("tacint_krieg.bolt_action", path .. "bolt_action.wav")
addsound("tacint_krieg.bolt_slap", path .. "bolt_slap.wav")
addsound("tacint_krieg.bolt_back", path .. "bolt_back.wav")
addsound("tacint_krieg.throw_catch", path .. "throw_catch.wav")
addsound("tacint_krieg.fire_selector", path .. "fire_selector.wav")