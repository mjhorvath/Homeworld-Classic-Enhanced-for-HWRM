base_build = nil

base_build =
{
  	{ 
  		Type =					SubSystem, 
  		ThingToBuild =			"Hgn_MS_Production_CorvetteMover",
  		RequiredResearch =		"",
  		RequiredShipSubSystems =	"CorvetteProduction",
  		DisplayPriority =		80,
  		DisplayedName =			"$7910",
  		Description =			"$7911"
  	},
}

local temp_bld_1 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Kpr_Mover",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"",
	DisplayPriority =		53,
	DisplayedName =			"$7913",
	Description =			"$7914"
}
local temp_bld_2 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Shipyard_Elohim",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"Hyperspace",
	DisplayPriority =		117,
	DisplayedName =			"$7058",
	Description =			"$7059"
}
local temp_bld_3 =
{ 
	Type =					Ship, 
	ThingToBuild =			"Hgn_Shipyard_SPG",
	RequiredResearch =		"",
	RequiredShipSubSystems =	"Hyperspace",
	DisplayPriority =		117,
	DisplayedName =			"$7058",
	Description =			"$7059"
}

local temp_params = {"hyp"}
MultiBuild(temp_bld_1, temp_params)

local temp_params = {"car","rch","res","hyp"}
MultiBuild(temp_bld_2, temp_params)
MultiBuild(temp_bld_3, temp_params)

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
