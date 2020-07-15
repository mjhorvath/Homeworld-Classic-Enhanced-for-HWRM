-- Probabilities and costs need to be updated/corrected from their default 
-- values. Probabilities are intended for HWC crate awards and Bentusi Roulette 
-- research awards. Costs are intended for HWC bounties.
--
-- Ships and classes must be listed in order of their probabilities, from 
-- lowest to highest, except for those with a probability of 0 which are 
-- ignored.
--
-- Probabilities work as follows: A random number between 0 and 1 is generated 
-- by the gametype script. This number is then compared to each item in the 
-- TechList table in the order they are listed. If the random number is less 
-- than the specified probability for that item but greater than the prob-
-- ability of the previous item, then the first item is selected. So, for 
-- instance, a random number of 0.47421 is generated and checked versus the 
-- list of Hiigaran corvettes. If the probabilities for the Gunship, Pulsar 
-- Gunship, and Minelayer corvettes are 0.33, 0.67 and 1.00 respectively, then 
-- the Pulsar Gunship is selected because the random number is greater than 
-- 0.33 but less than or equal to 0.67. The same works for the tech classes.
--
-- Right now, many of the probabilities are spread evenly across the different 
-- technologies. This will be changed back to something resembling Luke 
-- Moloney's original values some time later. The costs for many items also 
-- haven't been altered from their initial arbitrary value.
--
-- types = A table containing the identifiers of the items within the game code. 
--        Usually case-insensitive, except in the case of research.
-- name = Display name. (Is it okay to fix typos?)
-- prob = HWC Crate and GPE Bentusi Roulette probability.
-- cost = HWC Bounty RU value.
-- targ = HWC list of ships that are able to build the named subsystem. (Not 
--        implemented currently.)
-- class = Used in Defined Roles.
--
-- Missing from this list:
--   vgr_commstation_hwc
--   vgr_prisonstation_hwc
--   vgr_commstation_substation
--
-- The Player_HasQueuedResearch function is unfortunately case-sensitive unlike 
-- all the other build/research functions. This means that capitalization must 
-- be the same both in this list and in build.lua/research.lua. I would prefer 
-- that they were always lower case.
--
-- Do the "name" parameters here need to be identical to something else? I 
-- fixed some typos and hope I didn't mess up anything.
--

TechList =
{
	hiigaran =
	{
		research =
		{
			{
				class = "mothership",
				prob = 1/10,
				items =
				{
					{types = {"MothershipHealthUpgrade1"}, name = "Mothership Hull 1", prob = 1/4, cost = 1000,},
					{types = {"MothershipMAXSPEEDUpgrade1"}, name = "Mothership Engine 1", prob = 2/4, cost = 1000,},
					{types = {"HyperspaceCostUpgrade1"}, name = "Improved Hyperspace Drive 1", prob = 3/4, cost = 1000,},
					{types = {"MothershipBUILDSPEEDUpgrade1"}, name = "Mothership Build Speed", prob = 4/4, cost = 1000,},
--					{types = {"MothershipHealthUpgrade2"}, name = "Mothership Hull 2", prob = 0, cost = 1000,},
--					{types = {"MothershipMAXSPEEDUpgrade2"}, name = "Mothership Engine 2", prob = 0, cost = 1000,},
--					{types = {"HyperspaceCostUpgrade2"}, name = "Improved Hyperspace Drive 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "cruiser",
				prob = 2/10,
				items =
				{
					{types = {"BattlecruiserIonWeapons"}, name = "Battlecruiser Chassis", prob = 1/3, cost = 1000,},
					{types = {"BattlecruiserHealthUpgrade1"}, name = "Battlecruiser Hull 1", prob = 2/3, cost = 1000,},
					{types = {"BattlecruiserMAXSPEEDUpgrade1"}, name = "Battlecruiser Engine 1", prob = 3/3, cost = 1000,},
--					{types = {"BattlecruiserHealthUpgrade2"}, name = "Battlecruiser Hull 2", prob = 0, cost = 1000,},
--					{types = {"BattlecruiserMAXSPEEDUpgrade2"}, name = "Battlecruiser Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "carrier",
				prob = 3/10,
				items =
				{
					{
						types =
						{
							"CarrierHealthUpgrade1_carrieronly0_research0",
							"CarrierHealthUpgrade1",	-- aka "_carrieronly0_research1"
							"CarrierHealthUpgrade1_carrieronly1_research0",
							"CarrierHealthUpgrade1_carrieronly1_research1",
						},
						prob = 1/6,
						cost = 1000,
						name = "Carrier Hull 1",
					},
					{
						types =
						{
							"CarrierMAXSPEEDUpgrade1_carrieronly0_research0",
							"CarrierMAXSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
							"CarrierMAXSPEEDUpgrade1_carrieronly1_research0",
							"CarrierMAXSPEEDUpgrade1_carrieronly1_research1",
						},
						name = "Carrier Engine 1",
						prob = 2/6,
						cost = 1000,
					},
					{
						types =
						{
							"CarrierBUILDSPEEDUpgrade1_carrieronly0_research0",
							"CarrierBUILDSPEEDUpgrade1",	-- aka "_carrieronly0_research1"
							"CarrierBUILDSPEEDUpgrade1_carrieronly1_research0",
							"CarrierBUILDSPEEDUpgrade1_carrieronly1_research1",
						},
						name = "Carrier Build Speed",
						prob = 3/6,
						cost = 1000,
					},
					{types = {"ShipyardHealthUpgrade1"}, name = "Shipyard Hull 1", prob = 4/6, cost = 1000,},
					{types = {"ShipyardMAXSPEEDUpgrade1"}, name = "Shipyard Engine 1", prob = 5/6, cost = 1000,},
					{types = {"ShipyardBUILDSPEEDUpgrade1"}, name = "Shipyard Build Speed", prob = 6/6, cost = 1000,},
--					{types = {"ShipyardHealthUpgrade2"}, name = "Shipyard Hull 2", prob = 0, cost = 1000,},
--					{types = {"ShipyardMAXSPEEDUpgrade2"}, name = "Shipyard Engine 2", prob = 0, cost = 1000,},
--					{types = {"CarrierHealthUpgrade2"}, name = "Carrier Hull 2", prob = 0, cost = 1000,},
--					{types = {"CarrierMAXSPEEDUpgrade2"}, name = "Carrier Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "destroyer",
				prob = 4/10,
				items =
				{
					{types = {"DestroyerTech"}, name = "Destroyer Chassis", prob = 1/3, cost = 1000,},
					{types = {"DestroyerHealthUpgrade1"}, name = "Destroyer Hull  1", prob = 2/3, cost = 1000,},
					{types = {"DestroyerMAXSPEEDUpgrade1"}, name = "Destroyer Engine 1", prob = 3/3, cost = 1000,},
--					{types = {"DestroyerHealthUpgrade2"}, name = "Destroyer Hull 2", prob = 0, cost = 1000,},
--					{types = {"DestroyerMAXSPEEDUpgrade2"}, name = "Destroyer Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "frigate",
				prob = 5/10,
				items =
				{
					{types = {"ImprovedTorpedo"}, name = "Improved Torpedoes", prob = 1/8, cost = 1000,},
					{types = {"DefenseFieldFrigateShield"}, name = "Defense Field", prob = 2/8, cost = 1000,},
					{types = {"TorpedoFrigateHealthUpgrade1"}, name = "Torpedo Frigate Armor 1", prob = 3/8, cost = 1000,},
					{types = {"TorpedoFrigateMAXSPEEDUpgrade1"}, name = "Torpedo Frigate Engine 1", prob = 4/8, cost = 1000,},
					{types = {"IonCannonFrigateHealthUpgrade1"}, name = "Ion Frigate Armor 1", prob = 5/8, cost = 1000,},
					{types = {"IonCannonFrigateMAXSPEEDUpgrade1"}, name = "Ion Frigate Engine 1", prob = 6/8, cost = 1000,},
					{types = {"AssaultFrigateHealthUpgrade1"}, name = "Flak Frigate Armor 1", prob = 7/8, cost = 1000,},
					{types = {"AssaultFrigateMAXSPEEDUpgrade1"}, name = "Flak Frigate Engine 1", prob = 8/8, cost = 1000,},
--					{types = {"AssaultFrigateHealthUpgrade2"}, name = "Flak Frigate Armor 2", prob = 0, cost = 1000,},
--					{types = {"AssaultFrigateMAXSPEEDUpgrade2"}, name = "Flak Frigate Engine 2", prob = 0, cost = 1000,},
--					{types = {"IonCannonFrigateHealthUpgrade2"}, name = "Ion Frigate Armor 2", prob = 0, cost = 1000,},
--					{types = {"IonCannonFrigateMAXSPEEDUpgrade2"}, name = "Ion Frigate Engine 2", prob = 0, cost = 1000,},
--					{types = {"TorpedoFrigateHealthUpgrade2"}, name = "Torpedo Frigate Armor 2", prob = 0, cost = 1000,},
--					{types = {"TorpedoFrigateMAXSPEEDUpgrade2"}, name = "Torpedo Frigate Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "corvette",
				prob = 6/10,
				items =
				{
					{types = {"GraviticAttractionMines"}, name = "Minelaying Technology", prob = 1/5, cost = 1000,},
					{types = {"AssaultCorvetteHealthUpgrade1"}, name = "Gunship Armor 1", prob = 2/5, cost = 1000,},
					{types = {"AssaultCorvetteMAXSPEEDUpgrade1"}, name = "Gunship Engine 1", prob = 3/5, cost = 1000,},
					{types = {"PulsarCorvetteHealthUpgrade1"}, name = "Pulsar Armor 1", prob = 4/5, cost = 1000,},
					{types = {"PulsarCorvetteMAXSPEEDUpgrade1"}, name = "Pulsar Engine 1", prob = 5/5, cost = 1000,},
--					{types = {"PulsarCorvetteHealthUpgrade2"}, name = "Pulsar Armor 2", prob = 0, cost = 1000,},
--					{types = {"PulsarCorvetteMAXSPEEDUpgrade2"}, name = "Pulsar Engine 2", prob = 0, cost = 1000,},
--					{types = {"AssaultCorvetteHealthUpgrade2"}, name = "Gunship Armor 2", prob = 0, cost = 1000,},
-- 					{types = {"AssaultCorvetteMAXSPEEDUpgrade2"}, name = "Gunship Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "fighter",
				prob = 7/10,
				items =
				{
					{types = {"InterceptorMAXSPEEDUpgrade1"}, name = "Interceptor Engine 1", prob = 1/5, cost = 1000,},
					{types = {"AttackBomberMAXSPEEDUpgrade1"}, name = "Bomber Engine 1", prob = 2/5, cost = 1000,},
					{types = {"ScoutPingAbility"}, name = "Enhanced Scout Sensors", prob = 3/5, cost = 1000,},
					{types = {"AttackBomberImprovedBombs"}, name = "Improved Bombs", prob = 4/5, cost = 1000,},
					{types = {"ScoutEMPAbility"}, name = "Electro-Magnetic Pulse", prob = 5/5, cost = 1000,},
--					{types = {"InterceptorMAXSPEEDUpgrade2"}, name = "Interceptor Engine 2", prob = 0, cost = 1000,},
--					{types = {"AttackBomberMAXSPEEDUpgrade2"}, name = "Bomber Engine 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "platform",
				prob = 8/10,
				items =
				{
					{types = {"PlatformIonWeapons"}, name = "Platform Ion Weapons", prob = 1/3, cost = 1000,},
					{types = {"GunTurretHealthUpgrade1"}, name = "Gun Platform Hull 1", prob = 2/3, cost = 1000,},
					{types = {"IonTurretHealthUpgrade1"}, name = "Ion Beam Platform Hull 1", prob = 3/3, cost = 1000,},
--					{types = {"GunTurretHealthUpgrade2"}, name = "Gun Platform Hull 2", prob = 0, cost = 1000,},
--					{types = {"IonTurretHealthUpgrade2"}, name = "Ion Beam Platform Hull 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "resource",
				prob = 9/10,
				items =
				{
					{types = {"RepairAbility"}, name = "Collector Repair", prob = 1/3, cost = 1000,},
					{types = {"ResourceCollectorHealthUpgrade1"}, name = "Resource Collector Hull 1", prob = 2/3, cost = 1000,},
					{types = {"ResourceControllerHealthUpgrade1"}, name = "Mobile Refinery Hull 1", prob = 3/3, cost = 1000,},
--					{types = {"ResourceCollectorHealthUpgrade2"}, name = "Resource Collector Hull 2", prob = 0, cost = 1000,},
--					{types = {"ResourceControllerHealthUpgrade2"}, name = "Mobile Refinery Hull 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "noncombat",
				prob = 10/10,
				items =
				{
					{types = {"ECMProbe"}, name = "Sensors Distortion Probe", prob = 1/2, cost = 1000,},
					{types = {"SensDisProbe"}, name = "Proximity Sensor Probe", prob = 2/2, cost = 1000,},
				},
			},
		},
		subsystems =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Hgn_MS_Module_Research"}, name = "Mothership Research Module", prob = 1, cost = 1500,},
					{types = {"Hgn_C_Module_Research"}, name = "Carrier Research Module", prob = 1, cost = 1500,},
					{
						types =
						{
							"Hgn_C_Module_FireControl_research0",
							"Hgn_C_Module_FireControl",	-- aka "_research1"
						},
						name = "Carrier Fire Control Tower",
						prob = 1,
						cost = 1500,
					},
					{types = {"Hgn_C_Module_HyperspaceInhibitor"}, name = "Carrier Gravity Well Generator", prob = 1, cost = 1500,},
					{types = {"Hgn_MS_Module_CloakGenerator"}, name = "Mothership Cloak Generator", prob = 1, cost = 750,},
					{types = {"Hgn_SY_Production_CapShip"}, name = "Shipyard Capital Class Facility", prob = 1, cost = 1800,},
					{
						types =
						{
							"Hgn_MS_Module_FireControl_research0",
							"Hgn_MS_Module_FireControl",	-- aka "_research1"
						},
						name = "Mothership Fire Control Tower",
						prob = 1,
						cost = 1500,
					},
					{types = {"Hgn_MS_Production_CapShip"}, name = "Mothership Capital Class Facility", prob = 1, cost = 1800,},
					{types = {"Hgn_C_Module_ResearchAdvanced"}, name = "Carrier Adv. Research Module", prob = 1, cost = 2250,},
					{types = {"Hgn_MS_Module_HyperspaceInhibitor"}, name = "Mothership Gravity Well Generator", prob = 1, cost = 1500,},
					{types = {"Hgn_C_Module_CloakGenerator"}, name = "Carrier Cloak Generator", prob = 1, cost = 750,},
					{types = {"Hgn_MS_Module_Hyperspace"}, name = "Mothership Hyperspace Module", prob = 1, cost = 1000,},
					{types = {"Hgn_MS_Module_ResearchAdvanced"}, name = "Mothership Adv. Research Module", prob = 1, cost = 2250,},
					{types = {"Hgn_C_Module_Hyperspace"}, name = "Carrier Hyperspace Module", prob = 1, cost = 1000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Hgn_MS_Production_Frigate"}, name = "Mothership Frigate Facility", prob = 1, cost = 1000,},
					{types = {"Hgn_C_Production_Frigate"}, name = "Carrier Frigate Facility", prob = 1, cost = 1000,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{types = {"Hgn_MS_Production_Corvette"}, name = "Mothership Corvette Facility", prob = 1, cost = 800,},
					{types = {"Hgn_C_Production_Corvette"}, name = "Carrier Corvette Facility", prob = 1, cost = 800,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{types = {"Hgn_MS_Production_Fighter"}, name = "Mothership Fighter Facility", prob = 1, cost = 500,},
					{types = {"Hgn_C_Production_Fighter"}, name = "Carrier Fighter Facility", prob = 1, cost = 500,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Hgn_C_Module_PlatformControl"}, name = "Carrier Platform Control Module", prob = 1, cost = 500,},
					{types = {"Hgn_MS_Module_PlatformControl"}, name = "Mothership Platform Control Module", prob = 1, cost = 500,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Hgn_MS_Sensors_DetectCloaked"}, name = "Mothership Anti-Cloaking Sensors", prob = 1, cost = 250,},
					{types = {"Hgn_MS_Sensors_AdvancedArray"}, name = "Mothership Advanced Sensors Array", prob = 1, cost = 250,},
					{types = {"Hgn_C_Sensors_DetectHyperspace"}, name = "Carrier Hyperspace Sensors", prob = 1, cost = 250,},
					{types = {"Hgn_C_Sensors_DetectCloaked"}, name = "Carrier Anti-Cloaking Sensors", prob = 1, cost = 250,},
					{types = {"Hgn_C_Sensors_AdvancedArray"}, name = "Carrier Advanced Sensors Array", prob = 1, cost = 250,},
					{types = {"Hgn_MS_Sensors_DetectHyperspace"}, name = "Mothership Hyperspace Sensors", prob = 1, cost = 250,},
				},
			},
		},
		ships =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Hgn_Mothership_research0"}, name = "Mothership", prob = 0, cost = 8000,},
					{types = {"Hgn_Mothership"}, name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
					{
						types =
						{
							"Hgn_Battlecruiser_research0",
							"Hgn_Battlecruiser",	-- aka "_research1"
						},
						name = "Battlecruiser",
						prob = 1,
						cost = 4000,
					},
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
					{types = {"Hgn_Shipyard_Elohim"}, name = "Shipyard", prob = 0, cost = 3200,},
					{
						types =
						{
							"Hgn_Carrier_research0",
							"Hgn_Carrier",	-- aka "_research1"
						},
						name = "Carrier",
						prob = 0.9,
						cost = 2800,
					},
					{
						types =
						{
							"Hgn_Shipyard_research0",
							"Hgn_Shipyard",	-- aka "_research1"
						},
						name = "Shipyard",
						prob = 1,
						cost = 3500,
					},
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
					{types = {"Hgn_Destroyer"}, name = "Destroyer", prob = 1, cost = 2000,},
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Hgn_AssaultFrigate"}, name = "Flak Frigate", prob = 0.2, cost = 700,},
					{types = {"Hgn_DefenseFieldFrigate"}, name = "Defense Field Frigate", prob = 0.4, cost = 1250,},
					{types = {"Hgn_IonCannonFrigate"}, name = "Ion Frigate", prob = 0.6, cost = 700,},
					{types = {"Hgn_MarineFrigate"}, name = "Marine Frigate", prob = 0.7, cost = 700,},
					{types = {"Hgn_MarineFrigate_Soban"}, name = "Marine Frigate", prob = 0.8, cost = 700,},
					{types = {"Hgn_TorpedoFrigate"}, name = "Torpedo Frigate", prob = 1, cost = 700,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{types = {"Hgn_AssaultCorvette"}, name = "Gunship", prob = 0.4, cost = 625,},
					{types = {"Hgn_PulsarCorvette"}, name = "Pulsar Gunship", prob = 0.9, cost = 625,},
					{types = {"Hgn_MinelayerCorvette"}, name = "Minelayer", prob = 1, cost = 800,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{types = {"Hgn_Scout"}, name = "Scout", prob = 0.3, cost = 350,},
					{types = {"Hgn_AttackBomber"}, name = "Bomber", prob = 0.5, cost = 550,},
					{types = {"Hgn_Interceptor"}, name = "Interceptor", prob = 1, cost = 500,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Hgn_GunTurret"}, name = "Gun Platform", prob = 0.5, cost = 300,},
					{types = {"Hgn_IonTurret"}, name = "Ion Beam Platform", prob = 1, cost = 300,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
					{types = {"Hgn_ResourceCollector"}, name = "Resource Collector", prob = 0.7, cost = 400,},
					{types = {"Hgn_ResourceController"}, name = "Mobile Refinery", prob = 1, cost = 800,},
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Hgn_ProximitySensor"}, name = "Proximity Sensor", prob = 0.3, cost = 250,},
					{types = {"Hgn_ECMProbe"}, name = "Sensors Distortion Probe", prob = 0.6, cost = 600,},
					{types = {"Hgn_Probe"}, name = "Probe", prob = 1, cost = 150,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	vaygr =
	{
		research =
		{
			{
				class = "mothership",
				prob = 0.1,
				items =
				{
					{types = {"MothershipBUILDSPEEDUpgrade1"}, name = "Mothership Build Speed", prob = 1/3, cost = 1000,},
					{
						types =
						{
							"SuperCapHealthUpgrade1",	-- aka "_carrieronly0"
							"SuperCapHealthUpgrade1_carrieronly1",
						},
						name = "Capital Ship Hull 1",
						prob = 2/3,
						cost = 1000,
					},
					{
						types =
						{
							"SuperCapSpeedUpgrade1",	-- aka "_carrieronly0"
							"SuperCapSpeedUpgrade1_carrieronly1",
						},
						name = "Capital Ship Engines 1",
						prob = 3/3,
						cost = 1000,
					},
--					{types = {"SuperCapHealthUpgrade2"}, name = "Capital Ship Hull  2", prob = 0, cost = 1000,},
--					{types = {"SuperCapSpeedUpgrade2"}, name = "Capital Ship Engines 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "cruiser",
				prob = 0.2,
				items =
				{
					{types = {"BattlecruiserIonWeapons"}, name = "Battlecruiser Chassis", prob = 1/1, cost = 1000,},
				},
			},
			{
				class = "carrier",
				prob = 0.3,
				items =
				{
					{
						types =
						{
							"CarrierBUILDSPEEDUpgrade1",	-- aka "_carrieronly0"
							"CarrierBUILDSPEEDUpgrade1_carrieronly1",
						},
						name = "Carrier BuildSpeed",
						prob = 1/2,
						cost = 1000,
					},
					{types = {"ShipyardBUILDSPEEDUpgrade1"}, name = "Shipyard Build Speed", prob = 2/2, cost = 1000,},
				},
			},
			{
				class = "destroyer",
				prob = 0.4,
				items =
				{
					{types = {"DestroyerGuns"}, name = "Destroyer Chassis", prob = 1/1, cost = 1000,},
				},
			},
			{
				class = "frigate",
				prob = 0.5,
				items =
				{
					{types = {"FrigateInfiltrationTech"}, name = "Infiltration Pods", prob = 1/5, cost = 1000,},
					{types = {"FrigateTech"}, name = "Frigate Chassis", prob = 2/5, cost = 1000,},
					{types = {"FrigateAssault"}, name = "Assault Frigate Chassis", prob = 3/5, cost = 1000,},
					{types = {"FrigateHealthUpgrade1"}, name = "Frigate Class Armor 1", prob = 4/5, cost = 1000,},
					{types = {"FrigateSpeedUpgrade1"}, name = "Frigate Class Engines 1", prob = 5/5, cost = 1000,},
--					{types = {"FrigateHealthUpgrade2"}, name = "Frigate Class Armor 2", prob = 0, cost = 1000,},
--					{types = {"SpeedUpgrade2"}, name = "Frigate Class Engines 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "corvette",
				prob = 0.6,
				items =
				{
					{types = {"CorvetteGraviticAttraction"}, name = "Corvette Minelaying Systems", prob = 1/6, cost = 1000,},
					{types = {"CorvetteTech"}, name = "Corvette Chassis", prob = 2/6, cost = 1000,},
					{types = {"CorvetteLaser"}, name = "Corvette Laser Systems", prob = 3/6, cost = 1000,},
					{types = {"CorvetteCommand"}, name = "Command Corvette Systems", prob = 4/6, cost = 1000,},
					{types = {"CorvetteHealthUpgrade1"}, name = "Corvette Class Armor 1", prob = 5/6, cost = 1000,},
					{types = {"CorvetteSpeedUpgrade1"}, name = "Corvette Class Engines 1", prob = 6/6, cost = 1000,},
--					{types = {"CorvetteHealthUpgrade2"}, name = "Corvette Class Armor 2", prob = 0, cost = 1000,},
--					{types = {"CorvetteSpeedUpgrade2"}, name = "Corvette Class Engines 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "fighter",
				prob = 0.7,
				items =
				{
					{types = {"ScoutEMPAbility"}, name = "Scout Electro-Magnetic Pulse", prob = 1/5, cost = 1000,},
					{types = {"BomberImprovedBombs"}, name = "Improved Bombs", prob = 2/5, cost = 1000,},
					{types = {"LanceBeams"}, name = "Lance Beams", prob = 3/5, cost = 1000,},
					{types = {"PlasmaBombs"}, name = "Fusion Bombs", prob = 4/5, cost = 1000,},
					{types = {"FighterspeedUpgrade1"}, name = "Fighter Class Engines 1", prob = 5/5, cost = 1000,},
--					{types = {"FighterspeedUpgrade2"}, name = "Fighter Class Engines 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"HyperspaceGateTech"}, name = "Hyperspace Gate Generators", prob = 1/3, cost = 1000,},
					{types = {"PlatformHeavyMissiles"}, name = "Platform Heavy Missile System", prob = 2/3, cost = 1000,},
					{types = {"PlatformHealthUpgrade1"}, name = "Platform Class Armor 1", prob = 3/3, cost = 1000,},
--					{types = {"PlatformHealthUpgrade2"}, name = "Platform Class Armor 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "resource",
				prob = 0.9,
				items =
				{
					{types = {"RepairAbility"}, name = "Resource Collector Repair Systems", prob = 1/2, cost = 1000,},
					{types = {"UtilityHealthUpgrade1"}, name = "Utility Class Armor 1", prob = 2/2, cost = 1000,},
--					{types = {"UtilityHealthUpgrade2"}, name = "Utility Class Armor 2", prob = 0, cost = 1000,},
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"ProbeSensorDisruption"}, name = "Sensors Distortion Probe", prob = 1/2, cost = 1000,},
					{types = {"ProbeProxSensor"}, name = "Proximity Sensor Probe", prob = 2/2, cost = 1000,},
				},
			},
		},
		subsystems =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Vgr_C_Module_FireControl"}, name = "Carrier Fire Control Tower", prob = 1, cost = 1500,},
					{types = {"Vgr_MS_Module_CloakGenerator"}, name = "Mothership Cloak Generator", prob = 1, cost = 750,},
					{types = {"Vgr_MS_Module_HyperspaceInhibitor"}, name = "Mothership Gravity Well Generator", prob = 1, cost = 1500,},
					{types = {"Vgr_C_Module_HyperspaceInhibitor"}, name = "Carrier Gravity Well Generator", prob = 1, cost = 1500,},
					{types = {"Vgr_C_Module_Hyperspace"}, name = "Carrier Hyperspace Module", prob = 1, cost = 1000,},
					{types = {"Vgr_MS_Module_Research"}, name = "Mothership Research Module", prob = 1, cost = 500,},
					{types = {"Vgr_MS_Production_CapShip"}, name = "Mothership Capital Class Facility", prob = 1, cost = 1250,},
					{types = {"Vgr_C_Module_CloakGenerator"}, name = "Carrier Cloak Generator", prob = 1, cost = 750,},
					{types = {"Vgr_MS_Module_FireControl"}, name = "Mothership Fire Control Tower", prob = 1, cost = 1500,},
					{types = {"Vgr_SY_Production_CapShip"}, name = "Shipyard Capital Class Facility", prob = 1, cost = 1250,},
					{types = {"Vgr_C_Module_Research"}, name = "Carrier Research Module", prob = 1, cost = 500,},
					{types = {"Vgr_MS_Module_Hyperspace"}, name = "Mothership Hyperspace Module", prob = 1, cost = 1000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Vgr_C_Production_Frigate"}, name = "Carrier Frigate Facility", prob = 1, cost = 900,},
					{types = {"Vgr_MS_Production_Frigate"}, name = "Mothership Frigate Facility", prob = 1, cost = 900,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{
						types =
						{
							"Vgr_C_Production_Corvette",	-- aka "_carrieronly0"
							"Vgr_C_Production_Corvette_carrieronly1",
						},
						name = "Carrier Corvette Facility",
						prob = 1,
						cost = 725,
					},
					{types = {"Vgr_MS_Production_Corvette"}, name = "Mothership Corvette Facility", prob = 1, cost = 725,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{
						types =
						{
							"Vgr_C_Production_Fighter",	-- aka "_carrieronly0"
							"Vgr_C_Production_Fighter_carrieronly1",
						},
						name = "Carrier Fighter Facility",
						prob = 1,
						cost = 450,
					},
					{types = {"Vgr_MS_Production_Fighter"}, name = "Mothership Fighter Facility", prob = 1, cost = 450,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Vgr_C_Module_PlatformControl"}, name = "Carrier Platform Control Module", prob = 1, cost = 625,},
					{types = {"Vgr_MS_Module_PlatformControl"}, name = "Mothership Platform Control Module", prob = 1, cost = 625,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Vgr_C_Sensors_DetectHyperspace"}, name = "Carrier Hyperspace Sensors", prob = 1, cost = 250,},
					{types = {"Vgr_MS_Sensors_AdvancedArray"}, name = "Mothership Advanced Sensors Array", prob = 1, cost = 250,},
					{types = {"Vgr_C_Sensors_AdvancedArray"}, name = "Carrier Advanced Sensors Array", prob = 1, cost = 250,},
					{types = {"Vgr_MS_Sensors_DetectHyperspace"}, name = "Mothership Hyperspace Sensors", prob = 1, cost = 250,},
				},
			},
		},
		ships =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Vgr_Mothership"}, name = "Mothership", prob = 1, cost = 8000,},
					{types = {"Vgr_Mothership_Makaan"}, name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
					{types = {"Vgr_BattleCruiser"}, name = "Battlecruiser", prob = 1, cost = 4000,},
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
					{types = {"Vgr_Carrier"}, name = "Carrier", prob = 0.9, cost = 1700,},
					{types = {"Vgr_ShipYard"}, name = "Shipyard", prob = 1, cost = 4000,},
					{types = {"Vgr_Carrier_carrieronly1"}, name = "Carrier", prob = 0, cost = 1700,},
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
					{types = {"Vgr_Destroyer"}, name = "Destroyer", prob = 1, cost = 2000,},
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Vgr_AssaultFrigate"}, name = "Assault Frigate", prob = 0.4, cost = 700,},
					{types = {"Vgr_HeavyMissileFrigate"}, name = "Heavy Missile Frigate", prob = 0.75, cost = 700,},
					{types = {"Vgr_InfiltratorFrigate"}, name = "Infiltrator Frigate", prob = 1, cost = 800,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{types = {"Vgr_LaserCorvette"}, name = "Laser Corvette", prob = 0.4, cost = 650,},
					{types = {"Vgr_MissileCorvette"}, name = "Missile Corvette", prob = 0.8, cost = 625,},
					{types = {"Vgr_CommandCorvette"}, name = "Command Corvette", prob = 0.9, cost = 400,},
					{types = {"Vgr_MinelayerCorvette"}, name = "Minelayer", prob = 1, cost = 800,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{types = {"Vgr_Scout"}, name = "Survey Scout", prob = 0.25, cost = 350,},
					{types = {"Vgr_Bomber"}, name = "Bomber", prob = 0.5, cost = 550,},
					{types = {"Vgr_Interceptor"}, name = "Assault Craft", prob = 0.75, cost = 500,},
					{types = {"Vgr_LanceFighter"}, name = "Lance Fighter", prob = 1, cost = 500,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Vgr_WeaponPlatform_gun"}, name = "Gun Platform", prob = 0.4, cost = 300,},
					{types = {"Vgr_WeaponPlatform_missile"}, name = "Heavy Missile Platform", prob = 0.8, cost = 300,},
					{types = {"Vgr_HyperSpace_Platform"}, name = "Hyperspace Gate", prob = 1, cost = 750,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
					{types = {"Vgr_ResourceCollector"}, name = "Resource Collector", prob = 0.7, cost = 400,},
					{types = {"Vgr_ResourceController"}, name = "Mobile Refinery", prob = 1, cost = 800,},
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Vgr_Probe_Prox"}, name = "Proximity Sensor", prob = 0.3, cost = 250,},
					{types = {"Vgr_Probe_ECM"}, name = "Sensors Distortion Probe", prob = 0.6, cost = 500,},
					{types = {"Vgr_Probe"}, name = "Probe", prob = 1, cost = 150,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	kushan =
	{
		research =
		{
			{
				class = "mothership",
				prob = 0/10,
				items =
				{
				},
			},
			{
				class = "cruiser",
				prob = 2/10,
				items =
				{
					{types = {"HeavyGuns"}, name = "Heavy Guns", prob = 1, cost = 1000,},
				},
			},
			{
				class = "carrier",
				prob = 3/10,
				items =
				{
					{types = {"SuperHeavyChassis"}, name = "Super-Heavy Chassis", prob = 1, cost = 1000,},
				},
			},
			{
				class = "destroyer",
				prob = 4/10,
				items =
				{
					{types = {"SuperCapitalShipDrive"}, name = "Super-Capital Ship Drive", prob = 0.4, cost = 1000,},
					{types = {"GuidedMissiles"}, name = "Guided Missiles", prob = 1, cost = 1000,},
				},
			},
			{
				class = "frigate",
				prob = 5/10,
				items =
				{
					{types = {"CapitalShipDrive"}, name = "Capital Ship Drive", prob = 0.25, cost = 1000,},
					{types = {"CapitalShipChassis"}, name = "Capital Ship Chassis", prob = 0.5, cost = 1000,},
					{types = {"IonCannons"}, name = "Ion Cannons", prob = 0.75, cost = 1000,},
					{types = {"DroneTechnology"}, name = "Drone Technology", prob = 1, cost = 1000,},
				},
			},
			{
				class = "corvette",
				prob = 6/10,
				items =
				{
					{types = {"CorvetteDrive"}, name = "Corvette Drive", prob = 0.2, cost = 1000,},
					{types = {"CorvetteChassis"}, name = "Corvette Chassis", prob = 0.4, cost = 1000,},
					{types = {"HeavyCorvetteUpgrade"}, name = "Heavy Corvette Upgrade", prob = 0.6, cost = 1000,},
					{types = {"FastTrackingTurrets"}, name = "Fast-Tracking Turrets", prob = 0.8, cost = 1000,},
					{types = {"MinelayingTech"}, name = "Minelaying Tech", prob = 1, cost = 1000,},
				},
			},
			{
				class = "fighter",
				prob = 7/10,
				items =
				{
--					{types = {"PlasmaBombLauncher"}, name = "Plasma Bomb Launcher", prob = 1/5, cost = 1000,},
					{types = {"FighterDrive"}, name = "Fighter Drive", prob = 1/4, cost = 1000,},
					{types = {"FighterChassis"}, name = "Fighter Chassis", prob = 2/4, cost = 1000,},
					{types = {"DefenderSubSystems"}, name = "Defender Sub-Systems", prob = 3/4, cost = 1000,},
					{types = {"CloakedFighter"}, name = "Cloaked Fighter", prob = 4/4, cost = 1000,},
				},
			},
			{
				class = "platform",
				prob = 8/10,
				items =
				{
					{types = {"GravityGenerator"}, name = "Gravity Generator", prob = 0.5, cost = 1000,},
					{types = {"CloakGenerator"}, name = "Cloak Generator", prob = 1, cost = 1000,},
				},
			},
			{
				class = "resource",
				prob = 0/10,
				items =
				{
				},
			},
			{
				class = "noncombat",
				prob = 10/10,
				items =
				{
					{types = {"ProximitySensor"}, name = "Proximity Sensor", prob = 0.5, cost = 1000,},
					{types = {"SensorArray"}, name = "Sensors Array", prob = 1, cost = 1000,},
				},
			},
		},
		subsystems =
		{
		},
		ships =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Kus_Mothership"}, name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
					{types = {"Kus_HeavyCruiser"}, name = "Heavy Cruiser", prob = 1, cost = 3600,},
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
					{types = {"Kus_Carrier"}, name = "Carrier", prob = 0.9, cost = 3000,},
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
					{types = {"Kus_Destroyer"}, name = "Destroyer", prob = 0.5, cost = 1800,},
					{types = {"Kus_MissileDestroyer"}, name = "Missile Destroyer", prob = 1, cost = 2000,},
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Kus_AssaultFrigate"}, name = "Assault Frigate", prob = 0.25, cost = 800,},
					{types = {"Kus_IonCannonFrigate"}, name = "Ion Cannon Frigate", prob = 0.5, cost = 900,},
					{types = {"Kus_SupportFrigate"}, name = "Support Frigate", prob = 0.75, cost = 800,},
					{types = {"Kus_DroneFrigate"}, name = "Drone Frigate", prob = 1, cost = 900,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{types = {"Kus_RepairCorvette"}, name = "Repair Corvette", prob = 0.1667, cost = 250,},
					{types = {"Kus_SalvageCorvette"}, name = "Salvage Corvette", prob = 0.3333, cost = 250,},
					{types = {"Kus_LightCorvette"}, name = "Light Corvette", prob = 0.5, cost = 250,},
					{types = {"Kus_HeavyCorvette"}, name = "Heavy Corvette", prob = 0.6667, cost = 270,},
					{types = {"Kus_MultiGunCorvette"}, name = "Multi-Gun Corvette", prob = 0.8333, cost = 300,},
					{types = {"Kus_MinelayerCorvette"}, name = "Minelayer Corvette", prob = 1, cost = 340,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{types = {"Kus_Scout"}, name = "Scout", prob = 0.2, cost = 90,},
					{types = {"Kus_Interceptor"}, name = "Interceptor", prob = 0.4, cost = 100,},
					{types = {"Kus_Defender"}, name = "Defender", prob = 0.6, cost = 120,},
					{types = {"Kus_AttackBomber"}, name = "Attack Bomber", prob = 0.8, cost = 120,},
					{types = {"Kus_CloakedFighter"}, name = "Cloaked Fighter", prob = 1, cost = 130,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Kus_GravWellGenerator"}, name = "Gravwell Generator", prob = 0.5, cost = 800,},
					{types = {"Kus_CloakGenerator"}, name = "Cloak Generator", prob = 1, cost = 800,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
					{types = {"Kus_ResourceCollector"}, name = "Resource Collector", prob = 0.7, cost = 600,},
					{types = {"Kus_ResourceController"}, name = "Resource Controller", prob = 1, cost = 900,},
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Kus_ResearchShip"}, name = "Research Ship", prob = 0.25, cost = 750,},
					{types = {"Kus_Probe"}, name = "Probe", prob = 0.5, cost = 50,},
					{types = {"Kus_ProximitySensor"}, name = "Proximity Sensor", prob = 0.75, cost = 100,},
					{types = {"Kus_SensorArray"}, name = "Sensors Array", prob = 1, cost = 700,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	taiidan =
	{
		research =
		{
			{
				class = "mothership",
				prob = 0/10,
				items =
				{
				},
			},
			{
				class = "cruiser",
				prob = 2/10,
				items =
				{
					{types = {"HeavyGuns"}, name = "Heavy Guns", prob = 1, cost = 1000,},
				},
			},
			{
				class = "carrier",
				prob = 3/10,
				items =
				{
					{types = {"SuperHeavyChassis"}, name = "Super-Heavy Chassis", prob = 1, cost = 1000,},
				},
			},
			{
				class = "destroyer",
				prob = 4/10,
				items =
				{
					{types = {"SuperCapitalShipDrive"}, name = "Super-Capital Ship Drive", prob = 0.4, cost = 1000,},
					{types = {"GuidedMissiles"}, name = "Guided Missiles", prob = 1, cost = 1000,},
				},
			},
			{
				class = "frigate",
				prob = 5/10,
				items =
				{
					{types = {"CapitalShipDrive"}, name = "Capital Ship Drive", prob = 0.25, cost = 1000,},
					{types = {"CapitalShipChassis"}, name = "Capital Ship Chassis", prob = 0.5, cost = 1000,},
					{types = {"IonCannons"}, name = "Ion Cannons", prob = 0.75, cost = 1000,},
					{types = {"DefenseField"}, name = "Defense Field", prob = 1, cost = 1000,},
				},
			},
			{
				class = "corvette",
				prob = 6/10,
				items =
				{
					{types = {"CorvetteDrive"}, name = "Corvette Drive", prob = 0.2, cost = 1000,},
					{types = {"CorvetteChassis"}, name = "Corvette Chassis", prob = 0.4, cost = 1000,},
					{types = {"HeavyCorvetteUpgrade"}, name = "Heavy Corvette Upgrade", prob = 0.6, cost = 1000,},
					{types = {"FastTrackingTurrets"}, name = "Fast-Tracking Turrets", prob = 0.8, cost = 1000,},
					{types = {"MinelayingTech"}, name = "Minelaying Tech", prob = 1, cost = 1000,},
				},
			},
			{
				class = "fighter",
				prob = 7/10,
				items =
				{
--					{types = {"PlasmaBombLauncher"}, name = "Plasma Bomb Launcher", prob = 8, cost = 1000,},
					{types = {"FighterDrive"}, name = "Fighter Drive", prob = 1/4, cost = 1000,},
					{types = {"FighterChassis"}, name = "Fighter Chassis", prob = 2/4, cost = 1000,},
					{types = {"DefenderSubSystems"}, name = "Defender Sub-Systems", prob = 3/4, cost = 1000,},
					{types = {"DefenseFighter"}, name = "Defense Fighter", prob = 4/4, cost = 1000,},
				},
			},
			{
				class = "platform",
				prob = 8/10,
				items =
				{
					{types = {"GravityGenerator"}, name = "Gravity Generator", prob = 0.5, cost = 1000,},
					{types = {"CloakGenerator"}, name = "Cloak Generator", prob = 1, cost = 1000,},
				},
			},
			{
				class = "resource",
				prob = 0/10,
				items =
				{
				},
			},
			{
				class = "noncombat",
				prob = 10/10,
				items =
				{
					{types = {"ProximitySensor"}, name = "Proximity Sensor", prob = 0.5, cost = 1000,},
					{types = {"SensorArray"}, name = "Sensors Array", prob = 1, cost = 1000,},
				},
			},
		},
		subsystems =
		{
		},
		ships =
		{
			{
				class = "mothership",
				prob = 0,
				items =
				{
					{types = {"Tai_Mothership"}, name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			{
				class = "cruiser",
				prob = 0,
				items =
				{
					{types = {"Tai_HeavyCruiser"}, name = "Heavy Cruiser", prob = 1, cost = 3600,},
				},
			},
			{
				class = "carrier",
				prob = 0.05,
				items =
				{
					{types = {"Tai_Carrier"}, name = "Carrier", prob = 0.9, cost = 3000,},
				},
			},
			{
				class = "destroyer",
				prob = 0.15,
				items =
				{
					{types = {"Tai_Destroyer"}, name = "Destroyer", prob = 0.5, cost = 1800,},
					{types = {"Tai_MissileDestroyer"}, name = "Missile Destroyer", prob = 1, cost = 2000,},
				},
			},
			{
				class = "frigate",
				prob = 0.35,
				items =
				{
					{types = {"Tai_AssaultFrigate"}, name = "Assault Frigate", prob = 0.25, cost = 800,},
					{types = {"Tai_IonCannonFrigate"}, name = "Ion Cannon Frigate", prob = 0.5, cost = 900,},
					{types = {"Tai_SupportFrigate"}, name = "Support Frigate", prob = 0.75, cost = 800,},
					{types = {"Tai_FieldFrigate"}, name = "Field Frigate", prob = 1, cost = 900,},
				},
			},
			{
				class = "corvette",
				prob = 0.55,
				items =
				{
					{types = {"Tai_RepairCorvette"}, name = "Repair Corvette", prob = 0.1667, cost = 250,},
					{types = {"Tai_SalvageCorvette"}, name = "Salvage Corvette", prob = 0.3333, cost = 250,},
					{types = {"Tai_LightCorvette"}, name = "Light Corvette", prob = 0.5, cost = 250,},
					{types = {"Tai_HeavyCorvette"}, name = "Heavy Corvette", prob = 0.6667, cost = 270,},
					{types = {"Tai_MultiGunCorvette"}, name = "Multi-Gun Corvette", prob = 0.8333, cost = 300,},
					{types = {"Tai_MinelayerCorvette"}, name = "Minelayer Corvette", prob = 1, cost = 340,},
				},
			},
			{
				class = "fighter",
				prob = 0.75,
				items =
				{
					{types = {"Tai_Scout"}, name = "Scout", prob = 0.2, cost = 90,},
					{types = {"Tai_Interceptor"}, name = "Interceptor", prob = 0.4, cost = 100,},
					{types = {"Tai_Defender"}, name = "Defender", prob = 0.6, cost = 120,},
					{types = {"Tai_AttackBomber"}, name = "Attack Bomber", prob = 0.8, cost = 120,},
					{types = {"Tai_DefenseFighter"}, name = "Defense Fighter", prob = 1, cost = 130,},
				},
			},
			{
				class = "platform",
				prob = 0.8,
				items =
				{
					{types = {"Tai_GravWellGenerator"}, name = "Gravwell Generator", prob = 0.5, cost = 800,},
					{types = {"Tai_CloakGenerator"}, name = "Cloak Generator", prob = 1, cost = 800,},
				},
			},
			{
				class = "resource",
				prob = 0.92,
				items =
				{
					{types = {"Tai_ResourceCollector"}, name = "Resource Collector", prob = 0.7, cost = 600,},
					{types = {"Tai_ResourceController"}, name = "Resource Controller", prob = 1, cost = 900,},
				},
			},
			{
				class = "noncombat",
				prob = 1,
				items =
				{
					{types = {"Tai_ResearchShip"}, name = "Research Ship", prob = 0.25, cost = 750,},
					{types = {"Tai_Probe"}, name = "Probe", prob = 0.5, cost = 50,},
					{types = {"Tai_ProximitySensor"}, name = "Proximity Sensor", prob = 0.75, cost = 100,},
					{types = {"Tai_SensorArray"}, name = "Sensors Array", prob = 1, cost = 700,},
				},
			},
		},
	},
}
