base_research = nil

base_research = {}

local temp_res_1 =
{
	Name =					"ShipyardHealthUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =	"Research | AdvancedResearch & Hyperspace",
	Cost =					800,
	Time = 					30,
	DisplayedName =			"$7619",
	DisplayPriority =			1200,
	Description =			"$7620",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
	Icon = 				Icon_Health,
	ShortDisplayedName = 		"$7271",
}
local temp_res_2 =
{
	Name =				"ShipyardHealthUpgrade1_SPG",
	RequiredResearch =		"ShipyardHealthUpgrade1",
	RequiredSubSystems =		"",
	Cost = 					0,
	Time = 					0,
	DisplayedName =			"",
	DisplayPriority =			1200,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_SPG",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
}
local temp_res_3 =
{
	Name =				"ShipyardHealthUpgrade1_Elohim",
	RequiredResearch =		"ShipyardHealthUpgrade1",
	RequiredSubSystems =		"",
	Cost = 					0,
	Time = 					0,
	DisplayedName =			"",
	DisplayPriority =			1200,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_Elohim",
	UpgradeName =			"MAXHEALTH",
	UpgradeValue =			1.4,
}
local temp_res_4 =
{
	Name =				"ShipyardMAXSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =		"Research | AdvancedResearch & Hyperspace",
	Cost = 					400,
	Time = 					30,
	DisplayedName =			"$7623",
	DisplayPriority =			1203,
	Description =			"$7624",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard",
	UpgradeName =			"MAXSPEED",
	UpgradeValue =			1.25,
	Icon = 				Icon_Speed,
	ShortDisplayedName = 		"$7271",
}
local temp_res_5 =
{
	Name =				"ShipyardMAXSPEEDUpgrade1_SPG",
	RequiredResearch =		"ShipyardMAXSPEEDUpgrade1",
	RequiredSubSystems =		"",
	Cost = 					0,
	Time = 					0,
	DisplayedName =			"",
	DisplayPriority =			1203,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_SPG",
	UpgradeName =			"MAXSPEED",
	UpgradeValue =			1.25,
}
local temp_res_6 =
{
	Name =				"ShipyardMAXSPEEDUpgrade1_Elohim",
	RequiredResearch =		"ShipyardMAXSPEEDUpgrade1",
	RequiredSubSystems =		"",
	Cost = 					0,
	Time = 					0,
	DisplayedName =			"",
	DisplayPriority =			1203,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_Elohim",
	UpgradeName =			"MAXSPEED",
	UpgradeValue =			1.25,
}
local temp_res_7 =
{
	Name =				"ShipyardBUILDSPEEDUpgrade1",
	RequiredResearch =		"",
	RequiredSubSystems =		"AdvancedResearch & Hyperspace",
	Cost = 				1000,
	Time = 				40,
	DisplayedName =			"$7810",
	DisplayPriority =			1204,
	Description =			"$7811",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard",
	UpgradeName =			"BUILDSPEED",
	UpgradeValue =			1.3,
	Icon = 				Icon_Build,
	ShortDisplayedName = 		"$7240",
}
local temp_res_8 =
{
	Name =				"ShipyardBUILDSPEEDUpgrade1_SPG",
	RequiredResearch =		"ShipyardBUILDSPEEDUpgrade1",
	RequiredSubSystems =		"",
	Cost = 				0,
	Time = 				0,
	DisplayedName =			"",
	DisplayPriority =			1204,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_SPG",
	UpgradeName =			"BUILDSPEED",
	UpgradeValue =			1.3,
}
local temp_res_9 =
{
	Name =				"ShipyardBUILDSPEEDUpgrade1_Elohim",
	RequiredResearch =		"ShipyardBUILDSPEEDUpgrade1",
	RequiredSubSystems =		"",
	Cost = 				0,
	Time = 				0,
	DisplayedName =			"",
	DisplayPriority =			1204,
	Description =			"Instant Tech",
	UpgradeType =			Modifier,
	TargetType =			Ship,
	TargetName =			"Hgn_Shipyard_Elohim",
	UpgradeName =			"BUILDSPEED",
	UpgradeValue =			1.3,
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)
tinsert(base_research, temp_res_3)
tinsert(base_research, temp_res_4)
tinsert(base_research, temp_res_5)
tinsert(base_research, temp_res_6)
tinsert(base_research, temp_res_7)
tinsert(base_research, temp_res_8)
tinsert(base_research, temp_res_9)

local temp_params = {"car","rch","res","hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)
MultiResearch(temp_res_3, temp_params)
MultiResearch(temp_res_4, temp_params)
MultiResearch(temp_res_5, temp_params)
MultiResearch(temp_res_6, temp_params)
MultiResearch(temp_res_7, temp_params)
MultiResearch(temp_res_8, temp_params)
MultiResearch(temp_res_9, temp_params)

-- Add these items to the research tree!
for i, e in base_research do
	research[res_index] = e
	res_index = res_index + 1
end

base_research = nil 
