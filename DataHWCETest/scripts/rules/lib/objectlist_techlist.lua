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
-- name = Display name. (Is it okay to fix typos?)
-- prob = HWC Crate and GPE Bentusi Roulette probability.
-- cost = HWC Bounty RU value.
--
-- Ships missing from this list:
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
	hiigaran_hwce =
	{
		research =
		{
			mothership =
			{
				prob = 1/10,
				items =
				{
					hgn_mothershiphealthupgrade1 = {name = "Mothership Hull 1", prob = 1/4, cost = 1000,},
					hgn_mothershipmaxspeedupgrade1 = {name = "Mothership Engine 1", prob = 2/4, cost = 1000,},
					hgn_mothershipbuildspeedupgrade1 = {name = "Mothership Build Speed", prob = 3/4, cost = 1000,},
					hgn_hyperspacecostupgrade1 = {name = "Improved Hyperspace Drive 1", prob = 4/4, cost = 1000,},
				},
			},
			cruiser =
			{
				prob = 2/10,
				items =
				{
					hgn_battlecruiserionweapons = {name = "Battlecruiser Chassis", prob = 1/3, cost = 1000,},
					hgn_battlecruiserhealthupgrade1 = {name = "Battlecruiser Hull 1", prob = 2/3, cost = 1000,},
					hgn_battlecruisermaxspeedupgrade1 = {name = "Battlecruiser Engine 1", prob = 3/3, cost = 1000,},
				},
			},
			carrier =
			{
				prob = 3/10,
				items =
				{
					hgn_carrierhealthupgrade1 = {prob = 1/6, cost = 1000, name = "Carrier Hull 1",},
					hgn_carriermaxspeedupgrade1 = {name = "Carrier Engine 1", prob = 2/6, cost = 1000,},
					hgn_carrierbuildspeedupgrade1 = {name = "Carrier Build Speed", prob = 3/6, cost = 1000,},
					hgn_shipyardhealthupgrade1 = {name = "Shipyard Hull 1", prob = 4/6, cost = 1000,},
					hgn_shipyardmaxspeedupgrade1 = {name = "Shipyard Engine 1", prob = 5/6, cost = 1000,},
					hgn_shipyardbuildspeedupgrade1 = {name = "Shipyard Build Speed", prob = 6/6, cost = 1000,},
				},
			},
			destroyer =
			{
				prob = 4/10,
				items =
				{
					hgn_destroyertech = {name = "Destroyer Chassis", prob = 1/3, cost = 1000,},
					hgn_destroyerhealthupgrade1 = {name = "Destroyer Hull  1", prob = 2/3, cost = 1000,},
					hgn_destroyermaxspeedupgrade1 = {name = "Destroyer Engine 1", prob = 3/3, cost = 1000,},
				},
			},
			frigate =
			{
				prob = 5/10,
				items =
				{
					hgn_improvedtorpedo = {name = "Improved Torpedoes", prob = 1/8, cost = 1000,},
					hgn_defensefieldfrigateshield = {name = "Defense Field", prob = 2/8, cost = 1000,},
					hgn_torpedofrigatehealthupgrade1 = {name = "Torpedo Frigate Armor 1", prob = 3/8, cost = 1000,},
					hgn_torpedofrigatemaxspeedupgrade1 = {name = "Torpedo Frigate Engine 1", prob = 4/8, cost = 1000,},
					hgn_ioncannonfrigatehealthupgrade1 = {name = "Ion Frigate Armor 1", prob = 5/8, cost = 1000,},
					hgn_ioncannonfrigatemaxspeedupgrade1 = {name = "Ion Frigate Engine 1", prob = 6/8, cost = 1000,},
					hgn_assaultfrigatehealthupgrade1 = {name = "Flak Frigate Armor 1", prob = 7/8, cost = 1000,},
					hgn_assaultfrigatemaxspeedupgrade1 = {name = "Flak Frigate Engine 1", prob = 8/8, cost = 1000,},
				},
			},
			corvette =
			{
				prob = 6/10,
				items =
				{
					hgn_graviticattractionmines = {name = "Minelaying Technology", prob = 1/5, cost = 1000,},
					hgn_assaultcorvettehealthupgrade1 = {name = "Gunship Armor 1", prob = 2/5, cost = 1000,},
					hgn_assaultcorvettemaxspeedupgrade1 = {name = "Gunship Engine 1", prob = 3/5, cost = 1000,},
					hgn_pulsarcorvettehealthupgrade1 = {name = "Pulsar Armor 1", prob = 4/5, cost = 1000,},
					hgn_pulsarcorvettemaxspeedupgrade1 = {name = "Pulsar Engine 1", prob = 5/5, cost = 1000,},
				},
			},
			fighter =
			{
				prob = 7/10,
				items =
				{
					hgn_interceptormaxspeedupgrade1 = {name = "Interceptor Engine 1", prob = 1/5, cost = 1000,},
					hgn_attackbombermaxspeedupgrade1 = {name = "Bomber Engine 1", prob = 2/5, cost = 1000,},
					hgn_scoutpingability = {name = "Enhanced Scout Sensors", prob = 3/5, cost = 1000,},
					hgn_attackbomberimprovedbombs = {name = "Improved Bombs", prob = 4/5, cost = 1000,},
					hgn_scoutempability = {name = "Electro-Magnetic Pulse", prob = 5/5, cost = 1000,},
				},
			},
			platform =
			{
				prob = 8/10,
				items =
				{
					hgn_platformionweapons = {name = "Platform Ion Weapons", prob = 1/3, cost = 1000,},
					hgn_gunturrethealthupgrade1 = {name = "Gun Platform Hull 1", prob = 2/3, cost = 1000,},
					hgn_ionturrethealthupgrade1 = {name = "Ion Beam Platform Hull 1", prob = 3/3, cost = 1000,},
				},
			},
			resource =
			{
				prob = 9/10,
				items =
				{
					hgn_repairability = {name = "Collector Repair", prob = 1/3, cost = 1000,},
					hgn_resourcecollectorhealthupgrade1 = {name = "Resource Collector Hull 1", prob = 2/3, cost = 1000,},
					hgn_resourcecontrollerhealthupgrade1 = {name = "Mobile Refinery Hull 1", prob = 3/3, cost = 1000,},
				},
			},
			noncombat =
			{
				prob = 10/10,
				items =
				{
					hgn_ecmprobe = {name = "Sensors Distortion Probe", prob = 1/2, cost = 1000,},
					hgn_sensdisprobe = {name = "Proximity Sensor Probe", prob = 2/2, cost = 1000,},
				},
			},
		},
		subsystems =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					hgn_ms_module_research = {name = "Mothership Research Module", prob = 1, cost = 1500,},
					hgn_c_module_research = {name = "Carrier Research Module", prob = 1, cost = 1500,},
					hgn_c_module_firecontrol = {name = "Carrier Fire Control Tower", prob = 1, cost = 1500,},
					hgn_c_module_hyperspaceinhibitor = {name = "Carrier Gravity Well Generator", prob = 1, cost = 1500,},
					hgn_ms_module_cloakgenerator = {name = "Mothership Cloak Generator", prob = 1, cost = 750,},
					hgn_sy_production_capship = {name = "Shipyard Capital Class Facility", prob = 1, cost = 1800,},
					hgn_ms_module_firecontrol = {name = "Mothership Fire Control Tower", prob = 1, cost = 1500,},
					hgn_ms_production_capship = {name = "Mothership Capital Class Facility", prob = 1, cost = 1800,},
					hgn_c_module_researchadvanced = {name = "Carrier Adv. Research Module", prob = 1, cost = 2250,},
					hgn_ms_module_hyperspaceinhibitor = {name = "Mothership Gravity Well Generator", prob = 1, cost = 1500,},
					hgn_c_module_cloakgenerator = {name = "Carrier Cloak Generator", prob = 1, cost = 750,},
					hgn_ms_module_hyperspace = {name = "Mothership Hyperspace Module", prob = 1, cost = 1000,},
					hgn_ms_module_researchadvanced = {name = "Mothership Adv. Research Module", prob = 1, cost = 2250,},
					hgn_c_module_hyperspace = {name = "Carrier Hyperspace Module", prob = 1, cost = 1000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					hgn_ms_production_frigate = {name = "Mothership Frigate Facility", prob = 1, cost = 1000,},
					hgn_c_production_frigate = {name = "Carrier Frigate Facility", prob = 1, cost = 1000,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					hgn_ms_production_corvette = {name = "Mothership Corvette Facility", prob = 1, cost = 800,},
					hgn_c_production_corvette = {name = "Carrier Corvette Facility", prob = 1, cost = 800,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					hgn_ms_production_fighter = {name = "Mothership Fighter Facility", prob = 1, cost = 500,},
					hgn_c_production_fighter = {name = "Carrier Fighter Facility", prob = 1, cost = 500,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					hgn_c_module_platformcontrol = {name = "Carrier Platform Control Module", prob = 1, cost = 500,},
					hgn_ms_module_platformcontrol = {name = "Mothership Platform Control Module", prob = 1, cost = 500,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					hgn_ms_sensors_detectcloaked = {name = "Mothership Anti-Cloaking Sensors", prob = 1, cost = 250,},
					hgn_ms_sensors_advancedarray = {name = "Mothership Advanced Sensors Array", prob = 1, cost = 250,},
					hgn_c_sensors_detecthyperspace = {name = "Carrier Hyperspace Sensors", prob = 1, cost = 250,},
					hgn_c_sensors_detectcloaked = {name = "Carrier Anti-Cloaking Sensors", prob = 1, cost = 250,},
					hgn_c_sensors_advancedarray = {name = "Carrier Advanced Sensors Array", prob = 1, cost = 250,},
					hgn_ms_sensors_detecthyperspace = {name = "Mothership Hyperspace Sensors", prob = 1, cost = 250,},
				},
			},
		},
		ships =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					hgn_mothership = {name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
					hgn_battlecruiser = {name = "Battlecruiser", prob = 1, cost = 4000,},
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
					hgn_shipyard_elohim = {name = "Shipyard", prob = 0, cost = 3200,},
					hgn_carrier = {name = "Carrier", prob = 0.9, cost = 2800,},
					hgn_shipyard = {name = "Shipyard", prob = 1, cost = 3500,},
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
					hgn_destroyer = {name = "Destroyer", prob = 1, cost = 2000,},
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					hgn_assaultfrigate = {name = "Flak Frigate", prob = 0.2, cost = 700,},
					hgn_defensefieldfrigate = {name = "Defense Field Frigate", prob = 0.4, cost = 1250,},
					hgn_ioncannonfrigate = {name = "Ion Frigate", prob = 0.6, cost = 700,},
					hgn_marinefrigate = {name = "Marine Frigate", prob = 0.7, cost = 700,},
					hgn_marinefrigate_soban = {name = "Marine Frigate", prob = 0.8, cost = 700,},
					hgn_torpedofrigate = {name = "Torpedo Frigate", prob = 1, cost = 700,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					hgn_assaultcorvette = {name = "Gunship", prob = 0.4, cost = 625,},
					hgn_pulsarcorvette = {name = "Pulsar Gunship", prob = 0.9, cost = 625,},
					hgn_minelayercorvette = {name = "Minelayer", prob = 1, cost = 800,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					hgn_scout = {name = "Scout", prob = 0.3, cost = 350,},
					hgn_attackbomber = {name = "Bomber", prob = 0.5, cost = 550,},
					hgn_interceptor = {name = "Interceptor", prob = 1, cost = 500,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					hgn_gunturret = {name = "Gun Platform", prob = 0.5, cost = 300,},
					hgn_ionturret = {name = "Ion Beam Platform", prob = 1, cost = 300,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
					hgn_resourcecollector = {name = "Resource Collector", prob = 0.7, cost = 400,},
					hgn_resourcecontroller = {name = "Mobile Refinery", prob = 1, cost = 800,},
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					hgn_proximitysensor = {name = "Proximity Sensor", prob = 0.3, cost = 250,},
					hgn_ecmprobe = {name = "Sensors Distortion Probe", prob = 0.6, cost = 600,},
					hgn_probe = {name = "Probe", prob = 1, cost = 150,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	vaygr_hwce =
	{
		research =
		{
			mothership =
			{
				prob = 0.1,
				items =
				{
					vgr_mothershipbuildspeedupgrade1 = {name = "Mothership Build Speed", prob = 1/3, cost = 1000,},
					vgr_supercaphealthupgrade1 = {name = "Capital Ship Hull 1", prob = 2/3, cost = 1000,},
					vgr_supercapspeedupgrade1 = {name = "Capital Ship Engines 1", prob = 3/3, cost = 1000,},
				},
			},
			cruiser =
			{
				prob = 0.2,
				items =
				{
					vgr_battlecruiserionweapons = {name = "Battlecruiser Chassis", prob = 1/1, cost = 1000,},
				},
			},
			carrier =
			{
				prob = 0.3,
				items =
				{
					vgr_carrierbuildspeedupgrade1 = {name = "Carrier BuildSpeed", prob = 1/2, cost = 1000,},
					vgr_shipyardbuildspeedupgrade1 = {name = "Shipyard Build Speed", prob = 2/2, cost = 1000,},
				},
			},
			destroyer =
			{
				prob = 0.4,
				items =
				{
					vgr_destroyerguns = {name = "Destroyer Chassis", prob = 1/1, cost = 1000,},
				},
			},
			frigate =
			{
				prob = 0.5,
				items =
				{
					vgr_frigateinfiltrationtech = {name = "Infiltration Pods", prob = 1/5, cost = 1000,},
					vgr_frigatetech = {name = "Frigate Chassis", prob = 2/5, cost = 1000,},
					vgr_frigateassault = {name = "Assault Frigate Chassis", prob = 3/5, cost = 1000,},
					vgr_frigatehealthupgrade1 = {name = "Frigate Class Armor 1", prob = 4/5, cost = 1000,},
					vgr_frigatespeedupgrade1 = {name = "Frigate Class Engines 1", prob = 5/5, cost = 1000,},
				},
			},
			corvette =
			{
				prob = 0.6,
				items =
				{
					vgr_corvettegraviticattraction = {name = "Corvette Minelaying Systems", prob = 1/6, cost = 1000,},
					vgr_corvettetech = {name = "Corvette Chassis", prob = 2/6, cost = 1000,},
					vgr_corvettelaser = {name = "Corvette Laser Systems", prob = 3/6, cost = 1000,},
					vgr_corvettecommand = {name = "Command Corvette Systems", prob = 4/6, cost = 1000,},
					vgr_corvettehealthupgrade1 = {name = "Corvette Class Armor 1", prob = 5/6, cost = 1000,},
					vgr_corvettespeedupgrade1 = {name = "Corvette Class Engines 1", prob = 6/6, cost = 1000,},
				},
			},
			fighter =
			{
				prob = 0.7,
				items =
				{
					vgr_scoutempability = {name = "Scout Electro-Magnetic Pulse", prob = 1/5, cost = 1000,},
					vgr_bomberimprovedbombs = {name = "Improved Bombs", prob = 2/5, cost = 1000,},
					vgr_lancebeams = {name = "Lance Beams", prob = 3/5, cost = 1000,},
					vgr_plasmabombs = {name = "Fusion Bombs", prob = 4/5, cost = 1000,},
					vgr_fighterspeedupgrade1 = {name = "Fighter Class Engines 1", prob = 5/5, cost = 1000,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					vgr_hyperspacegatetech = {name = "Hyperspace Gate Generators", prob = 1/3, cost = 1000,},
					vgr_platformheavymissiles = {name = "Platform Heavy Missile System", prob = 2/3, cost = 1000,},
					vgr_platformhealthupgrade1 = {name = "Platform Class Armor 1", prob = 3/3, cost = 1000,},
				},
			},
			resource =
			{
				prob = 0.9,
				items =
				{
					vgr_repairability = {name = "Resource Collector Repair Systems", prob = 1/2, cost = 1000,},
					vgr_utilityhealthupgrade1 = {name = "Utility Class Armor 1", prob = 2/2, cost = 1000,},
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					vgr_probesensordisruption = {name = "Sensors Distortion Probe", prob = 1/2, cost = 1000,},
					vgr_probeproxsensor = {name = "Proximity Sensor Probe", prob = 2/2, cost = 1000,},
				},
			},
		},
		subsystems =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					vgr_c_module_firecontrol = {name = "Carrier Fire Control Tower", prob = 1, cost = 1500,},
					vgr_ms_module_cloakgenerator = {name = "Mothership Cloak Generator", prob = 1, cost = 750,},
					vgr_ms_module_hyperspaceinhibitor = {name = "Mothership Gravity Well Generator", prob = 1, cost = 1500,},
					vgr_c_module_hyperspaceinhibitor = {name = "Carrier Gravity Well Generator", prob = 1, cost = 1500,},
					vgr_c_module_hyperspace = {name = "Carrier Hyperspace Module", prob = 1, cost = 1000,},
					vgr_ms_module_research = {name = "Mothership Research Module", prob = 1, cost = 500,},
					vgr_ms_production_capship = {name = "Mothership Capital Class Facility", prob = 1, cost = 1250,},
					vgr_c_module_cloakgenerator = {name = "Carrier Cloak Generator", prob = 1, cost = 750,},
					vgr_ms_module_firecontrol = {name = "Mothership Fire Control Tower", prob = 1, cost = 1500,},
					vgr_sy_production_capship = {name = "Shipyard Capital Class Facility", prob = 1, cost = 1250,},
					vgr_c_module_research = {name = "Carrier Research Module", prob = 1, cost = 500,},
					vgr_ms_module_hyperspace = {name = "Mothership Hyperspace Module", prob = 1, cost = 1000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					vgr_c_production_frigate = {name = "Carrier Frigate Facility", prob = 1, cost = 900,},
					vgr_ms_production_frigate = {name = "Mothership Frigate Facility", prob = 1, cost = 900,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					vgr_c_production_corvette = {name = "Carrier Corvette Facility", prob = 1, cost = 725,},
					vgr_ms_production_corvette = {name = "Mothership Corvette Facility", prob = 1, cost = 725,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					vgr_c_production_fighter = {name = "Carrier Fighter Facility", prob = 1, cost = 450,},
					vgr_ms_production_fighter = {name = "Mothership Fighter Facility", prob = 1, cost = 450,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					vgr_c_module_platformcontrol = {name = "Carrier Platform Control Module", prob = 1, cost = 625,},
					vgr_ms_module_platformcontrol = {name = "Mothership Platform Control Module", prob = 1, cost = 625,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					vgr_c_sensors_detecthyperspace = {name = "Carrier Hyperspace Sensors", prob = 1, cost = 250,},
					vgr_ms_sensors_advancedarray = {name = "Mothership Advanced Sensors Array", prob = 1, cost = 250,},
					vgr_c_sensors_advancedarray = {name = "Carrier Advanced Sensors Array", prob = 1, cost = 250,},
					vgr_ms_sensors_detecthyperspace = {name = "Mothership Hyperspace Sensors", prob = 1, cost = 250,},
				},
			},
		},
		ships =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					vgr_mothership = {name = "Mothership", prob = 1, cost = 8000,},
					vgr_mothership_makaan = {name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
					vgr_battlecruiser = {name = "Battlecruiser", prob = 1, cost = 4000,},
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
					vgr_carrier = {name = "Carrier", prob = 0.9, cost = 1700,},
					vgr_shipyard = {name = "Shipyard", prob = 1, cost = 4000,},
					vgr_carrier_car1 = {name = "Carrier", prob = 0, cost = 1700,},
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
					vgr_destroyer = {name = "Destroyer", prob = 1, cost = 2000,},
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					vgr_assaultfrigate = {name = "Assault Frigate", prob = 0.4, cost = 700,},
					vgr_heavymissilefrigate = {name = "Heavy Missile Frigate", prob = 0.75, cost = 700,},
					vgr_infiltratorfrigate = {name = "Infiltrator Frigate", prob = 1, cost = 800,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					vgr_lasercorvette = {name = "Laser Corvette", prob = 0.4, cost = 650,},
					vgr_missilecorvette = {name = "Missile Corvette", prob = 0.8, cost = 625,},
					vgr_commandcorvette = {name = "Command Corvette", prob = 0.9, cost = 400,},
					vgr_minelayercorvette = {name = "Minelayer", prob = 1, cost = 800,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					vgr_scout = {name = "Survey Scout", prob = 0.25, cost = 350,},
					vgr_bomber = {name = "Bomber", prob = 0.5, cost = 550,},
					vgr_interceptor = {name = "Assault Craft", prob = 0.75, cost = 500,},
					vgr_lancefighter = {name = "Lance Fighter", prob = 1, cost = 500,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					vgr_weaponplatform_gun = {name = "Gun Platform", prob = 0.4, cost = 300,},
					vgr_weaponplatform_missile = {name = "Heavy Missile Platform", prob = 0.8, cost = 300,},
					vgr_hyperspace_platform = {name = "Hyperspace Gate", prob = 1, cost = 750,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
					vgr_resourcecollector = {name = "Resource Collector", prob = 0.7, cost = 400,},
					vgr_resourcecontroller = {name = "Mobile Refinery", prob = 1, cost = 800,},
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					vgr_probe_prox = {name = "Proximity Sensor", prob = 0.3, cost = 250,},
					vgr_probe_ecm = {name = "Sensors Distortion Probe", prob = 0.6, cost = 500,},
					vgr_probe = {name = "Probe", prob = 1, cost = 150,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	kushan_hwce =
	{
		research =
		{
			mothership =
			{
				prob = 0/10,
				items =
				{
				},
			},
			cruiser =
			{
				prob = 2/10,
				items =
				{
					kus_heavyguns = {name = "Heavy Guns", prob = 1, cost = 1000,},
				},
			},
			carrier =
			{
				prob = 3/10,
				items =
				{
					kus_superheavychassis = {name = "Super-Heavy Chassis", prob = 1, cost = 1000,},
				},
			},
			destroyer =
			{
				prob = 4/10,
				items =
				{
					kus_supercapitalshipdrive = {name = "Super-Capital Ship Drive", prob = 0.4, cost = 1000,},
					kus_guidedmissiles = {name = "Guided Missiles", prob = 1, cost = 1000,},
				},
			},
			frigate =
			{
				prob = 5/10,
				items =
				{
					kus_capitalshipdrive = {name = "Capital Ship Drive", prob = 0.25, cost = 1000,},
					kus_capitalshipchassis = {name = "Capital Ship Chassis", prob = 0.5, cost = 1000,},
					kus_ioncannons = {name = "Ion Cannons", prob = 0.75, cost = 1000,},
					kus_dronetechnology = {name = "Drone Technology", prob = 1, cost = 1000,},
				},
			},
			corvette =
			{
				prob = 6/10,
				items =
				{
					kus_corvettedrive = {name = "Corvette Drive", prob = 0.2, cost = 1000,},
					kus_corvettechassis = {name = "Corvette Chassis", prob = 0.4, cost = 1000,},
					kus_heavycorvetteupgrade = {name = "Heavy Corvette Upgrade", prob = 0.6, cost = 1000,},
					kus_fasttrackingturrets = {name = "Fast-Tracking Turrets", prob = 0.8, cost = 1000,},
					kus_minelayingtech = {name = "Minelaying Tech", prob = 1, cost = 1000,},
				},
			},
			fighter =
			{
				prob = 7/10,
				items =
				{
					kus_fighterdrive = {name = "Fighter Drive", prob = 1/4, cost = 1000,},
					kus_fighterchassis = {name = "Fighter Chassis", prob = 2/4, cost = 1000,},
					kus_defendersubsystems = {name = "Defender Sub-Systems", prob = 3/4, cost = 1000,},
					kus_cloakedfighter = {name = "Cloaked Fighter", prob = 4/4, cost = 1000,},
				},
			},
			platform =
			{
				prob = 8/10,
				items =
				{
					kus_gravitygenerator = {name = "Gravity Generator", prob = 0.5, cost = 1000,},
					kus_cloakgenerator = {name = "Cloak Generator", prob = 1, cost = 1000,},
				},
			},
			resource =
			{
				prob = 0/10,
				items =
				{
				},
			},
			noncombat =
			{
				prob = 10/10,
				items =
				{
					kus_proximitysensor = {name = "Proximity Sensor", prob = 0.5, cost = 1000,},
					kus_sensorarray = {name = "Sensors Array", prob = 1, cost = 1000,},
				},
			},
		},
		subsystems =
		{
		},
		ships =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					kus_mothership = {name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
					kus_heavycruiser = {name = "Heavy Cruiser", prob = 1, cost = 3600,},
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
					kus_carrier = {name = "Carrier", prob = 0.9, cost = 3000,},
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
					kus_destroyer = {name = "Destroyer", prob = 0.5, cost = 1800,},
					kus_missiledestroyer = {name = "Missile Destroyer", prob = 1, cost = 2000,},
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					kus_assaultfrigate = {name = "Assault Frigate", prob = 0.25, cost = 800,},
					kus_ioncannonfrigate = {name = "Ion Cannon Frigate", prob = 0.5, cost = 900,},
					kus_supportfrigate = {name = "Support Frigate", prob = 0.75, cost = 800,},
					kus_dronefrigate = {name = "Drone Frigate", prob = 1, cost = 900,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					kus_repaircorvette = {name = "Repair Corvette", prob = 0.1667, cost = 250,},
					kus_salvagecorvette = {name = "Salvage Corvette", prob = 0.3333, cost = 250,},
					kus_lightcorvette = {name = "Light Corvette", prob = 0.5, cost = 250,},
					kus_heavycorvette = {name = "Heavy Corvette", prob = 0.6667, cost = 270,},
					kus_multiguncorvette = {name = "Multi-Gun Corvette", prob = 0.8333, cost = 300,},
					kus_minelayercorvette = {name = "Minelayer Corvette", prob = 1, cost = 340,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					kus_scout = {name = "Scout", prob = 0.2, cost = 90,},
					kus_interceptor = {name = "Interceptor", prob = 0.4, cost = 100,},
					kus_defender = {name = "Defender", prob = 0.6, cost = 120,},
					kus_attackbomber = {name = "Attack Bomber", prob = 0.8, cost = 120,},
					kus_cloakedfighter = {name = "Cloaked Fighter", prob = 1, cost = 130,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					kus_gravwellgenerator = {name = "Gravwell Generator", prob = 0.5, cost = 800,},
					kus_cloakgenerator = {name = "Cloak Generator", prob = 1, cost = 800,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
					kus_resourcecollector = {name = "Resource Collector", prob = 0.7, cost = 600,},
					kus_resourcecontroller = {name = "Resource Controller", prob = 1, cost = 900,},
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					kus_researchship = {name = "Research Ship", prob = 0.25, cost = 750,},
					kus_probe = {name = "Probe", prob = 0.5, cost = 50,},
					kus_proximitysensor = {name = "Proximity Sensor", prob = 0.75, cost = 100,},
					kus_sensorarray = {name = "Sensors Array", prob = 1, cost = 700,},
				},
			},
		},
	},
	------------------------------------------------------------------------
	taiidan_hwce =
	{
		research =
		{
			mothership =
			{
				prob = 0/10,
				items =
				{
				},
			},
			cruiser =
			{
				prob = 2/10,
				items =
				{
					tai_heavyguns = {name = "Heavy Guns", prob = 1, cost = 1000,},
				},
			},
			carrier =
			{
				prob = 3/10,
				items =
				{
					tai_superheavychassis = {name = "Super-Heavy Chassis", prob = 1, cost = 1000,},
				},
			},
			destroyer =
			{
				prob = 4/10,
				items =
				{
					tai_supercapitalshipdrive = {name = "Super-Capital Ship Drive", prob = 0.4, cost = 1000,},
					tai_guidedmissiles = {name = "Guided Missiles", prob = 1, cost = 1000,},
				},
			},
			frigate =
			{
				prob = 5/10,
				items =
				{
					tai_capitalshipdrive = {name = "Capital Ship Drive", prob = 0.25, cost = 1000,},
					tai_capitalshipchassis = {name = "Capital Ship Chassis", prob = 0.5, cost = 1000,},
					tai_ioncannons = {name = "Ion Cannons", prob = 0.75, cost = 1000,},
					tai_defensefield = {name = "Defense Field", prob = 1, cost = 1000,},
				},
			},
			corvette =
			{
				prob = 6/10,
				items =
				{
					tai_corvettedrive = {name = "Corvette Drive", prob = 0.2, cost = 1000,},
					tai_corvettechassis = {name = "Corvette Chassis", prob = 0.4, cost = 1000,},
					tai_heavycorvetteupgrade = {name = "Heavy Corvette Upgrade", prob = 0.6, cost = 1000,},
					tai_fasttrackingturrets = {name = "Fast-Tracking Turrets", prob = 0.8, cost = 1000,},
					tai_minelayingtech = {name = "Minelaying Tech", prob = 1, cost = 1000,},
				},
			},
			fighter =
			{
				prob = 7/10,
				items =
				{
					tai_fighterdrive = {name = "Fighter Drive", prob = 1/4, cost = 1000,},
					tai_fighterchassis = {name = "Fighter Chassis", prob = 2/4, cost = 1000,},
					tai_defendersubsystems = {name = "Defender Sub-Systems", prob = 3/4, cost = 1000,},
					tai_defensefighter = {name = "Defense Fighter", prob = 4/4, cost = 1000,},
				},
			},
			platform =
			{
				prob = 8/10,
				items =
				{
					tai_gravitygenerator = {name = "Gravity Generator", prob = 0.5, cost = 1000,},
					tai_cloakgenerator = {name = "Cloak Generator", prob = 1, cost = 1000,},
				},
			},
			resource =
			{
				prob = 0/10,
				items =
				{
				},
			},
			noncombat =
			{
				prob = 10/10,
				items =
				{
					tai_proximitysensor = {name = "Proximity Sensor", prob = 0.5, cost = 1000,},
					tai_sensorarray = {name = "Sensors Array", prob = 1, cost = 1000,},
				},
			},
		},
		subsystems =
		{
		},
		ships =
		{
			mothership =
			{
				prob = 0,
				items =
				{
					tai_mothership = {name = "Mothership", prob = 1, cost = 8000,},
				},
			},
			cruiser =
			{
				prob = 0,
				items =
				{
					tai_heavycruiser = {name = "Heavy Cruiser", prob = 1, cost = 3600,},
				},
			},
			carrier =
			{
				prob = 0.05,
				items =
				{
					tai_carrier = {name = "Carrier", prob = 0.9, cost = 3000,},
				},
			},
			destroyer =
			{
				prob = 0.15,
				items =
				{
					tai_destroyer = {name = "Destroyer", prob = 0.5, cost = 1800,},
					tai_missiledestroyer = {name = "Missile Destroyer", prob = 1, cost = 2000,},
				},
			},
			frigate =
			{
				prob = 0.35,
				items =
				{
					tai_assaultfrigate = {name = "Assault Frigate", prob = 0.25, cost = 800,},
					tai_ioncannonfrigate = {name = "Ion Cannon Frigate", prob = 0.5, cost = 900,},
					tai_supportfrigate = {name = "Support Frigate", prob = 0.75, cost = 800,},
					tai_fieldfrigate = {name = "Field Frigate", prob = 1, cost = 900,},
				},
			},
			corvette =
			{
				prob = 0.55,
				items =
				{
					tai_repaircorvette = {name = "Repair Corvette", prob = 0.1667, cost = 250,},
					tai_salvagecorvette = {name = "Salvage Corvette", prob = 0.3333, cost = 250,},
					tai_lightcorvette = {name = "Light Corvette", prob = 0.5, cost = 250,},
					tai_heavycorvette = {name = "Heavy Corvette", prob = 0.6667, cost = 270,},
					tai_multiguncorvette = {name = "Multi-Gun Corvette", prob = 0.8333, cost = 300,},
					tai_minelayercorvette = {name = "Minelayer Corvette", prob = 1, cost = 340,},
				},
			},
			fighter =
			{
				prob = 0.75,
				items =
				{
					tai_scout = {name = "Scout", prob = 0.2, cost = 90,},
					tai_interceptor = {name = "Interceptor", prob = 0.4, cost = 100,},
					tai_defender = {name = "Defender", prob = 0.6, cost = 120,},
					tai_attackbomber = {name = "Attack Bomber", prob = 0.8, cost = 120,},
					tai_defensefighter = {name = "Defense Fighter", prob = 1, cost = 130,},
				},
			},
			platform =
			{
				prob = 0.8,
				items =
				{
					tai_gravwellgenerator = {name = "Gravwell Generator", prob = 0.5, cost = 800,},
					tai_cloakgenerator = {name = "Cloak Generator", prob = 1, cost = 800,},
				},
			},
			resource =
			{
				prob = 0.92,
				items =
				{
					tai_resourcecollector = {name = "Resource Collector", prob = 0.7, cost = 600,},
					tai_resourcecontroller = {name = "Resource Controller", prob = 1, cost = 900,},
				},
			},
			noncombat =
			{
				prob = 1,
				items =
				{
					tai_researchship = {name = "Research Ship", prob = 0.25, cost = 750,},
					tai_probe = {name = "Probe", prob = 0.5, cost = 50,},
					tai_proximitysensor = {name = "Proximity Sensor", prob = 0.75, cost = 100,},
					tai_sensorarray = {name = "Sensors Array", prob = 1, cost = 700,},
				},
			},
		},
	},
}
