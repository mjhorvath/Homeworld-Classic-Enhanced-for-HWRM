base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"ResourceCollectorHealthUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost =					1000,
	Time =					90,
	DisplayedName =			"$7611",
	DisplayPriority =		701,
	Description =			"$7612",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_ResourceCollector",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.6,
	Icon =					Icon_Health,
	ShortDisplayedName =	"$7264",
}
local temp_res_2 =
{
	Name =					"ResourceControllerHealthUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch",
	Cost =					400,
	Time =					60,
	DisplayedName =			"$7615",
	DisplayPriority =		704,
	Description =			"$7616",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_ResourceController",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.6,
	Icon =					Icon_Health,
	ShortDisplayedName =	"$7267",
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
