base_build = nil

base_build =
{
	--Frigates---------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AssaultFrigate_hyp0",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AssaultFrigate_hyp1",
		RequiredResearch =		"CapitalShipChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		51,
		DisplayedName =			"$11024",
		Description =			"$11025",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_IonCannonFrigate_hyp0",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_IonCannonFrigate_hyp1",
		RequiredResearch =		"IonCannons",
		RequiredShipSubSystems =	"",
		DisplayPriority =		52,
		DisplayedName =			"$11026",
		Description =			"$11027",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SupportFrigate_hyp0",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_SupportFrigate_hyp1",
		RequiredResearch =		"CapitalShipDrive",
		RequiredShipSubSystems =	"",
		DisplayPriority =		50,
		DisplayedName =			"$11028",
		Description =			"$11029",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_FieldFrigate_hyp0",
		RequiredResearch =		"DefenseField",
		RequiredShipSubSystems =	"",
		DisplayPriority =		53,
		DisplayedName =			"$11032",
		Description =			"$11033",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_FieldFrigate_hyp1",
		RequiredResearch =		"DefenseField",
		RequiredShipSubSystems =	"",
		DisplayPriority =		53,
		DisplayedName =			"$11032",
		Description =			"$11033",
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
