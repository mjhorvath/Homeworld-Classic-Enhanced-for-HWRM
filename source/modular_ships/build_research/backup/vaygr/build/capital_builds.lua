base_build = nil

base_build =
{
	{
		Type = 					Ship,
		ThingToBuild = 			"Vgr_Destroyer",
		RequiredResearch =		"DestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		300,
		DisplayedName =			"$7152",
		Description =			"$7153"
	},
	{
		Type = 					Ship,
		ThingToBuild = 			"Vgr_BattleCruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		330,
		DisplayedName =			"$7158",
		Description =			"$7159"
	},
	-- suffix car?
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Carrier",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		310,
		DisplayedName =			"$7154",
		Description =			"$7155" 
	},
	-- suffix hyp?
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ShipYard",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"Hyperspace",
		DisplayPriority =		320,
		DisplayedName =			"$7156",
		Description =			"$7157" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
