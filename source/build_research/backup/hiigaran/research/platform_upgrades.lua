base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"GunTurretHealthUpgrade1",
	RequiredResearch =		"",                                                    -- <list of prerequisite research items>
	RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",                       -- <list of prerequisite sub systems>
	Cost = 					800,
	Time = 					40,
	DisplayedName =			"$7603",
	DisplayPriority =		600,                                                    -- <display priority (used to sort on screen)>,
	Description =			"$7604",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_GunTurret",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.5,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7257",
}
local temp_res_2 =
{
	Name =					"IonTurretHealthUpgrade1",
	RequiredResearch =		"PlatformIonWeapons",                                                    -- <list of prerequisite research items>
	RequiredSubSystems =	"Research | AdvancedResearch & PlatformProduction",                       -- <list of prerequisite sub systems>
	Cost = 					800,
	Time = 					100,
	DisplayedName =			"$7607",
	DisplayPriority =		603,                                                    -- <display priority (used to sort on screen)>,
	Description =			"$7608",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_IonTurret",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.5,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7261",
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)

local temp_params = {"hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)

-- Add these items to the research tree!
for i, e in base_research do
	research[res_index] = e
	res_index = res_index + 1
end

base_research = nil
