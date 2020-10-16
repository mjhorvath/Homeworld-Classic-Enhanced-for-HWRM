base_build = nil

base_build =
{
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_MS_Production_Fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7000",
		Description =			"$7001"
	},
	{ 
		Type					= SubSystem, 
		ThingToBuild			= "Hgn_C_Production_Fighter",
		RequiredResearch		= "",
		RequiredShipSubSystems	= "",
		DisplayPriority			= 0,
		DisplayedName			= "$7000",
		Description				= "$7001"
	},
}

local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Scout",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
	DisplayPriority =		10,
	DisplayedName =			"$7030",
	Description =			"$7031"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Interceptor",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"FighterProduction",
	DisplayPriority =		20,
	DisplayedName =			"$7032",
	Description =			"$7033"
}
local temp_bld_3 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_AttackBomber",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"FighterProduction",
	DisplayPriority =		30,
	DisplayedName =			"$7034",
	Description =			"$7035"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)
MultiBuild(temp_bld_3, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
