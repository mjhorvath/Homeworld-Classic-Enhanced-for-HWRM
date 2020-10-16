base_build = nil

base_build =
{
	--Utility----------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceCollector_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,
		DisplayedName =			"$11044",
		Description =			"$11045"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceCollector_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		100,
		DisplayedName =			"$11044",
		Description =			"$11045"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceController_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		101,
		DisplayedName =			"$11046",
		Description =			"$11047"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResourceController_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		101,
		DisplayedName =			"$11046",
		Description =			"$11047"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		110,
		DisplayedName =			"$11042",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		111,
		DisplayedName =			"$11058",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_2",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		112,
		DisplayedName =			"$11059",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_3",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		113,
		DisplayedName =			"$11060",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_4",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		114,
		DisplayedName =			"$11061",
		Description =			"$11043"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ResearchShip_5",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		115,
		DisplayedName =			"$11062",
		Description =			"$11043"
	},	
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Probe_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		140,
		DisplayedName =			"$7070",
		Description =			"$7071"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Probe_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		140,
		DisplayedName =			"$7070",
		Description =			"$7071"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ProximitySensor_hyp0",
		RequiredResearch =		"ProximitySensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		141,
		DisplayedName =			"$11054",
		Description =			"$11055"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_ProximitySensor_hyp1",
		RequiredResearch =		"ProximitySensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		141,
		DisplayedName =			"$11054",
		Description =			"$11055"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SensorArray_hyp0",
		RequiredResearch =		"SensorArray",
		RequiredShipSubSystems =	"",
		DisplayPriority =		142,
		DisplayedName =			"$11056",
		Description =			"$11057"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SensorArray_hyp1",
		RequiredResearch =		"SensorArray",
		RequiredShipSubSystems =	"",
		DisplayPriority =		142,
		DisplayedName =			"$11056",
		Description =			"$11057"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_GravWellGenerator_hyp0",
		RequiredResearch =		"GravityGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		143,
		DisplayedName =			"$11048",
		Description =			"$11049"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_GravWellGenerator_hyp1",
		RequiredResearch =		"GravityGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		143,
		DisplayedName =			"$11048",
		Description =			"$11049"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_CloakGenerator_hyp0",
		RequiredResearch =		"CloakGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"$11050",
		Description =			"$11051"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_CloakGenerator_hyp1",
		RequiredResearch =		"CloakGenerator",
		RequiredShipSubSystems =	"",
		DisplayPriority =		144,
		DisplayedName =			"$11050",
		Description =			"$11051"
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
