base_build = nil

base_build =
{
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_WeaponPlatform_gun_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		400,
		DisplayedName =			"$7160",
		Description =			"$7161" 
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_WeaponPlatform_gun_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		400,
		DisplayedName =			"$7160",
		Description =			"$7161" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_missile_hyp0",
		RequiredResearch =		"PlatformHeavyMissiles",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		410,
		DisplayedName =			"$7162",
		Description =			"$7163" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_missile_hyp1",
		RequiredResearch =		"PlatformHeavyMissiles",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		410,
		DisplayedName =			"$7162",
		Description =			"$7163" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
