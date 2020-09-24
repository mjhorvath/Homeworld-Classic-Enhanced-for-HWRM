base_build = nil

base_build =
{
	{
		Type =					Ship,
		ThingToBuild =			"Kus_RepairCorvette_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$11022",
		Description =			"$11023",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_RepairCorvette_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$11022",
		Description =			"$11023",
	},
    --
    -- ***WARNING***
    -- This next stanza is referenced by index in DataHW1Campaign/LevelData/Campaign/HomeworldClassic/Kushan/Build.lua.
    -- If you modify it, please keep taht other one up to date!
    --
	{
		Type =					Ship,
		ThingToBuild =			"Kus_SalvageCorvette_hyp0",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		21,
		DisplayedName =			"$11020",
		Description =			"$11021",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_SalvageCorvette_hyp1",
		RequiredResearch =		"CorvetteChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		21,
		DisplayedName =			"$11020",
		Description =			"$11021",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_LightCorvette_hyp0",
		RequiredResearch =		"CorvetteDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		22,
		DisplayedName =			"$11012",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_LightCorvette_hyp1",
		RequiredResearch =		"CorvetteDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		22,
		DisplayedName =			"$11012",
		Description =			"$11013",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_HeavyCorvette_hyp0",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$11014",
		Description =			"$11015",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_HeavyCorvette_hyp1",
		RequiredResearch =		"HeavyCorvetteUpgrade",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$11014",
		Description =			"$11015",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MultiGunCorvette_hyp0",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		24,
		DisplayedName =			"$11016",
		Description =			"$11017",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MultiGunCorvette_hyp1",
		RequiredResearch =		"FastTrackingTurrets",
		RequiredShipSubSystems =	"",
		DisplayPriority =		24,
		DisplayedName =			"$11016",
		Description =			"$11017",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MinelayerCorvette_hyp0",
		RequiredResearch =		"MinelayingTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		25,
		DisplayedName =			"$11018",
		Description =			"$11019",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Kus_MinelayerCorvette_hyp1",
		RequiredResearch =		"MinelayingTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		25,
		DisplayedName =			"$11018",
		Description =			"$11019",
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
