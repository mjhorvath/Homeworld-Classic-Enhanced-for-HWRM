base_build = nil

base_build = {}

local temp_bld_1 =
{ 
	Type =					Ship,
	ThingToBuild =			"Hgn_AssaultCorvette",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"CorvetteProduction",
	DisplayPriority =		50,
	DisplayedName =			"$7038",
	Description =			"$7039"
}
local temp_bld_2 =
{ 
	Type =					Ship,
	ThingToBuild =			"Hgn_PulsarCorvette",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"CorvetteProduction",
	DisplayPriority =		51,
	DisplayedName =			"$7040",
	Description =			"$7041"
}
local temp_bld_3 =
{ 
	Type =					Ship,
	ThingToBuild =			"Hgn_MinelayerCorvette",
	RequiredResearch =		"GraviticAttractionMines",
	RequiredShipSubSystems =	"CorvetteProduction",
	DisplayPriority =		52,
	DisplayedName =			"$7042",
	Description =			"$7043"
}
local temp_bld_4 =
{ 
	Type = 					SubSystem,
	ThingToBuild = 			"Hgn_MS_Production_Corvette",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		0,
	DisplayedName =			"$7002",
	Description =			"$7003"
}
local temp_bld_5 =
{ 
	Type = 					SubSystem,
	ThingToBuild = 			"Hgn_C_Production_Corvette",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		0,
	DisplayedName =			"$7002",
	Description =			"$7003"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)
MultiBuild(temp_bld_3, temp_params)

local temp_params = {"rch"}
MultiBuild(temp_bld_4, temp_params)
MultiBuild(temp_bld_5, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
