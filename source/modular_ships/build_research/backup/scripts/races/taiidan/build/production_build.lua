base_build = nil

base_build =
{
	--Production Subsystems---------------
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"hw1_production_fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7000",
		Description =			"$7001"
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"hw1_production_corvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7002",
		Description =			"$7003"
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"hw1_production_frigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7004",
		Description =			"$7005"
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"hw1_production_capital",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7006",
		Description =			"$7007"
	},
}

for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil
