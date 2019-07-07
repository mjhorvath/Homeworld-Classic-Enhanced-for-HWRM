-- Research, ships & modules restricted by individual gamerules
RestrictedBy =
{
	MPRestrict =
	{
		hiigaran =
		{
			build =
			{
			},
			research =
			{
				-- singleplayer_hacks.lua in HW2Campaign.big
--				"AssaultCorvetteEliteWeaponUpgrade",
--				"AttackBomberEliteWeaponUpgrade",
--				"SensorsDowngrade1",
--				"SensorsDowngrade2",
--				"SensorsDowngrade3",
--				"SensorsBackToNormal1",
--				"SensorsBackToNormal2",
--				"SensorsBackToNormal3",
--				"MoverHealthDowngrade",
--				"MoverHealthUpgrade",
--				"FrigateHealthUpgradeSPGAME",
--				"DamageMoverTech",
--				"KeeperHealthUpgradeSPGAME_LOW",
--				"KeeperHealthUpgradeSPGAME_MED",
--				"KeeperHealthUpgradeSPGAME_HIGH",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_1",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_2",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_3",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_4",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_5",
--				"KeeperWeaponUpgradeSPGAME_M10_LVL_6",
--				"KeeperHealthUpgradeSPGAME_M10_LVL_1",
--				"KeeperHealthUpgradeSPGAME_M10_LVL_2",
--				"KeeperHealthUpgradeSPGAME_M10_LVL_3",
--				"AttackDroidHealthUpgradeSPGAME_LOW",
--				"AttackDroidHealthUpgradeSPGAME_MED",
--				"AttackDroidHealthUpgradeSPGAME_HIGH",
--				"AttackDroidWeaponUpgradeSPGAME_LOW",
--				"AttackDroidWeaponUpgradeSPGAME_MED",
--				"AttackDroidWeaponUpgradeSPGAME_HIGH",
--				"RadiationDefenseField",
			},
		},
		vaygr =
		{
			build =
			{
			},
			research =
			{
				-- singleplayer_hacks.lua in HW2Campaign.big
--				"WeakVgrHeavyMissiles",
--				"HyperspaceRecoveryTimeUpgradeSPGAME",
--				"VaygrCarrierHealthRegenDowngrade",
--				"HyperspaceTransitionTimeUpgradeSPGAME",
--				"SuperCapHealthUpgradeSPGAME",
--				"SuperCapDamageAppliedSPGAME",
--				"ShipyardSpeedDowngradeSPGAME",
--				"VaygrFrigateHealthUpgradeSPGAME",
--				"VaygrFrigateHealthRegenDowngradeSPGAME",
--				"CorvetteHealthUpgradeSPGAME",
--				"ExtraStrongVgrHeavyMissilesSPGAME",
--				"VaygrCaptureHack",
--				"VaygrReduceCaptureHack",
--				"VaygrRadiationImmunityHack",
--				"VaygrCarrierHealthUpgrade",
--				"MakaanCarrierHealth",
--				"MakaanDestroyerHealth",
--				"MakaanShipyardHealth",
--				"MakaanBattleCruiserHealth",
--				"MakaanFrigateHealth",
--				"MakaanCorvetteHealth",
--				"MakaanFighterHealth",
--				"MakaanUtilityHealth",
--				"MakaanPlatformHealth",
--				"StrongerGunPlats",
--				"StrongerMissilePlats",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- these don't appear in build.lua, so trying to grant or restrict them using the normal scripts results in an error
	motherships =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_Mothership",
				"Hgn_Mothership_research0",
			},
			research =
			{
			},
		},
		vaygr =
		{
			build =
			{
				"vgr_mothership",
				"vgr_mothership_makaan",
			},
			research =
			{
			},
		},
		kushan =
		{
			build =
			{
				"kus_mothership",
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
				"tai_mothership",
			},
			research =
			{
			},
		},
	},
	-- "Start With" is set to "Mothership".
	StartWithMothership = 
	{
		hiigaran =
		{
			build =
			{
			},
			research =
			{
				"CarrierHealthUpgrade1_carrieronly1_research0",
--				"CarrierHealthUpgrade2_carrieronly1_research0",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research0",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research0",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research0",
				"CarrierHealthUpgrade1_carrieronly1_research1",
--				"CarrierHealthUpgrade2_carrieronly1_research1",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research1",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research1",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research1",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_Carrier_carrieronly1",
				"Vgr_C_Production_Fighter_carrieronly1",
				"Vgr_C_Production_Corvette_carrieronly1",
			},
			research =
			{
				"SuperCapHealthUpgrade1_carrieronly1",
--				"SuperCapHealthUpgrade2_carrieronly1",
				"SuperCapSpeedUpgrade1_carrieronly1",
--				"SuperCapSpeedUpgrade2_carrieronly1",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- "Start With" is set to "HW1 Map Default".
	StartWithMapDefault = 
	{
		hiigaran =
		{
			build =
			{
			},
			research =
			{
				"CarrierHealthUpgrade1_carrieronly1_research0",
--				"CarrierHealthUpgrade2_carrieronly1_research0",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research0",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research0",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research0",
				"CarrierHealthUpgrade1_carrieronly1_research1",
--				"CarrierHealthUpgrade2_carrieronly1_research1",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research1",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research1",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research1",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_carrieronly1_carrieronly1",
				"Vgr_C_Production_Fighter_carrieronly1",
				"Vgr_C_Production_Corvette_carrieronly1",
			},
			research =
			{
				"SuperCapHealthUpgrade1_carrieronly1",
--				"SuperCapHealthUpgrade2_carrieronly1",
				"SuperCapSpeedUpgrade1_carrieronly1",
--				"SuperCapSpeedUpgrade2_carrieronly1",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- "Start With" is set to "Carrier Only".
	StartWithCarrierOnly = 
	{
		hiigaran =
		{
			build =
			{
				"Hgn_Shipyard",
				"Hgn_Shipyard_Elohim",
				"Hgn_Shipyard_research0",
			},
			research =
			{
				"MothershipHealthUpgrade1",
				"MothershipMAXSPEEDUpgrade1",
				"MothershipBUILDSPEEDUpgrade1",
				"ShipyardHealthUpgrade1",
				"ShipyardMAXSPEEDUpgrade1",
				"ShipyardBUILDSPEEDUpgrade1",
				"CarrierHealthUpgrade1",	-- aka "_carrieronly0_research1"
--				"CarrierHealthUpgrade2",	-- aka "_carrieronly0_research1"
				"CarrierMAXSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
--				"CarrierMAXSPEEDUpgrade2",	-- aka "_carrieronly0_research1"
				"CarrierBUILDSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
				"CarrierHealthUpgrade1_carrieronly0_research0",
--				"CarrierHealthUpgrade2_carrieronly0_research0",
				"CarrierMAXSPEEDUpgrade1_carrieronly0_research0",
--				"CarrierMAXSPEEDUpgrade2_carrieronly0_research0",
				"CarrierBUILDSPEEDUpgrade1_carrieronly0_research0",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_Shipyard",
				"Vgr_Carrier",
				"Vgr_C_Production_Fighter",
				"Vgr_C_Production_Corvette",
			},
			research =
			{
				"MothershipBUILDSPEEDUpgrade1",
				"SuperCapHealthUpgrade1",
--				"SuperCapHealthUpgrade2",
				"SuperCapSpeedUpgrade1",
--				"SuperCapSpeedUpgrade2",
				"CarrierBUILDSPEEDUpgrade1",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
				"SuperCapitalShipDrive",
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
				"SuperCapitalShipDrive",
			},
		},
	},
	-- "Research" is set to "Off".
	ResearchOff =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_C_Module_FireControl",
				"Hgn_MS_Module_FireControl",
				"Hgn_C_Module_ResearchAdvanced",
				"Hgn_MS_Module_ResearchAdvanced",
				"Hgn_Carrier",
				"Hgn_Shipyard",	-- aka "_research1_hyperspace1"
				"hgn_shipyard_research1_hyperspace0",
				"Hgn_Shipyard_Elohim",
				"Hgn_Battlecruiser",
			},
			research =
			{
				"CarrierHealthUpgrade1",	-- aka "_carrieronly0_research1"
--				"CarrierHealthUpgrade2",	-- aka "_carrieronly0_research1"
				"CarrierMAXSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
--				"CarrierMAXSPEEDUpgrade2",	-- aka "_carrieronly0_research1"
				"CarrierBUILDSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
				"CarrierHealthUpgrade1_carrieronly1_research1",
--				"CarrierHealthUpgrade2_carrieronly1_research1",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research1",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research1",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research1",
			},
		},
		vaygr =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan =
		{
			build =
			{
				"kus_researchship",
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
				"tai_researchship",
			},
			research =
			{
			},
		},
	},
	-- "Research" is set to "On".
	ResearchOn = 
	{
		hiigaran =
		{
			build =
			{
				"Hgn_C_Module_FireControl_research0",
				"Hgn_MS_Module_FireControl_research0",
				"Hgn_Carrier_research0",
				"Hgn_Shipyard_research0_hyperspace0",
				"Hgn_Shipyard_research0_hyperspace1",
				"Hgn_Battlecruiser_research0",
			},
			research =
			{
				"CarrierHealthUpgrade1_carrieronly1_research0",
--				"CarrierHealthUpgrade2_carrieronly1_research0",
				"CarrierMAXSPEEDUpgrade1_carrieronly1_research0",
--				"CarrierMAXSPEEDUpgrade2_carrieronly1_research0",
				"CarrierBUILDSPEEDUpgrade1_carrieronly1_research0",
				"CarrierHealthUpgrade1_carrieronly0_research0",
--				"CarrierHealthUpgrade2_carrieronly0_research0",
				"CarrierMAXSPEEDUpgrade1_carrieronly0_research0",
--				"CarrierMAXSPEEDUpgrade2_carrieronly0_research0",
				"CarrierBUILDSPEEDUpgrade1_carrieronly0_research0",
			},
		},
		vaygr =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- "Hyperspace" is set to "Off".
	HyperspaceOff =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_C_Module_Hyperspace",
				"Hgn_C_Module_HyperspaceInhibitor",
				"Hgn_C_Sensors_DetectHyperspace",
				"Hgn_MS_Module_Hyperspace",
				"Hgn_MS_Module_HyperspaceInhibitor",
				"Hgn_MS_Sensors_DetectHyperspace",
				"Hgn_Shipyard_research0_hyperspace1",
				"Hgn_Shipyard_research1_hyperspace1",
			},
			research =
			{
				"HyperspaceCostUpgrade1",
--				"HyperspaceCostUpgrade2",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_C_Module_Hyperspace",
				"Vgr_C_Module_HyperspaceInhibitor",
				"Vgr_C_Sensors_DetectHyperspace",
				"Vgr_MS_Module_Hyperspace",
				"Vgr_MS_Module_HyperspaceInhibitor",
				"Vgr_MS_Sensors_DetectHyperspace",
				"Vgr_HyperSpace_Platform",
				"Vgr_Shipyard",
				"Vgr_Shipyard_Makaan",
			},
			research =
			{
				"HyperspaceGateTech",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- "Research" is set to "On".
	HyperspaceOn =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_Shipyard_research0_hyperspace0",
				"Hgn_Shipyard_research1_hyperspace0",
			},
			research =
			{
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_Shipyard_hyperspace0",
			},
			research =
			{
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	-- resourcing is disabled.
	ResourceOff =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_ResourceCollector",
				"Hgn_ResourceController",
			},
			research =
			{
				"RepairAbility",
				"ResourceCollectorHealthUpgrade1",
				"ResourceControllerHealthUpgrade1",
--				"ResourceControllerHealthUpgrade2",
--				"ResourceCollectorHealthUpgrade2",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_ResourceCollector",
				"Vgr_ResourceController",
			},
			research =
			{
				"RepairAbility",
				"UtilityHealthUpgrade1",
--				"UtilityHealthUpgrade2",
			},
		},
		kushan =
		{
			build =
			{
				"Kus_ResourceCollector",
				"Kus_ResourceController",
			},
			research =
			{
				"ResourceCollectionRateExpert",
			},
		},
		taiidan =
		{
			build =
			{
				"Tai_ResourceCollector",
				"Tai_ResourceController",
			},
			research =
			{
				"ResourceCollectionRateExpert",
			},
		},
	},
	-- resourcing is enabled.
	ResourceOn =
	{
		hiigaran =
		{
			build =
			{
			},
			research =
			{
			},
		},
		vaygr =
		{
			build =
			{
			},
			research =
			{
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
			},
		},
	},
	HumanPlayer =
	{
		hiigaran =
		{
			build =
			{
			},
			research =
			{
				"cpuplayers_defensive",
				"cpuplayers_aggressive",
				"cpuplayers_dynamic",
				"cpuplayers_norushtime5",
				"cpuplayers_norushtime10",
				"cpuplayers_norushtime15",
				"AllShipBuildSpeed",
				"AllShipBuildSpeedHard",
				"AllShipBuildSpeedExpert",
				"ResourceCollectionRateHard",
				"ResourceCollectionRateExpert",
			},
		},
		vaygr =
		{
			build =
			{
			},
			research =
			{
				"cpuplayers_defensive",
				"cpuplayers_aggressive",
				"cpuplayers_dynamic",
				"cpuplayers_norushtime5",
				"cpuplayers_norushtime10",
				"cpuplayers_norushtime15",
				"AllShipBuildSpeed",
				"AllShipBuildSpeedHard",
				"AllShipBuildSpeedExpert",
				"ResourceCollectionRateHard",
				"ResourceCollectionRateExpert",
			},
		},
		kushan =
		{
			build =
			{
			},
			research =
			{
				"cpuplayers_defensive",
				"cpuplayers_aggressive",
				"cpuplayers_dynamic",
				"cpuplayers_norushtime5",
				"cpuplayers_norushtime10",
				"cpuplayers_norushtime15",
				"AllShipBuildSpeed",
				"AllShipBuildSpeedHard",
				"AllShipBuildSpeedExpert",
				"ResourceCollectionRateHard",
				"ResourceCollectionRateExpert",
				"MissileDestroyerVolley",
				"HeavyCorvetteAttackBurst",
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
				"cpuplayers_defensive",
				"cpuplayers_aggressive",
				"cpuplayers_dynamic",
				"cpuplayers_norushtime5",
				"cpuplayers_norushtime10",
				"cpuplayers_norushtime15",
				"AllShipBuildSpeed",
				"AllShipBuildSpeedHard",
				"AllShipBuildSpeedExpert",
				"ResourceCollectionRateHard",
				"ResourceCollectionRateExpert",
				"MissileDestroyerVolley",
				"HeavyCorvetteAttackBurst",
			},
		},
	},
	Misc =
	{
		hiigaran =
		{
			build =
			{
				"Hgn_Shipyard_SPG",
				"Hgn_MS_Production_CorvetteMover",
				"Kpr_Mover",
			},
			research =
			{
				"SGMCapitalHealth",
				"SGMCarrierHealth",
				"SGMFrigateHealth",
				"SGMShipyardHealth",
			},
		},
		vaygr =
		{
			build =
			{
				"Vgr_PlanetKillerMissile",
			},
			research =
			{
				"SGMCapitalHealth",
				"SGMCarrierHealth",
				"SGMFrigateHealth",
				"SGMShipyardHealth",
			},
		},
		kushan =
		{
			build =
			{
				"kus_drone0",
				"kus_drone1",
				"kus_drone2",
				"kus_drone3",
				"kus_drone4",
				"kus_drone5",
				"kus_drone6",
				"kus_drone7",
				"kus_drone8",
				"kus_drone9",
				"kus_drone10",
				"kus_drone11",
				"kus_drone12",
				"kus_drone13",
			},
			research =
			{
				"SGMCapitalHealth",
				"SGMFrigateHealth",
				"SGMGravWellHealth",
			},
		},
		taiidan =
		{
			build =
			{
			},
			research =
			{
				"SGMCapitalHealth",
				"SGMFrigateHealth",
				"SGMGravWellHealth",
			},
		},
	},
}
