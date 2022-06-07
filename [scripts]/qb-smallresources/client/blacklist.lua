local weaponblacklist = {
	--[[Vehicle Weapon Blacklist
	"VEHICLE_WEAPON_ROTORS",
	"VEHICLE_WEAPON_TANK",
	"VEHICLE_WEAPON_SPACE_ROCKET",
	"VEHICLE_WEAPON_PLANE_ROCKET",
	"VEHICLE_WEAPON_PLAYER_LAZER",
	"VEHICLE_WEAPON_PLAYER_LASER",
	"VEHICLE_WEAPON_PLAYER_BULLET",
	"VEHICLE_WEAPON_PLAYER_BUZZARD",
	"VEHICLE_WEAPON_PLAYER_HUNTER",
	"VEHICLE_WEAPON_ENEMY_LASER",
	"VEHICLE_WEAPON_SEARCHLIGHT",
	"VEHICLE_WEAPON_RADAR",
	"VEHICLE_WEAPON_TURRET_INSURGENT",
	"VEHICLE_WEAPON_TURRET_TECHNICAL",
	"VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE",
	"VEHICLE_WEAPON_PLAYER_SAVAGE",
	"VEHICLE_WEAPON_TURRET_LIMO",
	"VEHICLE_WEAPON_CANNON_BLAZER",
	"VEHICLE_WEAPON_TURRET_BOXVILLE",
	"VEHICLE_WEAPON_RUINER_BULLET",
	"PICKUP_HANDCUFF_KEY",
	"PICKUP_CUSTOM_SCRIPT",
	"PICKUP_CAMERA",
	"PICKUP_PORTABLE_PACKAGE",
	"PICKUP_PORTABLE_CRATE_UNFIXED",
	"PICKUP_PORTABLE_CRATE_UNFIXED_INCAR",
	"PICKUP_MONEY_CASE",
	"PICKUP_MONEY_WALLET",
	"PICKUP_MONEY_PURSE",
	"PICKUP_MONEY_DEP_BAG",
	"PICKUP_MONEY_MED_BAG",
	"PICKUP_MONEY_PAPER_BAG",
	"PICKUP_MONEY_SECURITY_CASE",
	"PICKUP_VEHICLE_WEAPON_COMBATPISTOL",
	"PICKUP_VEHICLE_WEAPON_APPISTOL",
	"PICKUP_VEHICLE_WEAPON_PISTOL",
	"PICKUP_VEHICLE_WEAPON_GRENADE",
	"PICKUP_VEHICLE_WEAPON_MOLOTOV",
	"PICKUP_VEHICLE_WEAPON_SMOKEGRENADE",
	"PICKUP_VEHICLE_HEALTH_STANDARD",
	"PICKUP_VEHICLE_ARMOUR_STANDARD",
	"PICKUP_VEHICLE_WEAPON_MICROSMG",
	"PICKUP_VEHICLE_WEAPON_SMG",
	"PICKUP_VEHICLE_WEAPON_SAWNOFF",
	"PICKUP_VEHICLE_CUSTOM_SCRIPT",
	"PICKUP_VEHICLE_MONEY_VARIABLE",
	-- Weapon Ammo Blacklist
	"PICKUP_SUBMARINE",
	"PICKUP_HEALTH_SNACK",
	"PICKUP_PARACHUTE",
	"PICKUP_AMMO_PISTOL",
	"PICKUP_AMMO_PISTOL_MK2",
	"PICKUP_AMMO_COMBATPISTOL",
	"PICKUP_AMMO_APPISTOL",
	"PICKUP_AMMO_STUNGUN",
	"PICKUP_AMMO_PISTOL50",
	"PICKUP_AMMO_SNSPISTOL",
	"PICKUP_AMMO_SNSPISTOL_MK2",
	"PICKUP_AMMO_HEAVYPISTOL",	
	"PICKUP_AMMO_VINTAGEPISTOL",	
	"PICKUP_AMMO_FLAREGUN",	
	"PICKUP_AMMO_MARKSMANPISTOL",	
	"PICKUP_AMMO_REVOLVER",	
	"PICKUP_AMMO_REVOLVER_MK2",	
	"PICKUP_AMMO_DOUBLEACTION",	
	"PICKUP_AMMO_RAYPISTOL",	
	"PICKUP_AMMO_CERAMICPISTOL",
	"PICKUP_AMMO_NAVYREVOLVER",
	"PICKUP_AMMO_MICROSMG",
	"PICKUP_AMMO_SMG",
	"PICKUP_AMMO_SMG_MK2",
	"PICKUP_AMMO_ASSAULTSMG",
	"PICKUP_AMMO_COMBATPDW",	
	"PICKUP_AMMO_MACHINEPISTOL",
	"PICKUP_AMMO_MINISMG",
	"PICKUP_AMMO_RAYCARBINE",
	"PICKUP_AMMO_PUMPSHOTGUN",
	"PICKUP_AMMO_PUMPSHOTGUN_MK2",
	"PICKUP_AMMO_SAWNOFFSHOTGUN",
	"PICKUP_AMMO_ASSAULTSHOTGUN",
	"PICKUP_AMMO_BULLPUPSHOTGUN",
	"PICKUP_AMMO_MUSKET",
	"PICKUP_AMMO_HEAVYSHOTGUN",
	"PICKUP_AMMO_DBSHOTGUN",
	"PICKUP_AMMO_AUTOSHOTGUN",
	"PICKUP_AMMO_ASSAULTRIFLE",
	"PICKUP_AMMO_ASSAULTRIFLE_MK2",
	"PICKUP_AMMO_CARBINERIFLE",
	"PICKUP_AMMO_CARBINERIFLE_MK2",	
	"PICKUP_AMMO_ADVANCEDRIFLE",
	"PICKUP_AMMO_SPECIALCARBINE",
	"PICKUP_AMMO_SPECIALCARBINE_MK2",
	"PICKUP_AMMO_BULLPUPRIFLE",
	"PICKUP_AMMO_BULLPUPRIFLE_MK2",
	"PICKUP_AMMO_COMPACTRIFLE",
	"PICKUP_AMMO_MG",			
	"PICKUP_AMMO_COMBATMG",	
	"PICKUP_AMMO_COMBATMG_MK2",	
	"PICKUP_AMMO_GUSENBERG",	
	"PICKUP_AMMO_SNIPERRIFLE",	
	"PICKUP_AMMO_HEAVYSNIPER",	
	"PICKUP_AMMO_HEAVYSNIPER_MK2",	
	"PICKUP_AMMO_MARKSMANRIFLE",	
	"PICKUP_AMMO_MARKSMANRIFLE_MK2",	
	"PICKUP_AMMO_RPG",	
	"PICKUP_AMMO_GRENADELAUNCHER",	
	"PICKUP_AMMO_GRENADELAUNCHER_SMOKE",	
	"PICKUP_AMMO_MINIGUN",	
	"PICKUP_AMMO_FIREWORK",	
	"PICKUP_AMMO_RAILGUN",	
	"PICKUP_AMMO_HOMINGLAUNCHER",	
	"PICKUP_AMMO_COMPACTLAUNCHER",	
	"PICKUP_AMMO_RAYMINIGUN",	
	"PICKUP_AMMO_GRENADE",				
	"PICKUP_AMMO_BZGAS",
	"PICKUP_AMMO_MOLOTOV",
	"PICKUP_AMMO_STICKYBOMB",
	"PICKUP_AMMO_PROXMINE",
	"PICKUP_AMMO_PIPEBOMB",
	"PICKUP_AMMO_SMOKEGRANDE",
	"PICKUP_AMMO_FLARE"
	-- Weapons Blacklist
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_REVOLVER_MK2",
	"WEAPON_RAYPISTOL",
	"WEAPON_CERAMICPISTOL",
	"WEAPON_NAVYREVOLVER",
	"WEAPON_ASSAULTSMG",
	"WEAPON_RAYCARBINE",
	"WEAPON_ASSAULTSHOTGUN",
	"WEAPON_BULLPUPSHOTGUN",
	"WEAPON_HEAVYSHOTGUN",
	"WEAPON_AUTOSHOTGUN",
	"WEAPON_ADVANCEDRIFLE",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HEAVYSNIPER",
	"WEAPON_HEAVYSNIPER_MK2",
	"WEAPON_MARKSMANRIFLE",
	"WEAPON_MARKSMANRIFLE_MK2",
	"WEAPON_RPG",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_GRENADELAUNCHER_SMOKE",
	"WEAPON_STICKYBOMB",
	"WEAPON_MINIGUN",
	"WEAPON_FIREWORK",
	"WEAPON_RAILGUN",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_COMPACTLAUNCHER",
	"WEAPON_RAYMINIGUN",
	"WEAPON_GRENADE",
	"WEAPON_BZGAS",
	"WEAPON_PROXMINE",
	"WEAPON_PIPEBOMB",
	"WEAPON_HAZARDCAN"]]--
}

--------------------------------------------------------------------------------------------------------------------------------------------------

local carblacklist = {
	"akula",            --A military gunship armed with an explosive turret.
    "alkonost",         --A soviet stealth bomber / UAV
	"annihilator",      --A utility helicopter armed with 4 black machine guns.
    "annihilator2",     --A variant of the Annihilator armed with machine guns and "Stealth Mode".
    "apc",              --A weaponized Armored Personal Carrier with option for a tank cannon (default) and SAM turret, as well as machine guns for rear passengers.
    "ardent",           --A weaponized sports car with machine guns.
    "avenger",          --A V/STOL plane with options for front and rear turrets.
    "avenger2",         --A V/STOL plane with options for front and rear turrets.
    --"barracks",       --A military personel transport vehicle.
	--"barracks2",      --A military hauler.
	--"barracks3",      --A military personel transport vehicle.
    "barrage",          --A weaponized off-road car with option for machine guns (default), miniguns and rear-facing grenade launcher.
    "besra",            --A high performance jet used as a trainer aircraft.
    "blazer5",          --A variant of the Blazer quad, armed with machine guns and travels by both land and sea.
    "bombuska",         --A military cargo plane armed with machine turrets and a bomb bay for carpet bombing.
    "boxville5",        --A variant of the Boxville, armoured and equipped with a ram at the front and mounted machine gun on top.
    "bruiser",          --Arena war Bruiser.
    "bruiser2",         --Arena war Bruiser.
    "bruiser3",         --Arena war Bruiser.
    "brutus",           --Arena war Brutus.
    "brutus2",          --Arena war Brutus.
    "brutus3",          --Arena war Brutus.
	"buzzard",          --A variant of the Nagasaki Buzzard armed with machine guns and missiles.
    "caracara",         --A 6x6 pickup truck with option for a machine gun (default) and a minigun.
    --"cargobob",       --A helipcopter equiped to collect cargo such as containers.
    --"cargobob2",      --A helipcopter equiped to collect cargo such as containers.
    --"cargobob3",      --A helipcopter equiped to collect cargo such as containers.
    --"cargobob4",      --A helipcopter equiped to collect cargo such as containers.
    --"cargoplane",     --A plane equiped to collect cargo such as shipments and vehicles etc. (Biggest plane in GTAV)
    "cerberus",         --An fuel hauler modified to be armoured and weaponized.
    "cerberus2",        --An fuel hauler modified to be armoured and weaponized.
    "cerberus3",        --An fuel hauler modified to be armoured and weaponized.
    "chernobog",        --An artillery truck with a large missile battery with 15 tubes. Customizable only in the Facility Workshop.
    "comet3",           --A custom off-road sports car with option for machine guns.
    --"crusader",       --A military SUV.
    "deathbike",        --Arena war Deeathbike.
    "deathbike2",       --Arena war Deeathbike.
    "deathbike3",       --Arena war Deeathbike.
    "deluxo",           --A classic coupe heavily modified with a hover/flying mechanism and option for machine guns and missile launchers.
    "dominator4",       --Arena war Dominator.
    "dominator5",       --Arena war Dominator.
    "dominator6",       --Arena war Dominator.
    "dukes2",           --An armoured variant of the Dukes.
    "dune3",            --A weaponized variant of the Dune Buggy with option for an MG (default), a Grenade Launcher and a Minigun.
    --"dune4",            --A variant of the Dune Buggy, armoured and converted to act as a "Ramp Buggy".
    "dune5",            --A variant of the Dune Buggy, armoured and converted to act as a "Ramp Buggy".
	"halftrack",        --A half-track variant of the Duneloader with option for twin machine guns (default) and autocannons.
    "hauler2",          --A variant of the Hauler, Armoured and kitted with a plate that acts as an "Anti Phantom Wedge".
    "hunter",           --A military gunship armed with explosive machine guns and missiles.
    "hydra",            --The Hydra is a military VTOL attack jet.
    "impaler2",         --Arena war Impaler.
    "impaler3",         --Arena war Impaler.
    "impaler4",         --Arena war Impaler.
    "imperator",        --An armoured muscle car that can be upgraded to have weapons and jump struts.
    "imperator2",       --An armoured muscle car that can be upgraded to have weapons and jump struts.
    "imperator3",       --An armoured muscle car that can be upgraded to have weapons and jump struts.
    "insurgent",        --A variant of the Insurgent Pick-Up with customizations, a tow hook and option for a machine gun (default) and minigun.
    "issi4",            --Arena war Issi.
    "issi5",            --Arena war Issi.
    "issi6",            --Arena war Issi.
    "jb700",            --A sports classic car with option for machine guns. Can be fitted with Spike and Slick proximity mines.
    "jet",              --A jet almost as big as the Cargo Plane.
    "khanjali",         --A tank with option for a tank cannon (default), railgun cannon and grenade launchers. Carries a remote machine gun for the front passenger.
    "kuruma2",          --An armoured variant of the Karin Kuruma.
    "lazer",            --A military jet armed with explosive turrets and missiles.
    "menacer",          --An armoured SUV featuring a mounted machine gun (default) or a minigun.
    --"minitank",         --A remote-controlled tank with a machine gun turret as default, can be switched to a plasma cannon, a flamethrower or a rocket launcher.
    "mogul",            --A WWII fighter jet equiped with machine gun turrets.
    "molotok",          --A military fighter jet.
    "monster3",         --Arena war Sasquatch.
    "monster4",         --Arena war Sasquatch.
    "monster5",         --Arena war Sasquatch.
    "mule4",            --A Nightclub delivery vehicle with the option to add front machine guns or missiles, a secondary grenade launcher, and proximity mines
    "nightshark",       --An armored SUV with machine guns.
    "nokota",           --A military aircraft equiped with machine guns and missiles.
    "opressor",         --A new motorbike with a rocket boost and the ability to glide. It has option for machine guns (default) and missile launchers.
    "opressor2",        --A hoverbike with machine guns, explosive MG or homng missiles as the main weapon
    "paragon2",         --An armored sports car with machine guns.
    "phantom2",         --A variant of the Phantom Hauler, equiped with a giant, powerful ram at the front.
    "pounder2",         --A Nightclub delivery vehicle with the option to add front miniguns, missiles or a missile battery, a secondary grenade launcher, and proximity mines
    "pyro",             --A military grade fighter jet.
    "revolter",         --A luxury sedan with option for machine guns.        
	"rhino",            --Military Tank.
    "riot2",            --A riot-control truck equipped with a water cannon, with option for a second water cannon.
    "rogue",            --A military training aircraft, modified to have machine guns, missiles and a bomb bay.
	"ruiner2",			--A varaint of the ruiner, comes stock with Machine Guns, Missiles, Jump Boost and a Parachute.
    "savage",           --A military gunship armed with explosive turrets and missiles.
    "savestra",         --A sports coupe with option for machine guns.
    "scarab",           --Arena war Tank.
    "scarab2",          --Arena war Tank.
    "scarab3",          --Arena war Tank.
    "scramjet",         --A jet propelled car that includes machine guns and homing missiles by default.
    "seasparrow",       --A variant of the Sea Sparrow, armed with machine guns.
	"skylift",          --A helicopter with a magnet on the bottom used for carrying cargo. (Biggest Helicopter in GTAV)
    "slamvan4",         --Arena war Slamvan.
    "slamvan5",         --Arena war Slamvan.
    "slamvan6",         --Arena war Slamvan.
    "speedo4",          --A Nightclub delivery vehicle with the option to add front machine guns or a remote .50/minigum turret, and proximity mines.
    "starling",         --A compact fighter jet equiped with machine gun turrets.
    "strikeforce",      --A military grade fighter jet.
    "stromberg",        --A submersible sports car with machine guns, missile launchers and torpedo launchers.
    "tampa3",           --A weaponized and armored variant of the Tampa, with option for a single fixed minigun (default), twin remote minigun turret, missile launchers and rear-firing mortars.
    "technical",        --A variant of the Rusty Rebel, armed with a mahine gun turret.
    "technical2",       --Variant of the Technical with customizations, a tow hook and option for a machine gun (default) and minigun. (Can drive on water)
    "technical3",       --Variant of the Technical with customizations, a tow hook and option for a machine gun (default) and minigun.
    "terbyte",          --An armoured hauler that can be upgraded with a drone station and a missile battery.
    "thruster",         --A jetpack with options for minigun turret or dual missile pods.
    "titan",            --A military cargo plane.
    "trailerlarge",     --A Large towable trailer with options for front and rear (dual) turrets.
	"trailersmall2",    --A small trailer with option for machine guns (default), missile launchers and flak cannons. 
    "tug",              --A tug boat used for fishing.
    "tula",             --A military fighter jet.
    "valkyrie",         --A military transport helicopter / light attack gunship.
	"valkyrie2",        --A military transport helicopter / light attack gunship.
    "vigilante",        --Weaponized vehicle (Bat Mobile), with machine guns and option for missile launchers.
    "viseris",          --A classic sports car with option for machine guns.
    "volatol",          --A military stealth ship equiped with a bomb bay and turrets.
	"volatus",          --A helicopter modified to enter "Stealth Mode" and fly at extreme speeds.
    "voltic2",          --A jet propelled coil voltic.
    "wastelander",      --An armoured, rusted pickup truck that is extremely powerful.
    "zr380",            --Arena war ZR380.
    "zr3803"            --Arena war ZR380.
    "zr3802",           --Arena war ZR380.
}

-----------------------------------------------------------------------------------------------------------------------------------------------------

CreateThread(function()
	while true do
		Wait(50000)
		local playerPed = PlayerPedId()
		local success, weaponhash = GetCurrentPedWeapon(playerPed, true)
		for a, b in next, weaponblacklist do
			if GetHashKey(b) == weaponhash then
				RemoveWeaponFromPed(playerPed, weaponhash)
				sendForbiddenMessage("This weapon is forbidden!")
				break
			end
		end
		if IsPedInAnyVehicle(playerPed) then
			local veh = GetVehiclePedIsUsing(playerPed)
			for a, b in next, carblacklist do
				if GetEntityModel(veh) == GetHashKey(b) then
					DeleteEntity(veh)
					sendForbiddenMessage("This vehicle is forbidden!")
					break
				end
			end
		end
	end
end)

function sendForbiddenMessage(message)
	TriggerEvent("chatMessage", "", {0, 0, 0}, "^1" .. message)
end

-- Citizen.CreateThread(function()
--     while true 
--     	do
		
-- 		SetWeatherTypePersist("XMAS")
--         SetWeatherTypeNowPersist("XMAS")
--         SetWeatherTypeNow("XMAS")
--         SetOverrideWeather("XMAS")
    	
-- 		Citizen.Wait(1)
-- 	end

-- end)