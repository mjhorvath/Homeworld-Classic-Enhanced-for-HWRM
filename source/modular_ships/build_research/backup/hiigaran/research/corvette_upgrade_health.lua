base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"AssaultCorvetteHealthUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",
	Cost = 					800,
	Time = 					40,
	DisplayedName =			"$7555",
	DisplayPriority =		200,
	Description =			"$7556",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_AssaultCorvette",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.5,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7237",
}
local temp_res_2 =
{
	Name =					"PulsarCorvetteHealthUpgrade1",
	RequiredResearch =		"",                                        
	RequiredSubSystems =	"Research | AdvancedResearch & CorvetteProduction",  
	Cost = 					1000,
	Time = 					50,
	DisplayedName =			"$7563",
	DisplayPriority =		206,                                                    
	Description =			"$7564",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_PulsarCorvette",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.5,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7241",
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
