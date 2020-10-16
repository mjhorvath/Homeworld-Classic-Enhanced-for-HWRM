base_build = nil

base_build =
{
	--Fighters---------------
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Scout_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$11000",
		Description =			"$11001",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Scout_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"$11000",
		Description =			"$11001",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Interceptor_hyp0",
		RequiredResearch =		"FighterChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$11002",
		Description =			"$11003",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Interceptor_hyp1",
		RequiredResearch =		"FighterChassis",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$11002",
		Description =			"$11003",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Defender_hyp0",
		RequiredResearch =		"DefenderSubSystems",
		RequiredShipSubSystems =	"",
		DisplayPriority =		12,
		DisplayedName =			"$11006",
		Description =			"$11007",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_Defender_hyp1",
		RequiredResearch =		"DefenderSubSystems",
		RequiredShipSubSystems =	"",
		DisplayPriority =		12,
		DisplayedName =			"$11006",
		Description =			"$11007",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AttackBomber_hyp0",
		RequiredResearch =		"PlasmaBombLauncher",
		RequiredShipSubSystems =	"",
		DisplayPriority =		13,
		DisplayedName =			"$11004",
		Description =			"$11005",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_AttackBomber_hyp1",
		RequiredResearch =		"PlasmaBombLauncher",
		RequiredShipSubSystems =	"",
		DisplayPriority =		13,
		DisplayedName =			"$11004",
		Description =			"$11005",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_DefenseFighter_hyp0",
		RequiredResearch =		"DefenseFighter",
		RequiredShipSubSystems =	"",
		DisplayPriority =		14,
		DisplayedName =			"$11010",
		Description =			"$11011",
	},
	{
		Type =					Ship,
		ThingToBuild =			"Tai_DefenseFighter_hyp1",
		RequiredResearch =		"DefenseFighter",
		RequiredShipSubSystems =	"",
		DisplayPriority =		14,
		DisplayedName =			"$11010",
		Description =			"$11011",
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
