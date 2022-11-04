SkeezeACS = {}

SkeezeACS.License = 'SkeezeAC-6R6jukj1V7ApzGtkNvWS'
SkeezeACS.MainWebhook = 'https://discord.com/api/webhooks/947091006812209214/xAanYxlH8I5P4OuTj4JKT8o3DBMjV7H3WyZ24_EjeE40cgNOm1SjDAlYAcp9XzHxBbEp'
SkeezeACS.BanWebhook = 'https://discord.com/api/webhooks/947090597414580264/HEjqA9sAvot8MQN7tp7fBekADmq0j9rL4w-2JvXz0Cvhs2xdrGdOvHDkCM2AoumdHgr-'
SkeezeACS.KickWebhook = 'https://discord.com/api/webhooks/946842086160879617/p0Ge-8oKzW4pJPIsSQsD0bMY9VybcdRQ6IpNCNplqgmJwcW3Ccnwl8oByT7wVFO6TdQK'
SkeezeACS.ScreenshotWebhook = 'https://discord.com/api/webhooks/946841861253898310/2YI5jsy0E0J4hsR-jR12pkPR16XYbykZqdQl-Xs-N4wtzUjhG870ctZuFvpoA5JE-ewu'
SkeezeACS.YourDiscord = 'https://discord.gg/dailyrp'

SkeezeACS.ESX = true
SkeezeACS.ESXShareObject = 'esx:getSharedObject'

SkeezeACS.ScreenshotBasic = true

SkeezeACS.AntiSpoof = true

SkeezeACS.AntiWeaponPickup = true
SkeezeACS.GeneralDetection = true -- Like Anti Infinite Ammo, Anti Reset

SkeezeACS.AntiVPN = false
SkeezeACS.WhitelistedIPS = {
    ["IP"] = true,
}

SkeezeACS.AntiXSS = true

SkeezeACS.AntiParticles = {
	Enabled = true,
	Action  = 'ban',
	Limit 	= 2
}

SkeezeACS.BlacklistedEvents = {
	Enabled = true,
	Action = 'ban',
	List = {
		'bringplayertohome',
		'lester:vendita',
		'esx:getmoney'
	}
}

SkeezeACS.AntiBlips = {
	Enabled = false, 
	Action = 'ban'
}

SkeezeACS.AntiNoclip = {
	Enabled = false,
	Action = 'ban'
}

SkeezeACS.SuperJump = {
	Enabled = true,
	Action  = 'ban'
}

SkeezeACS.AntiClearPedTaskEvent = {
	Enabled = true,
	Action  = 'ban'
} 

SkeezeACS.GiveWeaponRemoveWeapon = {
	Enabled = true,
	Action  = 'ban'
} 

SkeezeACS.AntiGodMode = {
	Enabled = true,
	Action  = 'ban',
	LocationsWhitelist = { -- Like Greenzone or another Zone
		{coords = vector3(59.9, -1371.7, 29.3), RadiusOfWhitelist = 50.0},
	}
}

SkeezeACS.AntiPedModifier = {
	Enabled = false,
	Action  = 'ban'
}

SkeezeACS.AntiStopper = {
	Enabled = true,
	Action  = 'ban'
}

SkeezeACS.AntiSpectate = {
	Enabled = true,
	Action  = 'ban'
}

SkeezeACS.AntiFreecam = {
	Enabled = false,
	Action  = 'ban'
}

SkeezeACS.AntiSpeedrun = {
	Enabled = true,
	Action  = 'kick',
	MaxSpeed = 12.1
}

SkeezeACS.AntiNuiDevtools = {
	Enabled = true,
	Action  = 'ban'
}

SkeezeACS.AntiExplosionBullet = {
	Enabled = true,
	Action  = 'ban'
}

SkeezeACS.AntiMaxArmour = {
	Enabled = false,
	Action  = 'ban',
	MaxArmour = 200
}

SkeezeACS.AntiNightVision = {
	Enabled = true,
	Action  = 'ban',
}

SkeezeACS.AntiThermalVision = {
	Enabled = true,
	Action  = 'ban',
}

SkeezeACS.AntiTeleport = {
	Enabled = false,
	Action  = 'ban',
}

SkeezeACS.AntiInvisible = {
	Enabled = false,
	Action  = 'ban',
	LocationsWhitelist = { -- Like Vehicleshop
		{coords = vector3(59.9, -1371.7, 29.3), RadiusOfWhitelist = 50.0},
	}
}

SkeezeACS.AntiInjection = {
	Enabled = true,
	Action  = 'ban',
}


SkeezeACS.BlacklistedWeapons = {
	Enabled = true,
	Action  = 'ban',
	List = {
		"WEAPON_DAGGER",
		"WEAPON_BOTTLE ",
		"WEAPON_CROWBAR",
		"WEAPON_HATCHET",
		"WEAPON_MACHETE",
		"WEAPON_WRENCH",
		"WEAPON_BATTLEAXE",
		"WEAPON_POOLCLUE",
		"WEAPON_STONE_HATCHET",
		"WEAPON_APPISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_SNSPISTOL",
		"WEAPON_SNSPISTOL_MK2",
		"WEAPON_HEAVYPISTOL",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_FLAREGUN",
		"WEAPON_MARKSMANPISTOL",
		"WEAPON_REVOLVER",
		"WEAPON_REVOLVER_MK2",
		"WEAPON_DOUBLEACTION",
		"WEAPON_RAYPISTOL",
		"WEAPON_CAREMICPISTOL",
		"WEAPON_NAVYREVOLVER",
		"WEAPON_GADGETPISTOL",
		"WEAPON_MICROSMG",
		"WEAPON_SMG_MK2",
		"WEAPON_ASSAULTSMG",
		"WEAPON_MACHINEPISTOL",
		"WEAPON_RAYCARBINE",
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_PUMPSHOTGUN_MK2",
		"WEAPON_ASSAULTSHOTGUN",
		"WEAPON_BULLPUPSHOTGUN",
		"WEAPON_MUSKET",
		"WEAPON_HEAVYSHOTGUN",
		"WEAPON_DBSHOTGUN",
		"WEAPON_AUTOSHOTGUN",
		"WEAPON_COMBATSHOTGUN",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_BULLPUPRIFLE",
		"WEAPON_BULLPUPRIFLE_MK2",
		"WEAPON_MILITARYRIFLE",
		"WEAPON_HEAVYRIFLE",
		"WEAPON_MG",
		"WEAPON_COMBATMG",
		"WEAPON_COMBATMG_MK2",
		"WEAPON_GUSENBERG",
		"WEAPON_SNIPERRIFLE",
		"WEAPON_HEAVYSNIPER",
		"WEAPON_HEAVYSNIPER_MK2",
		"WEAPON_MARKSMANRIFLE",
		"WEAPON_MARKSMANRIFLE_MK2",
		"WEAPON_RPG",
		"WEAPON_GRENADELAUNCHER",
		"WEAPON_GRENADELAUNCHER_SMOKE",
		"WEAPON_MINIGUN",
		"WEAPON_FIREWORK",
		"WEAPON_RAILGUN",
		"WEAPON_HOMINGLAUNCHER",
		"WEAPON_COMPACTLAUNCHER",
		"WEAPON_RAYMINIGUN",
		"WEAPON_EMPLAUNCHER",
		"WEAPON_GRENADE",
		"WEAPON_BZGAS",
		"WEAPON_MOLOTOV",
		"WEAPON_STICKYBOMB",
		"WEAPON_PROXMINE",
		"WEAPON_SNOWBALL",
		"WEAPON_PIPEBOMB",
		"WEAPON_BALL",
		"WEAPON_SMOKEGRENADE",
		"WEAPON_FLARE",
		"WEAPON_HAZARDCAN",
		"WEAPON_FERTILIZERCAN",
		"WEAPON_PISTOL",
		"WEAPON_PISTOL_MK2",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_MINISMG"
	}
}

SkeezeACS.BlacklistedWords = {
	Enabled = true,
	Action  = 'kick',
	List = {
		"kanker",
		"neger",
		"nigga",
		"kk",
		"zortus",
		"a3zi",
		"kankerhoer",
	}
}

SkeezeACS.AntiSpammer = {
	Enabled = true,
	Action  = 'ban',
	Vehicle = true,
	VehicleLimit = 5,
	Ped = true,
	PedLimit = 2,
	Object = true,
	ObjectLimit = 10
}

SkeezeACS.AntiJail = {
	Enabled = true,
	Action = 'ban',
	JailTrigger = 'esx-qalle-jail:jailPlayer'
}

SkeezeACS.AntiDamageModifier = {
	Enabled = true,
	Action = 'ban',
}

SkeezeACS.AntiAimbot = false -- Beta

SkeezeACS.AntiTaze = {
	Enabled = true,
	Action = 'ban',
}

SkeezeACS.AntiSpamTrigger = {
	Enabled = true,
	Action = 'kick',
	List = {
		[1] = {
			Trigger = "esx_dmvschool:pay",
			MaxTime = 5
		}
	}
}

SkeezeACS.BlacklistedKeys = {
	Enabled = true,
	Action = 'log', -- kick/log/ban
	List = {
		[178] = {KeyLabel = "DELETE"},
		[121] = {KeyLabel = "INSERT"},
	}
}

SkeezeACS.StaffWhitelist = {
	Enabled = true,
	List = {
		"steam:1100001419a5601", -- Alem
		"steam:110000119018c42", -- Planet
		"steam:1100001378dea2b", -- Mely
		"steam:1100001490bf4ff", -- Golie
		"steam:11000014599d48d", -- Swiper
		"steam:1100001489e032d", -- Rixy
		"steam:11000013d9480f6", -- Oli
		"steam:11000011144a940", -- Morking
		"steam:110000141aec96d", -- Pozed
		"steam:11000014a40a310", -- Lars
		"steam:11000014ad57236", -- Lars
		"steam:1100001439db841", -- Mo
		"steam:110000136ed5a77", -- Mo
		"steam:110000142578e7e", -- Bruce
		"steam:110000144428701", -- Mosaab
		"steam:1100001000056ba", -- Marino
		"steam:1100001415d50f1", -- v3x
		"steam:1100001129477a5", -- tristan
		"steam:1100001344cc7a1", -- nick
		"steam:110000143f7d58e", -- Esmee
		"steam:110000113288825", -- Wick T
		"steam:110000141c972a5" -- Bassie
	}
}

SkeezeACS.BlacklistedObjectsVehiclePeds = {
	Enabled = true,
	Action = 'ban',
	BlackListedVehicles = {
		"skylift",
		"valkyrie2",
		"airbus",
		"hunter",
		"bus",
		"armytanker",
		"armytrailer",
		"armytrailer2",
		"baletrailer",
		"cablecar",
		"docktrailer",
		"freighttrailer",
		"graintrailer",
		"proptrailer",
		"raketrailer",
		"tr2",
		"tug",
		"tr3",
		"tr4",
		"trflat",
		"tvtrailer",
		"tanker",
		"tanker2",
		"trailerlarge",
		"trailerlogs",
		"trailersmall",
		"trailers2",
		"trailers3",
		"trailers4",
		'RHINO',
		'AKULA',
		'SAVAGE',
		'HUNTER',
		'BUZZARD2',
		'ANNIHILATOR',
		'VALKYRIE',
		'HYDRA',
		'APC',
		'Trailersmall2',
		'Lazer',
		'oppressor',
		'mogul',
		'barrage',
		'Khanjali',
		'volatol',
		'chernobog',
		'avenger',
		'stromberg',
		'nightshark',
		'besra',
		'babushka ',
		'starling',
		'insurgent',
		'cargobob',
		'cargobob2',
		'cargobob3',
		'cargobob4',
		'caracara',
		'deluxo',
		'menacer',
		'scramjet',
		'oppressor2',
		'revolter',
		'viseris',
		'savestra',
		'thruster',
		'ardent',
		'dune3',
		'tampa3',
		'halftrack',
		'nokota',
		'strikeforce',
		'bombushka',
		'molotok',
		'pyro',
		'ruiner2',
		'limo2',
		'technical',
		'technical2',
		'technical3',
		'jb700w',
		'blazer5',
		'insurgent3',
		'boxville5',
		'bruiser',
		'bruiser2',
		'bruiser3',
		'brutus',
		'brutus2',
		'brutus3',
		'cerberus',
		'cerberus2',
		'cerberus3',
		'dominator4',
		'dominator5',
		'dominator6',
		'impaler2',
		'impaler3',
		'impaler4',
		'imperator',
		'imperator2',
		'imperator3',
		'issi4',
		'issi5',
		'issi6',
		'monster3',
		'monster4',
		'monster5',
		'scarab',
		'scarab2',
		'scarab3',
		'slamvan4',
		'slamvan5',
		'slamvan6',
		'zr380',
		'zr3802',
		'zr3803',
		'alphaz1',
		'avenger2',
		'blimp',
		'blimp2',
		'blimp3',
		'cargoplane',
		'cuban800',
		'dodo',
		'duster',
		'howard',
		'jet',
		'luxor',
		'luxor2',
		'mammatus',
		'microlight',
		'miljet',
		'nimbus',
		'rogue',
		'seabreeze',
		'shamal',
		'stunt',
		'titan',
		'tula',
		'velum',
		'velum2',
		'vestra',
		'dump',
		'rumpo',
		'Tipper',
		'DockHandler',
		'Dozer',
		'Dump',
		'Mixer',
		'Tipper',
		'Burrito1',
		'Burrito2',
		'cerberus',
		'cerberus2',
		'cerberus3',
		'hauler',
		'hauler2',
		'mule',
		'mule2',
		'mule3',
		'mule4',
		'packer',
		'phantom2',
		'phantom3',
		'pounder',
		'pounder2',
		'stockade'
	},
	BlackListedPeds = {
		"a_m_m_acult_01",
		"s_m_y_swat_01",
		"a_m_o_acult_01",
		"ig_wade",
		"s_m_y_hwaycop_01",
		"A_M_Y_ACult_01",
		's_m_m_movalien_01',
		's_m_m_movallien_01',
		'u_m_y_babyd',
		'CS_Orleans',
		'A_M_Y_ACult_01',
		'S_M_M_MovSpace_01',
		'U_M_Y_Zombie_01',
		's_m_y_blackops_01',
		'a_f_y_topless_01',
		"s_f_y_bartender_01",
		"a_m_y_beachvesp_01",
		"a_m_y_beach_03",
		"a_m_y_beach_02",
		"a_m_m_beach_02",
		"a_m_y_beach_01",
		"s_m_y_baywatch_01",
		"mp_f_boatstaff_01",
		"u_m_m_bikehire_01", 
		"a_f_y_bevhills_04",
		"s_m_m_bouncer_01",
		"s_m_y_armymech_01", 
		"s_m_y_autopsy_01",
		"s_m_y_blackops_01",
		"s_m_y_blackops_02"
	},
	BlacklistedEntitys = {
		"stt_prop_stunt_track_uturn",
		"stt_prop_stunt_track_turnice",
		"stt_prop_stunt_track_hill",
		"prop_gold_cont_01",
		"p_cablecar_s",
		"a_m_m_hasjew_01",
		"a_m_y_hasjew_01",
		"stt_prop_stunt_tube_l",
		"stt_prop_stunt_track_dwuturn",
		"prop_fnclink_05crnr1",
		"xs_prop_hamburgher_wl",
		"xs_prop_plastic_bottle_wl",
		"prop_windmill_01",
		"p_spinning_anus_s",
		"stt_prop_ramp_adj_flip_m",
		"stt_prop_ramp_adj_flip_mb",
		"stt_prop_ramp_adj_flip_s",
		"stt_prop_ramp_adj_flip_sb",
		"stt_prop_ramp_adj_hloop",
		"stt_prop_ramp_adj_loop",
		"stt_prop_ramp_jump_l",
		"stt_prop_ramp_jump_m",
		"stt_prop_ramp_jump_s",
		"stt_prop_ramp_jump_xl",
		"stt_prop_ramp_jump_xs",
		"stt_prop_ramp_jump_xxl",
		"stt_prop_ramp_multi_loop_rb",
		"stt_prop_ramp_spiral_l",
		"stt_prop_ramp_spiral_l_l",
		"stt_prop_ramp_spiral_l_m",
		"stt_prop_ramp_spiral_l_s",
		"stt_prop_ramp_spiral_l_xxl",
		"stt_prop_ramp_spiral_m",
		"stt_prop_ramp_spiral_s",
		"stt_prop_ramp_spiral_xxl",
		"stt_prop_stunt_track_dwslope30",
		"-145066854",
		"stt_prop_stunt_track_start",
		"stt_prop_stunt_track_slope45",
		"stt_prop_stunt_track_slope30",
		"stt_prop_stunt_track_slope15",
		"stt_prop_stunt_track_short",
		"stt_prop_stunt_track_sh45_a",
		"stt_prop_stunt_track_sh45",
		"stt_prop_stunt_track_sh30",
		"stt_prop_stunt_track_sh15",
		"stt_prop_stunt_track_otake",
		"stt_prop_stunt_track_link",
		"stt_prop_stunt_track_jump",
		"stt_prop_stunt_track_hill2",
		"stt_prop_stunt_track_hill",
		"stt_prop_stunt_track_funnel",
		"stt_prop_stunt_track_funlng",
		"stt_prop_stunt_track_fork",
		"stt_prop_stunt_track_exshort",
		"stt_prop_stunt_track_dwuturn",
		"stt_prop_stunt_track_dwturn",
		"stt_prop_stunt_track_dwslope45",
		"stt_prop_stunt_track_dwslope30",
		"stt_prop_stunt_track_dwslope15",
		"stt_prop_stunt_track_dwshort",
		"stt_prop_stunt_track_dwsh15",
		"stt_prop_stunt_track_dwlink_02",
		"stt_prop_stunt_track_dwlink",
		"stt_prop_stunt_track_cutout",
		"stt_prop_stunt_track_bumps",
		"stt_prop_stunt_target_small",
		"stt_prop_stunt_target",
		"stt_prop_stunt_soccer_sball",
		"stt_prop_stunt_soccer_lball",
		"stt_prop_stunt_soccer_goal",
		"stt_prop_stunt_soccer_ball",
		"stt_prop_stunt_ramp",
		"stt_prop_stunt_landing_zone_01",
		"stt_prop_stunt_jump_sb",
		"stt_prop_stunt_jump_s",
		"stt_prop_stunt_jump_mb",
		"stt_prop_stunt_jump_m",
		"stt_prop_stunt_jump_loop",
		"stt_prop_stunt_jump_lb",
		"stt_prop_stunt_jump_l",
		"stt_prop_stunt_jump45",
		"stt_prop_stunt_jump30",
		"stt_prop_stunt_jump15",
		"stt_prop_stunt_domino",
		"prop_doghouse_01",
	}
}



-- Explosions
SkeezeACS.AntiExplosion = true
SkeezeACS.ExplosionsList = {
	{	id = 0, 	name = "Grenade", 				ban = true,  maxexplosion = 1 },
	{	id = 1, 	name = "GrenadeLauncher", 		ban = true,  maxexplosion = 1 },
	{	id = 2, 	name = "PipeBoomb", 			ban = true,  maxexplosion = 1 },
	{	id = 3, 	name = "PipeBoomb", 			ban = true,  maxexplosion = 1 },
	{	id = 4, 	name = "Molotov", 				ban = true,  maxexplosion = 1 },
	{	id = 5, 	name = "TankShell", 			ban = true,  maxexplosion = 1 },
	{	id = 6, 	name = "Hi_Octane", 			ban = false, maxexplosion = 1 },
	{	id = 7, 	name = "Car", 					ban = false, maxexplosion = 1 },
	{	id = 8, 	name = "Plance", 				ban = false, maxexplosion = 1 },
	{	id = 9, 	name = "PetrolPump", 			ban = false, maxexplosion = 10 },
	{	id = 10, 	name = "Bike", 					ban = false, maxexplosion = 1 },
	{	id = 11, 	name = "Dir_Steam", 			ban = false, maxexplosion = 1 },
	{	id = 12, 	name = "Dir_Flame", 			ban = false, maxexplosion = 3 },
	{	id = 13, 	name = "Dir_Water_Hydrant", 	ban = false, maxexplosion = 4 },
	{	id = 14, 	name = "Dir_Gas_Canister", 		ban = false, maxexplosion = 6 },
	{	id = 15, 	name = "Boat", 					ban = false, maxexplosion = 1 },
	{	id = 16, 	name = "Ship_Destroy", 			ban = false, maxexplosion = 1 },
	{	id = 17, 	name = "Truck", 				ban = false, maxexplosion = 1 },
	{	id = 18, 	name = "Bullet", 				ban = false, maxexplosion = 1 },
	{	id = 19, 	name = "SmokeGrenadeLauncher",	ban = true,  maxexplosion = 1 },
	{	id = 20, 	name = "SmokeGrenade", 			ban = false,  maxexplosion = 1 },
	{	id = 21, 	name = "BZGAS", 				ban = true,  maxexplosion = 1 },
	{	id = 22, 	name = "Flare", 				ban = true,  maxexplosion = 1 },
	{	id = 23, 	name = "Gas_Canister", 			ban = false, maxexplosion = 1 },
	{	id = 24, 	name = "Extinguisher",			ban = false, maxexplosion = 1 },
	{	id = 25, 	name = "Programmablear", 		ban = false, maxexplosion = 1 },
	{	id = 26, 	name = "Train", 				ban = false, maxexplosion = 1 },
	{	id = 27, 	name = "Barrel", 				ban = false, maxexplosion = 1 },
	{	id = 28, 	name = "PROPANE", 				ban = false, maxexplosion = 1 },
	{	id = 29, 	name = "Blimp", 				ban = true, maxexplosion = 1 },
	{	id = 30, 	name = "Dir_Flame_Explode", 	ban = false, maxexplosion = 1 },
	{	id = 31, 	name = "Tanker", 				ban = true, maxexplosion = 1 },
	{	id = 32, 	name = "PlaneRocket", 			ban = false, maxexplosion = 1 },
	{	id = 32, 	name = "PlaneRocket", 			ban = false, maxexplosion = 1 },
	{	id = 34, 	name = "Gas_Tank", 				ban = false, maxexplosion = 1 },
	{	id = 33, 	name = "VehicleBullet", 		ban = true,  maxexplosion = 1 },
	{	id = 35, 	name = "FireWork", 				ban = true,  maxexplosion = 1 },
	{	id = 36, 	name = "SnowBall", 				ban = false, maxexplosion = 1 },
	{	id = 37, 	name = "ProxMine", 				ban = true,  maxexplosion = 1 },
	{	id = 38, 	name = "Valkyrie_Cannon", 		ban = true,  maxexplosion = 1 },
}

SkeezeACS.Locales = {
	DamageModifier = "Damage Modifier Detected",
	Aimbot = "Aimbot Detected",
	Noclip = "Noclip Detected!",
	Godmode = "Anti GodMode Detected!",
	Teleport = "Anti Teleport Detected!",
	Invisible = "Anti Invisible Detected!",
	PedModifier = "Anti Ped Modifier!",
	Speedrun = "Anti Speedrun!",
	BlacklistedKey = "Anti Blacklisted Key!",
	AntiArmour = "Anti Max Armour!",
	AntiInjection = "Anti Injection! Menu: ",
	ResourceStop = "Stopped a Resource!",
	Spectate = "Anti Spectate!",
	NuiDevTools = "Anti Nui Dev Tools!",
	Explosionbullet = "Anti Explosion Bullet!",
	Freecam = "Anti Freecam!",
	BlacklistedWeapon = "Blacklisted Weapon! Weapon:",
	NightVision = "Anti Night Vision!",
	ThermalVision = "Anti Thermal Vision!",
	Blips = "Anti Blips!",
	SuperJump = "Anti Superjump!",
	ClearPedTasksEvent = "Tried to remove a Player From Car!(Clear Ped Task)",
	RemoveWeapon = "Tried to remove a Weapon from a Player!",
	GiveWeapon = "Tried to give a Weapon to a Player!",
	NameNotAllowed = "Your name is not allowed!",
	AntiVPN = "We've detected a VPN/Proxy in your machine. Please disable it or ask the server owners.", 
	Particles = "Particles Detected!",
	JailAll = "Tried to Jail All!",
	BlacklistedExplosion = "Tried to spawn Blacklisted Explosion! Type: ",
	SpammingObjects = "Spamming Objects!",
	SpawningWeapon = "Tried to Spawn a Weapon but don't owned the Weapon! Weapon: "
}