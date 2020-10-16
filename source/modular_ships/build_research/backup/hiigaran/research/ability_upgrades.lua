base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"RepairAbility",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost = 					350,
	Time = 					25,
	DisplayedName =			"$7511",
	DisplayPriority =		26,
	Description =			"$7512",
	UpgradeType =			Ability,
	TargetType =			Ship,
	TargetName =			"Hgn_ResourceCollector",
		UpgradeName =			"Repair",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7205",
}
local temp_res_2 =
{
	Name =					"ScoutPingAbility",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost = 					500,
	Time = 					40,
	DisplayedName =			"$7513",
	DisplayPriority =		27,
	Description =			"$7514",
	UpgradeType =			Ability,
	TargetType =			Ship,
	TargetName =			"Hgn_Scout",
		UpgradeName =			"SensorPing",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7206",
}
local temp_res_3 =
{
	Name =					"ImprovedTorpedo",
	RequiredResearch =		"",
	RequiredSubSystems =		"Research | AdvancedResearch & FrigateProduction",
	Cost = 					1000,
	Time = 					60,
	DisplayedName =			"$7515",
	DisplayPriority =		29,
	Description =			"$7516",
	UpgradeType =			Ability,
	TargetType =			Ship,
	TargetName =			"Hgn_TorpedoFrigate",
	UpgradeName =			"UseSpecialWeaponsInNormalAttack",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7207",
}
local temp_res_4 =
{
	Name =					"AttackBomberImprovedBombs",
	RequiredResearch =		"",
	RequiredSubSystems =		"Research | AdvancedResearch & FighterProduction",
	Cost = 					1500,
	Time = 					45,
	DisplayedName =			"$7517",
	DisplayPriority =		30,
	Description =			"$7518",
	UpgradeType =			Ability,
	TargetType =			Ship,
	TargetName =			"Hgn_AttackBomber",
		UpgradeName =			"UseSpecialWeaponsInNormalAttack",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7208",
}
local temp_res_5 =
{
	Name =					"ScoutEMPAbility",
	RequiredResearch =		"",
	RequiredSubSystems =		"Research | AdvancedResearch",
	Cost = 					1500,
	Time = 					70,
	DisplayedName =			"$7519",
	DisplayPriority =		31,
	Description =			"$7520",
	UpgradeType =			Ability,
	TargetType =			Ship,
	TargetName =			"Hgn_Scout",
	UpgradeName =			"SpecialAttack",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7209",
}
local temp_res_6 =
{
	Name =					"DefenseFieldFrigateShield",
	RequiredResearch =		"",
	RequiredSubSystems =	"AdvancedResearch & FrigateProduction",
	Cost = 					1500,
	Time = 					60,
	DisplayedName =			"$7521",
	DisplayPriority =		32,
	Description =			"$7522",
	TargetName =			"Hgn_DefenseFieldFrigate",
	Icon = 				Icon_Ability,
	ShortDisplayedName = 		"$7210",
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)
tinsert(base_research, temp_res_3)
tinsert(base_research, temp_res_4)
tinsert(base_research, temp_res_5)
tinsert(base_research, temp_res_6)

local temp_params = {"hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)
MultiResearch(temp_res_3, temp_params)
MultiResearch(temp_res_4, temp_params)
MultiResearch(temp_res_5, temp_params)
MultiResearch(temp_res_6, temp_params)

-- Add these items to the research tree!
for i, e in base_research do
	research[res_index] = e
	res_index = res_index + 1
end

base_research = nil
