base_build = nil

base_build =
{
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PlanetKillerMissile",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		612,
		DisplayedName =			"$1704",
		Description =			"" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
