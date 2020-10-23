base_build = nil

base_build =
{
	{
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Scout_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$7130",
		Description =			"$7131" 
	},
	{
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Scout_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$7130",
		Description =			"$7131" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Interceptor_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		21,
		DisplayedName =			"$7132",
		Description =			"$7133" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Interceptor_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		21,
		DisplayedName =			"$7132",
		Description =			"$7133" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Bomber_hyp0",
		RequiredResearch =		"PlasmaBombs",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		22,
		DisplayedName =			"$7134",
		Description =			"$7135" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Bomber_hyp1",
		RequiredResearch =		"PlasmaBombs",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		22,
		DisplayedName =			"$7134",
		Description =			"$7135" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LanceFighter_hyp0",
		RequiredResearch =		"LanceBeams",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		23,
		DisplayedName =			"$7136",
		Description =			"$7137" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LanceFighter_hyp1",
		RequiredResearch =		"LanceBeams",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		23,
		DisplayedName =			"$7136",
		Description =			"$7137" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
