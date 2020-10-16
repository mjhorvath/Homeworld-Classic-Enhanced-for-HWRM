base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"MothershipHealthUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost = 					800,
	Time = 					30,
	DisplayedName =			"$7523",
	DisplayPriority =		41,
	Description =			"$7524",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_MotherShip",
		UpgradeName =			"MAXHEALTH",
		UpgradeValue =			1.75,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7211",
}
local temp_res_2 =
{
	Name =					"MothershipMAXSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost = 					400,
	Time = 					30,
	DisplayedName =			"$7527",
	DisplayPriority =		44,
	Description =			"$7528",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_MotherShip",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.25,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7211",
}
local temp_res_3 =
{
	Name =				"MothershipBUILDSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =		"AdvancedResearch",
	Cost = 				1000,
	Time = 				60,
	DisplayedName =			"$7800",
	DisplayPriority =		45,
	Description =			"$7801",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_MotherShip",
		UpgradeName =			"BUILDSPEED",
		UpgradeValue =			1.3,
	Icon = 				Icon_Build,
	ShortDisplayedName = 		"$7240",
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)
tinsert(base_research, temp_res_3)

local temp_params = {"car","rch","res","hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)
MultiResearch(temp_res_3, temp_params)

-- Add these items to the research tree!
for i, e in base_research do
	research[res_index] = e
	res_index = res_index + 1
end

base_research = nil 
