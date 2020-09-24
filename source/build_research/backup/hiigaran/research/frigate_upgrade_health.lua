base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"TorpedoFrigateHealthUpgrade1",
	RequiredResearch =		"",                                          
	RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction",    
	Cost = 					1000,
	Time = 					75,
	DisplayedName =			"$7571",
	DisplayPriority =		300,                                                    
	Description =			"$7572",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_TorpedoFrigate",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7244",
}
local temp_res_2 =
{
	Name =					"IonCannonFrigateHealthUpgrade1",
	RequiredResearch =		"InstaAdvancedFrigateTech",                                         
	RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction", 
	Cost = 					1000,
	Time = 					75,
	DisplayedName =			"$7579",
	DisplayPriority =		306,                                                    
	Description =			"$7580",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_IonCannonFrigate",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7247",
}
local temp_res_3 =
{
	Name =					"AssaultFrigateHealthUpgrade1",
	RequiredResearch =		"InstaAdvancedFrigateTech",                                         
	RequiredSubSystems =	"Research | AdvancedResearch & FrigateProduction", 
	Cost = 					1000,
	Time = 					75,
	DisplayedName =			"$7587",
	DisplayPriority =		312,                                                    
	Description =			"$7588",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_AssaultFrigate",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7251",
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)
tinsert(base_research, temp_res_3)

local temp_params = {"hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)
MultiResearch(temp_res_3, temp_params)

-- Add these items to the research tree!
for i, e in base_research do
	research[res_index] = e
	res_index = res_index + 1
end

base_research = nil
