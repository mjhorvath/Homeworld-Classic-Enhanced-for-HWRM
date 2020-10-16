base_research = nil

base_research =
{
	{
		Name =			"SGMFrigateHealth",
		RequiredResearch =	"RESEARCH HACK",
		RequiredSubSystems =	"",
		Cost = 			0,
		Time = 			0,
		DisplayedName =		"",
		DisplayPriority =	1208,
		Description =		"",
		UpgradeType =		Modifier,
		TargetType =		Family,
		TargetName =		"Frigate",
		UpgradeName =		"MAXHEALTH",
		UpgradeValue =		0.65,
		DoNotGrant =	1,
	},
}

local temp_res_1 =
{
	Name =			"SGMCapitalHealth",
	RequiredResearch =	"RESEARCH HACK",
	RequiredSubSystems =	"",
	Cost = 			0,
	Time = 			0,
	DisplayedName =		"",
	DisplayPriority =	1208,
	Description =		"",
	UpgradeType =		Modifier,
	TargetType =		Ship,
	TargetName =		"Hgn_Mothership",
	UpgradeName =		"MAXHEALTH",
	UpgradeValue =		0.5,
	DoNotGrant =	1,
}
local temp_res_2 =
{
	Name =			"SGMCarrierHealth",
	RequiredResearch =	"RESEARCH HACK",
	RequiredSubSystems =	"",
	Cost = 			0,
	Time = 			0,
	DisplayedName =		"",
	DisplayPriority =	1208,
	Description =		"",
	UpgradeType =		Modifier,
	TargetType =		Ship,
	TargetName =		"Hgn_Carrier",
	UpgradeName =		"MAXHEALTH",
	UpgradeValue =		0.65,
	DoNotGrant =	1,
}
local temp_res_3 =
{
	Name =			"SGMShipyardHealth",
	RequiredResearch =	"RESEARCH HACK",
	RequiredSubSystems =	"",
	Cost = 			0,
	Time = 			0,
	DisplayedName =		"",
	DisplayPriority =	1208,
	Description =		"",
	UpgradeType =		Modifier,
	TargetType =		Ship,
	TargetName =		"Hgn_Shipyard",
	UpgradeName =		"MAXHEALTH",
	UpgradeValue =		0.5,
	DoNotGrant =	1,
}

tinsert(base_research, temp_res_1)
tinsert(base_research, temp_res_2)
tinsert(base_research, temp_res_3)

local temp_params = {"car","rch","res","hyp"}
MultiResearch(temp_res_1, temp_params)
MultiResearch(temp_res_2, temp_params)
MultiResearch(temp_res_3, temp_params)

-- Add these items to the research tree!
for i,e in base_research do
	research[res_index] = e
	res_index = res_index+1
end

base_research = nil
