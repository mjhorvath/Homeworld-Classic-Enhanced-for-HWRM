--==============================================================================
-- SPECIAL FLEETS
-- When adding new races, be sure to add new starting fleet files for the races 
-- in the "data/scripts/startingfleets" folder. The number and types of 
-- different special starting fleets must be the same for all races. This mode 
-- automatically overrides HWC's CARRIER ONLY mode, and is therefore mutually-
-- exclusive with it. This mode also ignores the RESOURCING OFF, RESEARCH OFF 
-- and HYPERSPACE OFF rules.
-- Currently, any subsystems listed here will be awarded to ALL ships of the 
-- associated type in the player's fleet as opposed to just the first one. So, 
-- if a player has two carriers, they will both get "Hgn_C_Module_Research" if 
-- specified.
--
-- worker: no carrier, 8 cols, 2 ctrl, col repair and health research
-- scientist: no carrier, 2 cols, research subs
-- soldier: 2 carriers, 2 cols
-- spy: 2 cols, 3 scouts, 3 ecm probes, ping research, ecm research, sensdis research
-- builder: shipyard vs mothership, 2 cols, build speed research
-- antifighter: 2 cols, 6 turrets or interceptors, turret and interceptor research
--
-- probelmatic races: bentusi, kadeshi
--

FleetsNumber = 7
FleetsLabelIndex = "hiigaran"
FleetsTable =
{
	------------------------------------------------------------------------
	hiigaran =
	{
		startingfleets =
		{
			{
				-- the identifier of the special fleet
				name = "normal",
				label = "Normal HW2",
				-- needs to have a shiphold and a parade formation
				startingship = "Hgn_MotherShip",
				-- research items
				research =
				{
				},
				-- subsystems
				subsystems =
				{
				},
				-- these ships exit the shiphold when the game starts
				ships =
				{
				},
				-- these ships spawn in formation with the mothership
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_Carrier",
				},
			},
			{
				name = "worker",
				label = "Worker",
				startingship = "Hgn_MotherShip",
				research =
				{
					"resourcecollectorhealthupgrade1",
					"resourcecontrollerhealthupgrade1",
					"repairability",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_ResourceController",
					"Hgn_ResourceController",
				},
			},
			{
				name = "scientist",
				label = "Scientist",
				startingship = "Hgn_MotherShip",
				research =
				{
				},
				subsystems =
				{
					{"Hgn_MS_Module_Research", "Hgn_MotherShip",},
					{"Hgn_MS_Module_ResearchAdvanced", "Hgn_MotherShip",},
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
				},
			},
			{
				name = "soldier",
				label = "Soldier",
				startingship = "Hgn_MotherShip",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_Carrier",
					"Hgn_Carrier",
				},
			},
			{
				name = "spy",
				label = "Spy",
				startingship = "Hgn_MotherShip",
				research =
				{
					"ECMProbe",
					"SensDisProbe",
					"ScoutPingAbility",
				},
				subsystems =
				{
				},
				ships =
				{
					"Hgn_Scout",
					"Hgn_Scout",
					"Hgn_Scout",
					"Hgn_ECMProbe",
					"Hgn_ECMProbe",
					"Hgn_ECMProbe",
				},
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_Carrier",
				},
			},
			{
				name = "builder",
				label = "Builder",
				startingship = "Hgn_Shipyard",
				research =
				{
					"MothershipBUILDSPEEDUpgrade1",
					"CarrierBUILDSPEEDUpgrade1",
					"ShipyardBUILDSPEEDUpgrade1",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Hgn_Carrier",
				},
			},
			{
				name = "antifighter",
				label = "Anti-Fighter",
				startingship = "Hgn_MotherShip",
				research =
				{
					"GunTurretHealthUpgrade1",
--					"GunTurretHealthUpgrade2",
					"InterceptorMAXSPEEDUpgrade1",
--					"InterceptorMAXSPEEDUpgrade2",
				},
				subsystems =
				{
				},
				ships =
				{
					"Hgn_GunTurret",
					"Hgn_GunTurret",
					"Hgn_GunTurret",
					"Hgn_GunTurret",
					"Hgn_GunTurret",
					"Hgn_GunTurret",
				},
				ships_hyper =
				{
					"Hgn_ResourceCollector",
					"Hgn_ResourceCollector",
					"Hgn_Carrier",
				},
			},
		},
	},
	------------------------------------------------------------------------
	vaygr =
	{
		startingfleets =
		{
			{
				name = "normal",
				label = "Normal HW2",
				startingship = "Vgr_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_Carrier",
				},
			},
			{
				name = "worker",
				label = "Worker",
				startingship = "Vgr_Mothership",
				research =
				{
					"utilityhealthupgrade1",
--					"utilityhealthupgrade2",
					"repairability",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_ResourceController",
					"Vgr_ResourceController",
				},
			},
			{
				name = "scientist",
				label = "Scientist",
				startingship = "Vgr_Mothership",
				research =
				{
				},
				subsystems =
				{
					{"vgr_ms_module_research", "vgr_mothership",},
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
				},
			},
			{
				name = "soldier",
				label = "Soldier",
				startingship = "Vgr_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_Carrier",
					"Vgr_Carrier",
				},
			},
			{
				name = "spy",
				label = "Spy",
				startingship = "Vgr_Mothership",
				research =
				{
					"probesensordisruption",
					"probeproxsensor",
					"scoutempability",
				},
				subsystems =
				{
				},
				ships =
				{
					"vgr_scout",
					"vgr_scout",
					"vgr_scout",
					"vgr_probe_ecm",
					"vgr_probe_ecm",
					"vgr_probe_ecm",
				},
				ships_hyper =
				{
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_Carrier",
				},
			},
			{
				name = "builder",
				label = "Builder",
				startingship = "vgr_shipyard",
				research =
				{
					"mothershipbuildspeedupgrade1",
					"shipyardbuildspeedupgrade1",
					"carrierbuildspeedupgrade1",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Vgr_Carrier",
				},
			},
			{
				name = "antifighter",
				label = "Anti-Fighter",
				startingship = "Vgr_Mothership",
				research =
				{
					"platformhealthupgrade1",
--					"platformhealthupgrade2",
					"fighterspeedupgrade1",
--					"fighterspeedupgrade2",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"vgr_weaponplatform_gun",
					"vgr_weaponplatform_gun",
					"vgr_weaponplatform_gun",
					"vgr_weaponplatform_gun",
					"vgr_weaponplatform_gun",
					"vgr_weaponplatform_gun",
					"Vgr_ResourceCollector",
					"Vgr_ResourceCollector",
					"Vgr_Carrier",
				},
			},
		},
	},
	------------------------------------------------------------------------
	kushan =
	{
		startingfleets =
		{
			{
				name = "normal",
				label = "Normal HW2",
				startingship = "kus_mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"kus_resourcecollector",
					"kus_resourcecollector",
					"kus_resourcecollector",
					"kus_resourcecollector",
					"kus_resourcecollector",
					"kus_resourcecollector",
					"kus_carrier",
				},
			},
			{
				name = "worker",
				label = "Worker",
				startingship = "Kus_Mothership",
				research =
				{
					"ResourceCollectionRateExpert",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResourceController",
					"Kus_ResourceController",
				},
			},
			{
				name = "scientist",
				label = "Scientist",
				startingship = "Kus_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_ResearchShip",
					"Kus_ResearchShip_1",
				},
			},
			{
				name = "soldier",
				label = "Soldier",
				startingship = "Kus_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_Carrier",
					"Kus_Carrier",
				},
			},
			{
				name = "spy",
				label = "Spy",
				startingship = "Kus_Mothership",
				research =
				{
					"ProximitySensor",
					"SensorArray",
				},
				subsystems =
				{
				},
				ships =
				{
					"kus_scout",
					"kus_scout",
					"kus_scout",
					"Kus_ProximitySensor",
					"Kus_ProximitySensor",
					"Kus_SensorArray",
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_Carrier",
				},
			},
			{
				name = "builder",
				label = "Builder",
				startingship = "Kus_Mothership",
				research =
				{
					"AllShipBuildSpeedExpert",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Kus_Mothership",
				},
			},
			{
				name = "antifighter",
				label = "Anti-Fighter",
				startingship = "Kus_Mothership",
				research =
				{
					"DefenderSubSystems",
					"FastTrackingTurrets",
					"DroneTechnology",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_Carrier",
				},
			},
		},
	},
	------------------------------------------------------------------------
	taiidan =
	{
		startingfleets =
		{
			{
				name = "normal",
				label = "Normal HW2",
				startingship = "tai_mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"tai_resourcecollector",
					"tai_resourcecollector",
					"tai_resourcecollector",
					"tai_resourcecollector",
					"tai_resourcecollector",
					"tai_resourcecollector",
					"tai_carrier",
				},
			},
			{
				name = "worker",
				label = "Worker",
				startingship = "Tai_Mothership",
				research =
				{
					"ResourceCollectionRateExpert",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResourceController",
					"Tai_ResourceController",
				},
			},
			{
				name = "scientist",
				label = "Scientist",
				startingship = "Tai_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_ResearchShip",
					"Tai_ResearchShip_1",
				},
			},
			{
				name = "soldier",
				label = "Soldier",
				startingship = "Tai_Mothership",
				research =
				{
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_Carrier",
					"Tai_Carrier",
				},
			},
			{
				name = "spy",
				label = "Spy",
				startingship = "Tai_Mothership",
				research =
				{
					"ProximitySensor",
					"SensorArray",
				},
				subsystems =
				{
				},
				ships =
				{
					"Tai_Scout",
					"Tai_Scout",
					"Tai_Scout",
					"Tai_ProximitySensor",
					"Tai_ProximitySensor",
					"Tai_SensorArray",
				},
				ships_hyper =
				{
					"Kus_ResourceCollector",
					"Kus_ResourceCollector",
					"Kus_Carrier",
				},
			},
			{
				name = "builder",
				label = "Builder",
				startingship = "Tai_Mothership",
				research =
				{
					"AllShipBuildSpeedExpert",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Tai_Mothership",
				},
			},
			{
				name = "antifighter",
				label = "Anti-Fighter",
				startingship = "Tai_Mothership",
				research =
				{
					"DefenderSubSystems",
					"FastTrackingTurrets",
					"DefenseField",
				},
				subsystems =
				{
				},
				ships =
				{
				},
				ships_hyper =
				{
					"Tai_ResourceCollector",
					"Tai_ResourceCollector",
					"Tai_Carrier",
				},
			},
		},
	},
}
