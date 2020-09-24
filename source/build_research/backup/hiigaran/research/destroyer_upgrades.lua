base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"DestroyerHealthUpgrade1",
	RequiredResearch =		"DestroyerTech",
	RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
	Cost = 					1500,
	Time = 					90,
	DisplayedName =			"$7639",
	DisplayPriority =			405,
	Description =			"$7640",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Destroyer",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7274",	
}
local temp_res_2 =
{
	Name =					"DestroyerMAXSPEEDUpgrade1",
	RequiredResearch =		"DestroyerTech",
	RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
	Cost = 					600,
	Time = 					40,
	DisplayedName =			"$7643",
	DisplayPriority =		406,
	Description =			"$7644",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Destroyer",
	UpgradeName =			"MAXSPEED",
	UpgradeValue =			1.25,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7274",
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
