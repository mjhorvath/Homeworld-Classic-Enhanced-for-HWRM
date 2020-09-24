base_build = nil

base_build = {}

local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_ResourceCollector",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
	DisplayPriority =		120,
	DisplayedName =			"$7066",
	Description =			"$7067"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_ResourceController",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
	DisplayPriority =		130,
	DisplayedName =			"$7068",
	Description =			"$7069"
}
local temp_bld_3 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Probe",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
	DisplayPriority =		140,
	DisplayedName =			"$7070",
	Description =			"$7071"
}
local temp_bld_4 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_ProximitySensor",
	RequiredResearch =		"SensDisProbe",
	RequiredShipSubSystems =	"",
	DisplayPriority =		150,
	DisplayedName =			"$7072",
	Description =			"$7073"
}
local temp_bld_5 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_ECMProbe",
	RequiredResearch =		"ECMProbe",
	RequiredShipSubSystems =	"",
	DisplayPriority =		160,
	DisplayedName =			"$7074",
	Description =			"$7075"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)
MultiBuild(temp_bld_2, temp_params)
MultiBuild(temp_bld_3, temp_params)
MultiBuild(temp_bld_4, temp_params)
MultiBuild(temp_bld_5, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
