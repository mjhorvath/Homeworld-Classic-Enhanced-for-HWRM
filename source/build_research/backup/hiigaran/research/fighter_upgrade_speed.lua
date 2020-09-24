base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"InterceptorMAXSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch & FighterProduction",
	Cost = 					800,
	Time = 					30,
	DisplayedName =			"$7543",
	DisplayPriority =		81,
	Description =			"$7544",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Interceptor",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.4,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7231"
}
local temp_res_2 =
{
	Name =					"AttackBomberMAXSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch & FighterProduction",
	Cost = 					400,
	Time = 					30,
	DisplayedName =			"$7551",
	DisplayPriority =		87,
	Description =			"$7552",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_AttackBomber",
		UpgradeName =			"MAXSPEED",
		UpgradeValue =			1.4,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7234",
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
