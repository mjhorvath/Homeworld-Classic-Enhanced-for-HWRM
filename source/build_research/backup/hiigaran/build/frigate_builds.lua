base_build = nil

base_build =
{
	-- omitted by Relic
--	{ 
--		Type =					Ship, 
--		ThingToBuild =			"Hgn_SupportFrigate",
--		RequiredResearch =		"",
--		RequiredShipSubSystems =	"FrigateProduction",
--		DisplayPriority =		60,
--		DisplayedName =			"Support Frigate",
--		Description =			" (Repair) (400 RUs)"
--	},
}

local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_AssaultFrigate",
	RequiredResearch =		"InstaAdvancedFrigateTech",
	RequiredShipSubSystems =	"FrigateProduction",
	DisplayPriority =		60,
	DisplayedName =			"$7048",
	Description =			"$7049"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_TorpedoFrigate",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"FrigateProduction",
	DisplayPriority =		65,
	DisplayedName =			"$7046",
	Description =			"$7047"
}
local temp_bld_3 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_IonCannonFrigate",
	RequiredResearch =		"InstaAdvancedFrigateTech",
	RequiredShipSubSystems =	"FrigateProduction",
	DisplayPriority =		70,
	DisplayedName =			"$1520",
	Description =			"$7051"
}
local temp_bld_4 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_MarineFrigate",
	RequiredResearch =		"InstaAdvancedFrigateTech",
	RequiredShipSubSystems =	"FrigateProduction",
	DisplayPriority =		75,
	DisplayedName =			"$7052",
	Description =			"$7053"
}
local temp_bld_5 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_DefenseFieldFrigate",
	RequiredResearch =		"DefenseFieldFrigateShield",
	RequiredShipSubSystems =	"FrigateProduction",
	DisplayPriority =		80,
	DisplayedName =			"$7044",
	Description =			"$7045"
}
local temp_bld_6 =
{ 
	Type = 					SubSystem, 
	ThingToBuild = 			"Hgn_C_Production_Frigate",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		0,
	DisplayedName =			"$7004",
	Description =			"$7005"
}
local temp_bld_7 =
{ 
	Type = 					SubSystem, 
	ThingToBuild = 			"Hgn_MS_Production_Frigate",
	RequiredResearch =		"",
	RequiredFleetSubSystems =	"Research",
	DisplayPriority =		0,
	DisplayedName =			"$7004",
	Description =			"$7005"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)
MultiBuild(temp_bld_3, temp_params)
MultiBuild(temp_bld_4, temp_params)
MultiBuild(temp_bld_5, temp_params)

local temp_params = {"rch"}
MultiBuild(temp_bld_6, temp_params)
MultiBuild(temp_bld_7, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
