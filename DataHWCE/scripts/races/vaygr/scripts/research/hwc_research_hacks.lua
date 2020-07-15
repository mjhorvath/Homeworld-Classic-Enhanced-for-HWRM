base_research = nil 
base_research = {
	-- HWC Hacks --------------
	{
		Name = "SuperCapHealthUpgrade1_carrieronly1",
		RequiredResearch = "",
		RequiredSubSystems = "Research",
		Cost = 4000,
		Time = 60,
		DisplayedName = "$7743",
		DisplayPriority = 61,
		Description = "$7744",
		UpgradeType = Modifier,
		TargetType = Family,
		TargetName = "Capital",
		UpgradeName = "MAXHEALTH",
		UpgradeValue = 1.3,
		Icon = Icon_Health,
		ShortDisplayedName = "$7354",
	},
	{
		Name = "SuperCapSpeedUpgrade1_carrieronly1",
		RequiredResearch = "",
		RequiredSubSystems = "Research",
		Cost = 3500,
		Time = 60,
		DisplayedName = "$7747",
		DisplayPriority = 64,
		Description = "$7748",
		UpgradeType = Modifier,
		TargetType = Family,
		TargetName = "Capital",
		UpgradeName = "MAXSPEED",
		UpgradeValue = 1.2,
		Icon = Icon_Speed,
		ShortDisplayedName = "$7354",
	},
	{
		Name = "CarrierBUILDSPEEDUpgrade1_carrieronly1",
		RequiredResearch = "",
		RequiredSubSystems = "Research",
		Cost = 1500,
		Time = 100,
		DisplayedName = "$7820",
		DisplayPriority = 65,
		Description = "$7821",
		UpgradeType = Modifier,
		TargetType = Ship,
		TargetName = "Vgr_Carrier_CarrierOnly1",
		UpgradeName = "BUILDSPEED",
		UpgradeValue = 1.3,
		Icon = Icon_Build,
		ShortDisplayedName = "$7240",
	},
}

-- Add these items to the research tree!
for i,e in base_research do
	research[res_index] = e
	res_index = res_index+1
end

base_research = nil 