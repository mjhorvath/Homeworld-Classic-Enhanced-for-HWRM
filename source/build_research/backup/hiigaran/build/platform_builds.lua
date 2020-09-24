base_build = nil

base_build =
{
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_C_Module_PlatformControl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$7008",
		Description =			"$7009"
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Hgn_MS_Module_PlatformControl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$7008",
		Description =			"$7009"
	},
}

local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_GunTurret",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"PlatformProduction",
	DisplayPriority =		141,
	DisplayedName =			"$7062",
	Description =			"$7063"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_IonTurret",
	RequiredResearch =		"PlatformIonWeapons",
	RequiredShipSubSystems =	"PlatformProduction",
	DisplayPriority =		142,
	DisplayedName =			"$1514",
	Description =			"$7065"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
