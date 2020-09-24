base_build = nil

base_build =
{
	-- suffix car?
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_MS_Production_CapShip",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7006",
		Description =			"$7007"
	},
	-- suffix car?
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_SY_Production_CapShip",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7006",
		Description =			"$7007"
	},
}

local temp_bld_1 =
{ 
	Type =					Ship,
	ThingToBuild =			"Hgn_Destroyer",
	RequiredResearch =		"DestroyerTech",
	RequiredShipSubSystems =	"CapShipProduction",
	DisplayPriority =		116,
	DisplayedName =			"$7056",
	Description =			"$7057"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Battlecruiser",
	RequiredResearch =		"BattlecruiserIonWeapons",
	RequiredShipSubSystems =	"CapShipProduction",
	DisplayPriority =		118,
	DisplayedName =			"$7060",
	Description =			"$7061"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
