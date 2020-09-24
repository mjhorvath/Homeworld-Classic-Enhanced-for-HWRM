base_research = nil

base_research = {}

local temp_res_1 =
{
	Name					= "CarrierHealthUpgrade1",
	RequiredResearch		= "",
	RequiredSubSystems		= "Research | AdvancedResearch & CapShipProduction",
	Cost					= 800,
	Time					= 40,
	DisplayedName			= "$7531",
	DisplayPriority			= 61,
	Description				= "$7532",
	UpgradeType				= Modifier,
	TargetType				= Ship,
	TargetName				= "Hgn_Carrier",
	UpgradeName				= "MAXHEALTH",
	UpgradeValue			= 1.4,
	Icon					= Icon_Health,
	ShortDisplayedName		= "$7221",
}
local temp_res_2 =
{
	Name =					"CarrierMAXSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch & CapShipProduction",
	Cost = 					400,
	Time = 					30,
	DisplayedName =			"$7535",
	DisplayPriority =		64,
	Description =			"$7536",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Carrier",
	UpgradeName =			"MAXSPEED",
	UpgradeValue =			1.25,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7221",
}
local temp_res_3 =
{
	Name =				"CarrierBUILDSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =		"AdvancedResearch & CapShipProduction",
	Cost = 				2250,
	Time = 				60,
	DisplayedName =			"$7805",
	DisplayPriority =		65,
	Description =			"$7806",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Carrier",
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
