base_build = nil

base_build =
{
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceCollector_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		500,
		DisplayedName =			"$7164",
		Description =			"$7165" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceCollector_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		500,
		DisplayedName =			"$7164",
		Description =			"$7165" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceController_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		510,
		DisplayedName =			"$7166",
		Description =			"$7167" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceController_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		510,
		DisplayedName =			"$7166",
		Description =			"$7167" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HyperSpace_Platform_hyp0",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		520,
		DisplayedName =			"$7174",
		Description =			"$7175" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HyperSpace_Platform_hyp1",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		520,
		DisplayedName =			"$7174",
		Description =			"$7175" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_hyp0",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		540,
		DisplayedName =			"$7168",
		Description =			"$7169" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_hyp1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		540,
		DisplayedName =			"$7168",
		Description =			"$7169" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_Prox_hyp0",
		RequiredResearch =		"ProbeProxSensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		550,
		DisplayedName =			"$7170",
		Description =			"$7171" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_Prox_hyp1",
		RequiredResearch =		"ProbeProxSensor",
		RequiredShipSubSystems =	"",
		DisplayPriority =		550,
		DisplayedName =			"$7170",
		Description =			"$7171" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_ECM_hyp0",
		RequiredResearch =		"ProbeSensorDisruption",
		RequiredShipSubSystems =	"",
		DisplayPriority =		560,
		DisplayedName =			"$7172",
		Description =			"$7173" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_ECM_hyp1",
		RequiredResearch =		"ProbeSensorDisruption",
		RequiredShipSubSystems =	"",
		DisplayPriority =		560,
		DisplayedName =			"$7172",
		Description =			"$7173" 
	},
}

-- Add these items to the research tree!
for i, e in base_build do
	build[bld_index] = e
	bld_index = bld_index + 1
end

base_build = nil 
