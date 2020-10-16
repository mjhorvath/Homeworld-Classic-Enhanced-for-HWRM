base_build = nil

base_build =
{
	--Capital Ships----------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Destroyer_hyp0",
		RequiredResearch =		"SuperHeavyChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		72,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Destroyer_hyp1",
		RequiredResearch =		"SuperHeavyChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		72,
		DisplayedName =			"$11034",
		Description =			"$11035"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MissileDestroyer_hyp0",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_MissileDestroyer_hyp1",
		RequiredResearch =		"GuidedMissiles",
		RequiredShipSubSystems =	"",
		DisplayPriority =		71,
		DisplayedName =			"$11036",
		Description =			"$11037"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Carrier_res0_hyp0",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Carrier_res0_hyp1",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Carrier_res1_hyp0",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Carrier_res1_hyp1",
		RequiredResearch =		"SuperCapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		70,
		DisplayedName =			"$11040",
		Description =			"$11041"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_HeavyCruiser_hyp0",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_HeavyCruiser_hyp1",
		RequiredResearch =		"HeavyGuns",
		RequiredShipSubSystems =	"",
		DisplayPriority =		73,
		DisplayedName =			"$11038",
		Description =			"$11039"
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
