AddCSLuaFile()

SWEP.Base					= "arc9_base"

SWEP.Spawnable				= true
SWEP.Category				= "ARC9 - Ready or Not"

SWEP.PrintName				= "PC9"
SWEP.TrueName				= "PFC19"

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_pist")
SWEP.Trivia = {
	Manufacturer	= "Polymer 80",
	Calibre			= "9x19mm",
	Mechanism		= "BlowBack",
	Country			= "Austria",
	Year			= 2017
}
if ARC9:UseTrueNames() then
	SWEP.PrintName				= SWEP.TrueName
    SWEP.Trivia.Manufacturer	= "Glock"
end

SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "unselles", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "RON developers", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "unselles", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.Description				= [[Chambered in 9x19, the G19's dependability and high capacity in an age when revolvers still rules the world have found it a permanent home in public and private security agencies worldwide.																(AIM ON THE EDGE OF THE FRONT IRON SIGHT, NOT ON THE DOT)]]


SWEP.ViewModel				= "models/weapons/arc9/PFC19.mdl"
SWEP.WorldModel				= "models/weapons/w_pistol.mdl"
SWEP.ViewModelFOVBase		= 65

SWEP.Slot					= 1
SWEP.Crosshair				= true

SWEP.MirrorVMWM				= true
SWEP.WorldModelOffset = {
	Pos				= Vector(-6, 5, 0),
	Ang				= Angle(-5, 0, 180),
	Scale				= 1
}

SWEP.DefaultBodygroups		= "0000000000000000000000"

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}

-------------------------- MAGAZINE

SWEP.Ammo						= "pistol" -- What ammo type this gun uses.
SWEP.ChamberSize				= 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize					= 17 -- Self-explanatory.
SWEP.SupplyLimit				= 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit		= 2 -- Amount of reserve UBGL magazines you can take.

SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_glock_19x.mdl" 
SWEP.DropMagazineSounds = {
"arc9_eft_shared/weap_magdrop_plastic.ogg"

}	-- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount				= 1 -- Amount of mags to drop.
SWEP.DropMagazineTime				= 0

-------------------------- FIREMODES

SWEP.RPM				= 454
SWEP.Firemodes = {
	{
		Mode				= 1
	},
}

-------------------------- MELEE

SWEP.Bash						= true
SWEP.PrimaryBash				= false

SWEP.BashDamage					= 50
SWEP.BashLungeRange				= 128
SWEP.BashRange					= 64
SWEP.PreBashTime				= 0.25
SWEP.PostBashTime				= 0.5

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.5
SWEP.RecoilCrouchMult = 0.5
SWEP.VisualRecoilCrouchMult = 0.5

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.5 * 0.85 -- patch 0.13.0.4.22617
SWEP.RecoilSide = 0.015 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.06
SWEP.RecoilRandomSide = 0.01

SWEP.RecoilDissipationRate = 0.5 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 5 -- Multiplier for automatic recoil control.



SWEP.UseVisualRecoil = true 

SWEP.VisualRecoil = 0.72
SWEP.VisualRecoilMultSights = 0.7

SWEP.VisualRecoilUp = 50 * 0.85 -- patch 0.13.0.4.22617
SWEP.VisualRecoilSide = 25 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 6 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(2, 16, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 2 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.5
SWEP.VisualRecoilPositionBumpUp = -0.009

SWEP.VisualRecoilSpringPunchDamping = 15 / 2.67
SWEP.VisualRecoilDampingConst = 250 * 1.67
SWEP.VisualRecoilSpringMagnitude = 1 / 1.67



SWEP.RecoilKick = 0.05 -- Camera recoil
SWEP.RecoilKickDamping = 10 -- Camera recoil damping

-------------------------- SPREAD

SWEP.Spread = 10.31 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.03
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

-------------------------- HANDLING

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = true 
SWEP.MalfunctionMeanShotsToFail = 333*2

SWEP.FreeAimRadius = 4
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

SWEP.AimDownSightsTime = 0.1 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 0 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos			= Vector(-6.43, -8, 2.5),
	Ang			= Angle(0, 0.1, 0),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos			= Vector(0, 15, -4),
		Ang			= Angle(0, 0, -45),
	},
	ViewModelFOV = 50,
	Magnification	= 1.1,
}

SWEP.ActivePos				= Vector(-4.5, -12, 2)
SWEP.ActiveAng				= Angle(0, 0, 0)

SWEP.SprintPos				= Vector(-4.5, -12, 2)
SWEP.SprintAng				= Angle(0, 0, 0)

SWEP.CrouchPos				= Vector(-4, -12, -1)
SWEP.CrouchAng				= Angle(0, 0, -10)

SWEP.CustomizeAng			= Angle(90, 0, 0)
SWEP.CustomizePos			= Vector(20, 25, 5)
SWEP.CustomizeSnapshotFOV	= 70

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeNPC = "pistol"

SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload				= false
SWEP.AnimDraw				= false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellCorrectAng		= Angle(0, 180, 0)
SWEP.ShellScale				= 1
SWEP.ShellPhysBox			= Vector(0.5, 0.5, 2)

SWEP.CamQCA					= 3
SWEP.CamOffsetAng			= Angle(0, 90, 0)
-------------------------- SOUNDS


local path					= ")^weapons/arc9_ron_g19/"
local common				= ")^weapons/arc9_ron_shared/"
SWEP.FirstShootSound			= path .. "Glock-1.ogg"
SWEP.ShootSound					= path .. "Glock-2.ogg"
SWEP.DistantShootSound			= path .. ""
SWEP.ShootSoundSilenced			= path .. "Glock-1-Suppressed.ogg"
SWEP.DistantShootSoundSilenced	= common .. ""
SWEP.DryFireSound				= path .. "weap_g19_dry_fire_01.ogg"

SWEP.ShootSound = {
    path .. "Glock-1.ogg",
    path .. "Glock-2.ogg",
    path .. "Glock-3.ogg",
    path .. "Glock-4.ogg"
}
SWEP.ShootSoundSilenced = {
    path .. "p90_Fire_1_Suppressed.ogg",
    path .. "p90_Fire_2_Suppressed.ogg",
    path .. "p90_Fire_3_Suppressed.ogg",
    path .. "p90_Fire_4_Suppressed.ogg"
}

SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ratel
SWEP.ExitSightsSound = ratel

SWEP.DistantShootSound = {
    path .. "P90_Reflection_Ext_Base_01.ogg",
    path .. "P90_Reflection_Ext_Base_02.ogg"
}
SWEP.DistantShootSoundIndoor = {
    path .. "Glock18_Reflection_Int_Base_01.ogg",
    path .. "Glock18_Reflection_Int_Base_02.ogg"
}

SWEP.DistantShootSoundSilenced = {
    common .. "P90_Suppressed_Reflection_EXT_Base_01.ogg",
    common .. "P90_Suppressed_Reflection_EXT_Base_02.ogg"
}
SWEP.DistantShootSoundSilencedIndoor = {
    common .. "P90_Suppressed_Reflection_Int_Base_01.ogg",
    common .. "P90_Suppressed_Reflection_Int_Base_02.ogg"
}

SWEP.FiremodeSound				= "weapons/arc9_ron_shared/SwitchToSemi.ogg"

local ci = CHAN_AUTO
local ratel = {path .. "char_foley_jingle_05.ogg", path .. "char_foley_jingle_02.ogg", path .. "char_foley_jingle_03.ogg"}
local rottle = {common .. "Cloth-CheckDone.ogg", common .. "Cloth-CheckInspect.ogg", common .. "Cloth-CheckMagOut.ogg", common .. "Cloth-CheckB4MagIn.ogg", common .. "char_foley_jingle_06.ogg"}

SWEP.ReloadInSights				= true -- This weapon can aim down sights while reloading.
if anim == "unjam" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam1"
    end

SWEP.Animations = {

	["idle"] = {
		Source				= "idle",
		Time				= 1
	},
	["idle_empty"] = {
		Source				= "idle_empty",
		Time				= 4
	},
	["draw"] = {
		Source				= "draw",
		EventTable = {
			{s	= common .. "Universal_Long_Draw_02.ogg",			t = 0.35},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["draw_empty"] = {
		Source				= "draw_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= common .. "raise.ogg",			t = 0},
			{s	= common .. "shoulder.ogg",			t = 0.15},
			{s	= ratel,							t = 0.2},
		},
	},
	["holster"] = {
		Source				= "holster",
		Time				= 20 / 30,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "Universal_Long_Holster_02.ogg",			t = 0},
		},
	},
	["holster_empty"] = {
		Source				= "holster_empty",
		Time				= 20 / 30,
		EventTable = {
			{s	= ratel,							t = 0},
			{s	= common .. "cloth_6.ogg",			t = 0.2},
		},
	},
	["fire"] = {
		Source				= "fire",
		Time				= 0.8,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= {
		
				path .. "",
				path .. ""
			},										t = 0.03},
		},
	},
	["fire_empty"] = {
		Source				= "fire_empty",
		Time				= 16 / 30,
		ShellEjectAt				= 0.03,
		EventTable = {
			{s	= path .. "mech_last.ogg",			t = 0},
		},
	},
	["fire_jammed"] = {
        Source = "cycle",
        EventTable = {{ s = path .. "mech.ogg", t = 0 }},
    },

	["unjam"] = {
		Source				= "unjam",
		
	},
	["jam1"] = {
		Source				= "fix",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
		        EjectAt = 2.76

	},
	["fix_empty"] = {
		Source				= "fix_empty",
		Time				= 45 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_100"] = {
		Source				= "fix_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},
	["fix_empty_100"] = {
		Source				= "fix_empty_100",
		Time				= 50 / 30,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.15},
			{s	= common .. "cloth_4.ogg", 			t = 0.5},
			{s	= path .. "chamber.ogg", 			t = 0.55},
		},
	},

	["cycle"] = {
		Source				= "fix",
		Time				= 36 / 30 * 0.7,
		ShellEjectAt				= 0.3,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.4,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.6,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{s	= path .. "chback.ogg",				t = 0.05},
			{s	= common .. "cloth_4.ogg", 			t = 0.2},
			{s	= path .. "chamber.ogg", 			t = 0.3},
		},
	},

	-- Reloads --

	["reload"] = {
		Source				= "reload",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				=  2.45,
		MinProgress				= 1.1,
		LastClip1OutTime				= 0.9,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.35},
			{v1	= 10000, v2	= 20000, vt	= 0.3,	t = 0.9},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 1.55},
			{FOV = -6,
			FOV_Start = 1.4,
			FOV_End = 1.7,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{s	= ratel,							t = 0},
			{s = path .. "weap_g19_tac_reload_01.ogg",		t = 0},
			{s	= ratel,							t = 1},
		},
	},
	["reload_empty"] = {
		Source				= "reload_empty",
		TPAnim				= ACT_HL2MP_GESTURE_RELOAD_AR2,
		Time				= 88 / 30,
		MinProgress				= 1,
		LastClip1OutTime				= 0.7,
		IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},
		EventTable = {
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 0},
			{v1	= 10000, v2	= 10000, vt	= 0.1,	t = 0.4},
			{v1	= 10000, v2	= 20000, vt	= 0.1,	t = 0.9},
			{v1	= 40000, v2	= 40000, vt	= 0.2,	t = 1.7},
			{v1	= 0, v2	= 5000, vt	= 0.1,		t = 2.1},
			{FOV = -6,
			FOV_Start = 1.8,
			FOV_End = 2.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 0},
			{FOV = 6,
			FOV_Start = 0.2,
			FOV_End = 0.4,
			FOV_FuncStart = ARC9.Ease.OutCirc,
			FOV_FuncEnd = ARC9.Ease.InCirc,	t = 1.8},
			{s = rattel,								t = 0},
			{s = path .. "weap_g19_reload_empty_01.ogg",			t = 0, c = ci},
		},
	},
	
	-- Inspect --
	
	["inspect_enter"] = {
        Source = "inspect_enter",
		Time				= 2,
			IKTimeLine = {
			{
				t				= 0,
				lhik				= 1,
				rhik				= 1
			},
			{
				t				= 0.2,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 0.75,
				lhik				= 0,
				rhik				= 0
			},
			{
				t				= 1,
				lhik				= 1,
				rhik				= 1
			},
		},

		EventTable = {

			{s	= ratel,							t = 0.1},
			{s	= path .. "weap_g19_mag_check_01.ogg",			t = 0, c = ci},
			{s	= common .. "Cloth-ReloadStart.ogg",			t = 0.2 },
			{s	= common .. "Cloth-DryReloadEndGrab.ogg",			t = 1},
		},
	},
}

-------------------------- ATTACHMENTS


SWEP.Attachments = {

    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_glock"},
        Bone = "J_Gun",
        Pos = Vector(0, -15, -1),
        Ang = Angle(90, -90, 90),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },


    {
        PrintName = "Tactical",
        Bone = "j_gun",
        Category = {"eft_tactical_pistol", "eft_g17_tac"},
        Pos = Vector(0, 3.55, -.35),
        Scale = 1.1,
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },

    {
        PrintName = "Magazine",
        Category = "eft_g17_mag",
        Bone = "tag_mag_01",
        Pos = Vector(0, .75, -.5),
        Ang = Angle(0, -90, 0),
        Scale = 1.1,
        Icon_Offset = Vector(0, 0, 0),
//Installed = "eft_mag_g17_std_17",
	   DuplicateModels = {
            {
                Bone = "tag_mag_02",
            },
        },

    },    
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "tag_barrel",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -1.2, -4),
        Ang = Angle(0, 0, 0),
    },

    {
        PrintName = "Sticker",
        StickerModel = "models/weapons/stickers/v_models/akimbo_sawed_b.mdl",
        Bone = "J_Gun",
        Pos = Vector(4.45, -22, 1),
        Ang = Angle(0, -90, 0),
        Scale = 0.5,

        Category = "stickers",
    },



}
SWEP.AttachmentElements = {
    ["hasmag"] = {
        Bodygroups = {
            {2, 1},
        },
    },
}

SWEP.EFTErgo = 25 //93
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm