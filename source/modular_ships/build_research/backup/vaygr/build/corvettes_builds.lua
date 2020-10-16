base_build = nil

base_build =
{
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		100,
		DisplayedName =			"$7138",
		Description =			"$7139" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LaserCorvette",
		RequiredResearch =		"CorvetteLaser",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		105,
		DisplayedName =			"$7140",
		Description =			"$7141" 
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_CommandCorvette",
		RequiredResearch =		"CorvetteCommand",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		110,
		DisplayedName =			"$7144",
		Description =			"$7145" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MinelayerCorvette",
		RequiredResearch =		"CorvetteGraviticAttraction",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		115,
		DisplayedName =			"$7142",
		Description =			"$7143" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
