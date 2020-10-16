-- missing elohim and spg

base_build = nil

base_build =
{
	-- suffix rch?
	{
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_C_Module_Research",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7010",
		Description =			"$7011"
	},
	-- suffix rch?
	{
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_C_Module_ResearchAdvanced",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		20,
		DisplayedName =			"$7012",
		Description =			"$7013"
	},
	-- omitted by Relic
--	{
--		Type =					SubSystem, 
--		ThingToBuild =			"Hgn_C_Module_BuildSpeed",
--		RequiredResearch =		"",
--		RequiredFleetSubSystems =	"AdvancedResearch",
--		DisplayPriority =		70,
--		DisplayedName =			"$7098",
--		Description =			"$7099"
--	},
	-- suffix hyp?
	{
		Type =					SubSystem, 
		ThingToBuild =			"Hgn_C_Sensors_DetectHyperspace",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		150,
		DisplayedName =			"$7036",
		Description =			"$7037"
	},
	{
		Type =					SubSystem, 
		ThingToBuild =			"Hgn_C_Sensors_AdvancedArray",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		151,
		DisplayedName =			"$7022",
		Description =			"$7023"
	},
	{
		Type =					SubSystem, 
		ThingToBuild =			"Hgn_C_Sensors_DetectCloaked",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		152,
		DisplayedName =			"$7024",
		Description =			"$7025"
	},
}

-- suffix car?
local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Carrier",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"CapShipProduction",
	DisplayPriority =		110,
	DisplayedName =			"$7054",
	Description =			"$7055"
}
-- suffix hyp?
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Shipyard",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"Hyperspace",
	DisplayPriority =		117,
	DisplayedName =			"$7058",
	Description =			"$7059"
}
-- suffix hyp?
local temp_bld_3 =
{
	Type = 					SubSystem, 
	ThingToBuild = 			"Hgn_C_Module_Hyperspace",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		30,
	DisplayedName =			"$7014",
	Description =			"$7015"
}
-- suffix hyp?
local temp_bld_4 =
{
	Type = 					SubSystem, 
	ThingToBuild = 			"Hgn_C_Module_HyperspaceInhibitor",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		40,
	DisplayedName =			"$1826",
	Description =			"$7017"
}
local temp_bld_5 =
{
	Type =					SubSystem, 
	ThingToBuild =			"Hgn_C_Module_CloakGenerator",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		50,
	DisplayedName =			"$7018",
	Description =			"$7019"
}
local temp_bld_6 =
{
	Type =					SubSystem, 
	ThingToBuild =			"Hgn_C_Module_FireControl",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"AdvancedResearch",
	DisplayPriority =		60,
	DisplayedName =			"$7020",
	Description =			"$7021"
}

local temp_params = {"car","rch","res","hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)

local temp_params = {"rch"}
MultiBuild(temp_bld_3, temp_params)
MultiBuild(temp_bld_4, temp_params)
MultiBuild(temp_bld_5, temp_params)
MultiBuild(temp_bld_6, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
