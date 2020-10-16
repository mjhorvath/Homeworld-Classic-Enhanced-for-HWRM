base_build = nil

base_build =
{
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AssaultFrigate",
		RequiredResearch =		"FrigateAssault",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		200,
		DisplayedName =			"$7146",
		Description =			"$7147" 
	},
	-- omitted by whom?
--	{ 
--		Type = 					Ship, 
--		ThingToBuild = 			"Vgr_TransportFrigate",
--		RequiredResearch =		"FrigateTransport",
--		RequiredShipSubSystems =	"FrigateProduction",
--		DisplayPriority =		210,
--		DisplayedName =			"Transport Frigate (Unit Transport) (400 RUs)",
--		Description =			"" 
--	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyMissileFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		220,
		DisplayedName =			"$7148",
		Description =			"$7149" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_InfiltratorFrigate",
		RequiredResearch =		"FrigateInfiltrationTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		230,
		DisplayedName =			"$7150",
		Description =			"$7151" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
