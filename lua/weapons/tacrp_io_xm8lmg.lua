SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "HK XM8 LMG"
SWEP.Category = "Tactical RP" // "Tactical RP (Arctic)"

SWEP.SubCatTier = "2Premium"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Machine gun configuration of an experimental multi-purpose rifle. Light, high capacity and low recoil, but damage is poor.\nHas an integrated 4x scope but no optic mount."

SWEP.ViewModel = "models/weapons/tacint_extras/v_xm8lmg.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_xm8lmg.mdl"

SWEP.Slot = 2

SWEP.ArcadeStats = {

    Damage_Max = 15,
    Damage_Min = 10,

    MoveSpeedMult = 0.85,
    ShootingSpeedMult = 0.75,
    SightedSpeedMult = 0.8,
    MeleeSpeedMult = 1,
    ReloadSpeedMult = 1,
}

// "ballistics"

SWEP.Damage_Max = 18
SWEP.Damage_Min = 15
SWEP.Range_Min = 1500 // distance for which to maintain maximum damage
SWEP.Range_Max = 5000 // distance at which we drop to minimum damage
SWEP.Penetration = 7 // units of metal this weapon can penetrate

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.375,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 22000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 750

SWEP.Spread = 0.0025

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 25
SWEP.RecoilResetTime = 0.1 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 0.5

SWEP.RecoilKick = 1

SWEP.RecoilSpreadPenalty = 0.0006
SWEP.HipFireSpreadPenalty = 0.025

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.4
SWEP.SightedSpeedMult = 0.35

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.42
SWEP.SprintToFireTime = 0.37

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(40, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.03, -2.5, -4.1)

SWEP.CorrectivePos = Vector(0, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/g36.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 4
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 100
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1.5
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/g36k.mdl"
SWEP.DropMagazineImpact = "plastic"

// sounds

local path = "tacrp/weapons/g36k/g36k_"
local path1 = "tacint_extras/xm8/"
SWEP.Sound_Shoot = "^" .. path1 .. "m249-1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
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
    ["deploy"] = "unholster",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}
SWEP.DeployTimeMult = 2.25

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        }
    },
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
    },
}


SWEP.Attachments = {
    -- [1] = {
    --     PrintName = "Optic",
    --     Category = {"ironsights", "optic_cqb", "optic_medium"},
    --     Bone = "ValveBiped.g36k_rootbone",
    --     WMBone = "Box01",
    --     InstalledElements = {"irons"},
    --     AttachSound = "TacRP/weapons/optic_on.wav",
    --     DetachSound = "TacRP/weapons/optic_off.wav",
    --     VMScale = 1,
    --     Pos_VM = Vector(-6.4, 0.14, 7),
    --     Pos_WM = Vector(0, 0, 2.75),
    --     Ang_VM = Angle(90, 0, 0),
    --     Ang_WM = Angle(0, -90, 0),
    -- },
    [1] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.6, 0.5, 26.5),
        Pos_WM = Vector(-0.25, 24, -1),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-3.75, -0.8, 17),
        Pos_WM = Vector(0.9, 15, -1),
        Ang_VM = Angle(90, 0, -80),
        Ang_WM = Angle(-70, -90, 0),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock2", "acc_sling", "acc_duffle", "extendedbelt", "acc_bipod"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
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

addsound("tacint_xm8.remove_clip", path1 .. "magout.wav")
addsound("tacint_xm8.insert_clip", path1 .. "magin.wav")
addsound("tacint_xm8.bolt_action", path .. "bolt_action.wav")
addsound("tacint_xm8.fire_select", path .. "fire_selector.wav")
addsound("tacint_xm8.Buttstock_Back", path .. "buttstock_back.wav")