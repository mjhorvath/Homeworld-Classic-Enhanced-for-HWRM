-- This file is used predominantly by the AI since it is not smart enough to 
-- know which game rule settings are enabled or disabled.
-- Not useful for levels since there's no way to tell from within a level which 
-- game rules are active.

-- may not actually be needed
VariantResearch = {}

-- not needed currently
VariantSubs = {}

VariantShips =
{
	hgn_carrier =
	{
		"hgn_carrier_car0_rch0_res0_hyp0",
		"hgn_carrier_car0_rch0_res0_hyp1",
		"hgn_carrier_car0_rch0_res1_hyp0",
		"hgn_carrier_car0_rch0_res1_hyp1",
		"hgn_carrier_car0_rch1_res0_hyp0",
		"hgn_carrier_car0_rch1_res0_hyp1",
		"hgn_carrier_car0_rch1_res1_hyp0",
		"hgn_carrier_car0_rch1_res1_hyp1",
		"hgn_carrier_car1_rch0_res0_hyp0",
		"hgn_carrier_car1_rch0_res0_hyp1",
		"hgn_carrier_car1_rch0_res1_hyp0",
		"hgn_carrier_car1_rch0_res1_hyp1",
		"hgn_carrier_car1_rch1_res0_hyp0",
		"hgn_carrier_car1_rch1_res0_hyp1",
		"hgn_carrier_car1_rch1_res1_hyp0",
		"hgn_carrier_car1_rch1_res1_hyp1",
	},
	hgn_mothership =
	{
		"hgn_mothership_car0_rch0_res0_hyp0",
		"hgn_mothership_car0_rch0_res0_hyp1",
		"hgn_mothership_car0_rch0_res1_hyp0",
		"hgn_mothership_car0_rch0_res1_hyp1",
		"hgn_mothership_car0_rch1_res0_hyp0",
		"hgn_mothership_car0_rch1_res0_hyp1",
		"hgn_mothership_car0_rch1_res1_hyp0",
		"hgn_mothership_car0_rch1_res1_hyp1",
		"hgn_mothership_car1_rch0_res0_hyp0",
		"hgn_mothership_car1_rch0_res0_hyp1",
		"hgn_mothership_car1_rch0_res1_hyp0",
		"hgn_mothership_car1_rch0_res1_hyp1",
		"hgn_mothership_car1_rch1_res0_hyp0",
		"hgn_mothership_car1_rch1_res0_hyp1",
		"hgn_mothership_car1_rch1_res1_hyp0",
		"hgn_mothership_car1_rch1_res1_hyp1",
	},
	hgn_shipyard =
	{
		"hgn_shipyard_car0_rch0_res0_hyp0",
		"hgn_shipyard_car0_rch0_res0_hyp1",
		"hgn_shipyard_car0_rch0_res1_hyp0",
		"hgn_shipyard_car0_rch0_res1_hyp1",
		"hgn_shipyard_car0_rch1_res0_hyp0",
		"hgn_shipyard_car0_rch1_res0_hyp1",
		"hgn_shipyard_car0_rch1_res1_hyp0",
		"hgn_shipyard_car0_rch1_res1_hyp1",
		"hgn_shipyard_car1_rch0_res0_hyp0",
		"hgn_shipyard_car1_rch0_res0_hyp1",
		"hgn_shipyard_car1_rch0_res1_hyp0",
		"hgn_shipyard_car1_rch0_res1_hyp1",
		"hgn_shipyard_car1_rch1_res0_hyp0",
		"hgn_shipyard_car1_rch1_res0_hyp1",
		"hgn_shipyard_car1_rch1_res1_hyp0",
		"hgn_shipyard_car1_rch1_res1_hyp1",
	},
	hgn_shipyard_elohim =
	{
		"hgn_shipyard_elohim_car0_rch0_res0_hyp0",
		"hgn_shipyard_elohim_car0_rch0_res0_hyp1",
		"hgn_shipyard_elohim_car0_rch0_res1_hyp0",
		"hgn_shipyard_elohim_car0_rch0_res1_hyp1",
		"hgn_shipyard_elohim_car0_rch1_res0_hyp0",
		"hgn_shipyard_elohim_car0_rch1_res0_hyp1",
		"hgn_shipyard_elohim_car0_rch1_res1_hyp0",
		"hgn_shipyard_elohim_car0_rch1_res1_hyp1",
		"hgn_shipyard_elohim_car1_rch0_res0_hyp0",
		"hgn_shipyard_elohim_car1_rch0_res0_hyp1",
		"hgn_shipyard_elohim_car1_rch0_res1_hyp0",
		"hgn_shipyard_elohim_car1_rch0_res1_hyp1",
		"hgn_shipyard_elohim_car1_rch1_res0_hyp0",
		"hgn_shipyard_elohim_car1_rch1_res0_hyp1",
		"hgn_shipyard_elohim_car1_rch1_res1_hyp0",
		"hgn_shipyard_elohim_car1_rch1_res1_hyp1",
	},
	hgn_shipyard_spg =
	{
		"hgn_shipyard_spg_car0_rch0_res0_hyp0",
		"hgn_shipyard_spg_car0_rch0_res0_hyp1",
		"hgn_shipyard_spg_car0_rch0_res1_hyp0",
		"hgn_shipyard_spg_car0_rch0_res1_hyp1",
		"hgn_shipyard_spg_car0_rch1_res0_hyp0",
		"hgn_shipyard_spg_car0_rch1_res0_hyp1",
		"hgn_shipyard_spg_car0_rch1_res1_hyp0",
		"hgn_shipyard_spg_car0_rch1_res1_hyp1",
		"hgn_shipyard_spg_car1_rch0_res0_hyp0",
		"hgn_shipyard_spg_car1_rch0_res0_hyp1",
		"hgn_shipyard_spg_car1_rch0_res1_hyp0",
		"hgn_shipyard_spg_car1_rch0_res1_hyp1",
		"hgn_shipyard_spg_car1_rch1_res0_hyp0",
		"hgn_shipyard_spg_car1_rch1_res0_hyp1",
		"hgn_shipyard_spg_car1_rch1_res1_hyp0",
		"hgn_shipyard_spg_car1_rch1_res1_hyp1",
	},
	hgn_battlecruiser =
	{
		"hgn_battlecruiser_hyp0",
		"hgn_battlecruiser_hyp1",
	},
	hgn_destroyer =
	{
		"hgn_destroyer_hyp0",
		"hgn_destroyer_hyp1",
	},
	hgn_assaultfrigate =
	{
		"hgn_assaultfrigate_hyp0",
		"hgn_assaultfrigate_hyp1",
	},
	hgn_defensefieldfrigate =
	{
		"hgn_defensefieldfrigate_hyp0",
		"hgn_defensefieldfrigate_hyp1",
	},
	hgn_ioncannonfrigate =
	{
		"hgn_ioncannonfrigate_hyp0",
		"hgn_ioncannonfrigate_hyp1",
	},
	hgn_marinefrigate =
	{
		"hgn_marinefrigate_hyp0",
		"hgn_marinefrigate_hyp1",
	},
	hgn_marinefrigate_soban =
	{
		"hgn_marinefrigate_soban_hyp0",
		"hgn_marinefrigate_soban_hyp1",
	},
	hgn_resourcecontroller =
	{
		"hgn_resourcecontroller_res0_hyp0",
		"hgn_resourcecontroller_res0_hyp1",
		"hgn_resourcecontroller_res1_hyp0",
		"hgn_resourcecontroller_res1_hyp1",
	},
	hgn_torpedofrigate =
	{
		"hgn_torpedofrigate_hyp0",
		"hgn_torpedofrigate_hyp1",
	},
	hgn_assaultcorvetteelite =
	{
		"hgn_assaultcorvetteelite_hyp0",
		"hgn_assaultcorvetteelite_hyp1",
	},
	hgn_assaultcorvette =
	{
		"hgn_assaultcorvette_hyp0",
		"hgn_assaultcorvette_hyp1",
	},
	hgn_attackbomberelite =
	{
		"hgn_attackbomberelite_hyp0",
		"hgn_attackbomberelite_hyp1",
	},
	hgn_attackbomber =
	{
		"hgn_attackbomber_hyp0",
		"hgn_attackbomber_hyp1",
	},
	hgn_ecmprobe =
	{
		"hgn_ecmprobe_hyp0",
		"hgn_ecmprobe_hyp1",
	},
	hgn_gunturret =
	{
		"hgn_gunturret_hyp0",
		"hgn_gunturret_hyp1",
	},
	hgn_interceptor =
	{
		"hgn_interceptor_hyp0",
		"hgn_interceptor_hyp1",
	},
	hgn_ionturret =
	{
		"hgn_ionturret_hyp0",
		"hgn_ionturret_hyp1",
	},
	hgn_minelayercorvette =
	{
		"hgn_minelayercorvette_hyp0",
		"hgn_minelayercorvette_hyp1",
	},
	hgn_probe =
	{
		"hgn_probe_hyp0",
		"hgn_probe_hyp1",
	},
	hgn_proximitysensor =
	{
		"hgn_proximitysensor_hyp0",
		"hgn_proximitysensor_hyp1",
	},
	hgn_pulsarcorvette =
	{
		"hgn_pulsarcorvette_hyp0",
		"hgn_pulsarcorvette_hyp1",
	},
	hgn_resourcecollector =
	{
		"hgn_resourcecollector_res0_hyp0",
		"hgn_resourcecollector_res0_hyp1",
		"hgn_resourcecollector_res1_hyp0",
		"hgn_resourcecollector_res1_hyp1",
	},
	hgn_scout =
	{
		"hgn_scout_hyp0",
		"hgn_scout_hyp1",
	},
	hgn_targetdrone =
	{
		"hgn_targetdrone_hyp0",
		"hgn_targetdrone_hyp1",
	},
	vgr_carrier =
	{
		"vgr_carrier_car0_rch0_res0_hyp0",
		"vgr_carrier_car0_rch0_res0_hyp1",
		"vgr_carrier_car0_rch0_res1_hyp0",
		"vgr_carrier_car0_rch0_res1_hyp1",
		"vgr_carrier_car0_rch1_res0_hyp0",
		"vgr_carrier_car0_rch1_res0_hyp1",
		"vgr_carrier_car0_rch1_res1_hyp0",
		"vgr_carrier_car0_rch1_res1_hyp1",
		"vgr_carrier_car1_rch0_res0_hyp0",
		"vgr_carrier_car1_rch0_res0_hyp1",
		"vgr_carrier_car1_rch0_res1_hyp0",
		"vgr_carrier_car1_rch0_res1_hyp1",
		"vgr_carrier_car1_rch1_res0_hyp0",
		"vgr_carrier_car1_rch1_res0_hyp1",
		"vgr_carrier_car1_rch1_res1_hyp0",
		"vgr_carrier_car1_rch1_res1_hyp1",
	},
	vgr_mothership =
	{
		"vgr_mothership_car0_rch0_res0_hyp0",
		"vgr_mothership_car0_rch0_res0_hyp1",
		"vgr_mothership_car0_rch0_res1_hyp0",
		"vgr_mothership_car0_rch0_res1_hyp1",
		"vgr_mothership_car0_rch1_res0_hyp0",
		"vgr_mothership_car0_rch1_res0_hyp1",
		"vgr_mothership_car0_rch1_res1_hyp0",
		"vgr_mothership_car0_rch1_res1_hyp1",
		"vgr_mothership_car1_rch0_res0_hyp0",
		"vgr_mothership_car1_rch0_res0_hyp1",
		"vgr_mothership_car1_rch0_res1_hyp0",
		"vgr_mothership_car1_rch0_res1_hyp1",
		"vgr_mothership_car1_rch1_res0_hyp0",
		"vgr_mothership_car1_rch1_res0_hyp1",
		"vgr_mothership_car1_rch1_res1_hyp0",
		"vgr_mothership_car1_rch1_res1_hyp1",
	},
	vgr_mothership_makaan =
	{
		"vgr_mothership_makaan_car0_rch0_res0_hyp0",
		"vgr_mothership_makaan_car0_rch0_res0_hyp1",
		"vgr_mothership_makaan_car0_rch0_res1_hyp0",
		"vgr_mothership_makaan_car0_rch0_res1_hyp1",
		"vgr_mothership_makaan_car0_rch1_res0_hyp0",
		"vgr_mothership_makaan_car0_rch1_res0_hyp1",
		"vgr_mothership_makaan_car0_rch1_res1_hyp0",
		"vgr_mothership_makaan_car0_rch1_res1_hyp1",
		"vgr_mothership_makaan_car1_rch0_res0_hyp0",
		"vgr_mothership_makaan_car1_rch0_res0_hyp1",
		"vgr_mothership_makaan_car1_rch0_res1_hyp0",
		"vgr_mothership_makaan_car1_rch0_res1_hyp1",
		"vgr_mothership_makaan_car1_rch1_res0_hyp0",
		"vgr_mothership_makaan_car1_rch1_res0_hyp1",
		"vgr_mothership_makaan_car1_rch1_res1_hyp0",
		"vgr_mothership_makaan_car1_rch1_res1_hyp1",
	},
	vgr_shipyard =
	{
		"vgr_shipyard_car0_rch0_res0_hyp0",
		"vgr_shipyard_car0_rch0_res0_hyp1",
		"vgr_shipyard_car0_rch0_res1_hyp0",
		"vgr_shipyard_car0_rch0_res1_hyp1",
		"vgr_shipyard_car0_rch1_res0_hyp0",
		"vgr_shipyard_car0_rch1_res0_hyp1",
		"vgr_shipyard_car0_rch1_res1_hyp0",
		"vgr_shipyard_car0_rch1_res1_hyp1",
		"vgr_shipyard_car1_rch0_res0_hyp0",
		"vgr_shipyard_car1_rch0_res0_hyp1",
		"vgr_shipyard_car1_rch0_res1_hyp0",
		"vgr_shipyard_car1_rch0_res1_hyp1",
		"vgr_shipyard_car1_rch1_res0_hyp0",
		"vgr_shipyard_car1_rch1_res0_hyp1",
		"vgr_shipyard_car1_rch1_res1_hyp0",
		"vgr_shipyard_car1_rch1_res1_hyp1",
	},
	vgr_battlecruiser =
	{
		"vgr_battlecruiser_hyp0",
		"vgr_battlecruiser_hyp1",
	},
	vgr_destroyer =
	{
		"vgr_destroyer_hyp0",
		"vgr_destroyer_hyp1",
	},
	vgr_assaultfrigate =
	{
		"vgr_assaultfrigate_hyp0",
		"vgr_assaultfrigate_hyp1",
	},
	vgr_heavymissilefrigate =
	{
		"vgr_heavymissilefrigate_hyp0",
		"vgr_heavymissilefrigate_hyp1",
	},
	vgr_infiltratorfrigate =
	{
		"vgr_infiltratorfrigate_hyp0",
		"vgr_infiltratorfrigate_hyp1",
	},
	vgr_resourcecontroller =
	{
		"vgr_resourcecontroller_res0_hyp0",
		"vgr_resourcecontroller_res0_hyp1",
		"vgr_resourcecontroller_res1_hyp0",
		"vgr_resourcecontroller_res1_hyp1",
	},
	vgr_bomber =
	{
		"vgr_bomber_hyp0",
		"vgr_bomber_hyp1",
	},
	vgr_commandcorvette =
	{
		"vgr_commandcorvette_hyp0",
		"vgr_commandcorvette_hyp1",
	},
	vgr_hyperspace_platform =
	{
		"vgr_hyperspace_platform_hyp0",
		"vgr_hyperspace_platform_hyp1",
	},
	vgr_interceptor =
	{
		"vgr_interceptor_hyp0",
		"vgr_interceptor_hyp1",
	},
	vgr_lancefighter =
	{
		"vgr_lancefighter_hyp0",
		"vgr_lancefighter_hyp1",
	},
	vgr_lasercorvette =
	{
		"vgr_lasercorvette_hyp0",
		"vgr_lasercorvette_hyp1",
	},
	vgr_minelayercorvette =
	{
		"vgr_minelayercorvette_hyp0",
		"vgr_minelayercorvette_hyp1",
	},
	vgr_missilecorvette =
	{
		"vgr_missilecorvette_hyp0",
		"vgr_missilecorvette_hyp1",
	},
	vgr_probe =
	{
		"vgr_probe_hyp0",
		"vgr_probe_hyp1",
	},
	vgr_probe_ecm =
	{
		"vgr_probe_ecm_hyp0",
		"vgr_probe_ecm_hyp1",
	},
	vgr_probe_prox =
	{
		"vgr_probe_prox_hyp0",
		"vgr_probe_prox_hyp1",
	},
	vgr_resourcecollector =
	{
		"vgr_resourcecollector_res0_hyp0",
		"vgr_resourcecollector_res0_hyp1",
		"vgr_resourcecollector_res1_hyp0",
		"vgr_resourcecollector_res1_hyp1",
	},
	vgr_scout =
	{
		"vgr_scout_hyp0",
		"vgr_scout_hyp1",
	},
	vgr_weaponplatform_gun =
	{
		"vgr_weaponplatform_gun_hyp0",
		"vgr_weaponplatform_gun_hyp1",
	},
	vgr_weaponplatform_missile =
	{
		"vgr_weaponplatform_missile_hyp0",
		"vgr_weaponplatform_missile_hyp1",
	},
	kus_assaultfrigate =
	{
		"kus_assaultfrigate_hyp0",
		"kus_assaultfrigate_hyp1",
	},
	kus_carrier =
	{
		"kus_carrier_res0_hyp0",
		"kus_carrier_res0_hyp1",
		"kus_carrier_res1_hyp0",
		"kus_carrier_res1_hyp1",
	},
	kus_destroyer =
	{
		"kus_destroyer_hyp0",
		"kus_destroyer_hyp1",
	},
	kus_dronefrigate =
	{
		"kus_dronefrigate_hyp0",
		"kus_dronefrigate_hyp1",
	},
	kus_heavycruiser =
	{
		"kus_heavycruiser_hyp0",
		"kus_heavycruiser_hyp1",
	},
	kus_ioncannonfrigate =
	{
		"kus_ioncannonfrigate_hyp0",
		"kus_ioncannonfrigate_hyp1",
	},
	kus_missiledestroyer =
	{
		"kus_missiledestroyer_hyp0",
		"kus_missiledestroyer_hyp1",
	},
	kus_mothership =
	{
		"kus_mothership_car0_res0_hyp0",
		"kus_mothership_car0_res0_hyp1",
		"kus_mothership_car0_res1_hyp0",
		"kus_mothership_car0_res1_hyp1",
		"kus_mothership_car1_res0_hyp0",
		"kus_mothership_car1_res0_hyp1",
		"kus_mothership_car1_res1_hyp0",
		"kus_mothership_car1_res1_hyp1",
	},
	kus_resourcecontroller =
	{
		"kus_resourcecontroller_res0_hyp0",
		"kus_resourcecontroller_res0_hyp1",
		"kus_resourcecontroller_res1_hyp0",
		"kus_resourcecontroller_res1_hyp1",
	},
	kus_supportfrigate =
	{
		"kus_supportfrigate_hyp0",
		"kus_supportfrigate_hyp1",
	},
	kus_attackbomber =
	{
		"kus_attackbomber_hyp0",
		"kus_attackbomber_hyp1",
	},
	kus_cloakedfighter =
	{
		"kus_cloakedfighter_hyp0",
		"kus_cloakedfighter_hyp1",
	},
	kus_cloakgenerator =
	{
		"kus_cloakgenerator_hyp0",
		"kus_cloakgenerator_hyp1",
	},
	kus_defender =
	{
		"kus_defender_hyp0",
		"kus_defender_hyp1",
	},
	kus_gravwellgenerator =
	{
		"kus_gravwellgenerator_hyp0",
		"kus_gravwellgenerator_hyp1",
	},
	kus_heavycorvette =
	{
		"kus_heavycorvette_hyp0",
		"kus_heavycorvette_hyp1",
	},
	kus_interceptor =
	{
		"kus_interceptor_hyp0",
		"kus_interceptor_hyp1",
	},
	kus_lightcorvette =
	{
		"kus_lightcorvette_hyp0",
		"kus_lightcorvette_hyp1",
	},
	kus_minelayercorvette =
	{
		"kus_minelayercorvette_hyp0",
		"kus_minelayercorvette_hyp1",
	},
	kus_multiguncorvette =
	{
		"kus_multiguncorvette_hyp0",
		"kus_multiguncorvette_hyp1",
	},
	kus_probe =
	{
		"kus_probe_hyp0",
		"kus_probe_hyp1",
	},
	kus_proximitysensor =
	{
		"kus_proximitysensor_hyp0",
		"kus_proximitysensor_hyp1",
	},
	kus_repaircorvette =
	{
		"kus_repaircorvette_hyp0",
		"kus_repaircorvette_hyp1",
	},
	kus_resourcecollector =
	{
		"kus_resourcecollector_res0_hyp0",
		"kus_resourcecollector_res0_hyp1",
		"kus_resourcecollector_res1_hyp0",
		"kus_resourcecollector_res1_hyp1",
	},
	kus_salvagecorvette =
	{
		"kus_salvagecorvette_hyp0",
		"kus_salvagecorvette_hyp1",
	},
	kus_scout =
	{
		"kus_scout_hyp0",
		"kus_scout_hyp1",
	},
	kus_sensorarray =
	{
		"kus_sensorarray_hyp0",
		"kus_sensorarray_hyp1",
	},
	kus_researchship = {},
	kus_researchship_1 = {},
	kus_researchship_2 = {},
	kus_researchship_3 = {},
	kus_researchship_4 = {},
	kus_researchship_5 = {},
	tai_assaultfrigate =
	{
		"tai_assaultfrigate_hyp0",
		"tai_assaultfrigate_hyp1",
	},
	tai_carrier =
	{
		"tai_carrier_res0_hyp0",
		"tai_carrier_res0_hyp1",
		"tai_carrier_res1_hyp0",
		"tai_carrier_res1_hyp1",
	},
	tai_destroyer =
	{
		"tai_destroyer_hyp0",
		"tai_destroyer_hyp1",
	},
	tai_fieldfrigate =
	{
		"tai_fieldfrigate_hyp0",
		"tai_fieldfrigate_hyp1",
	},
	tai_heavycruiser =
	{
		"tai_heavycruiser_hyp0",
		"tai_heavycruiser_hyp1",
	},
	tai_ioncannonfrigate =
	{
		"tai_ioncannonfrigate_hyp0",
		"tai_ioncannonfrigate_hyp1",
	},
	tai_missiledestroyer =
	{
		"tai_missiledestroyer_hyp0",
		"tai_missiledestroyer_hyp1",
	},
	tai_mothership =
	{
		"tai_mothership_car0_res0_hyp0",
		"tai_mothership_car0_res0_hyp1",
		"tai_mothership_car0_res1_hyp0",
		"tai_mothership_car0_res1_hyp1",
		"tai_mothership_car1_res0_hyp0",
		"tai_mothership_car1_res0_hyp1",
		"tai_mothership_car1_res1_hyp0",
		"tai_mothership_car1_res1_hyp1",
	},
	tai_resourcecontroller =
	{
		"tai_resourcecontroller_res0_hyp0",
		"tai_resourcecontroller_res0_hyp1",
		"tai_resourcecontroller_res1_hyp0",
		"tai_resourcecontroller_res1_hyp1",
	},
	tai_supportfrigate =
	{
		"tai_supportfrigate_hyp0",
		"tai_supportfrigate_hyp1",
	},
	tai_attackbomber =
	{
		"tai_attackbomber_hyp0",
		"tai_attackbomber_hyp1",
	},
	tai_cloakgenerator =
	{
		"tai_cloakgenerator_hyp0",
		"tai_cloakgenerator_hyp1",
	},
	tai_defender =
	{
		"tai_defender_hyp0",
		"tai_defender_hyp1",
	},
	tai_defensefighter =
	{
		"tai_defensefighter_hyp0",
		"tai_defensefighter_hyp1",
	},
	tai_gravwellgenerator =
	{
		"tai_gravwellgenerator_hyp0",
		"tai_gravwellgenerator_hyp1",
	},
	tai_heavycorvette =
	{
		"tai_heavycorvette_hyp0",
		"tai_heavycorvette_hyp1",
	},
	tai_interceptor =
	{
		"tai_interceptor_hyp0",
		"tai_interceptor_hyp1",
	},
	tai_lightcorvette =
	{
		"tai_lightcorvette_hyp0",
		"tai_lightcorvette_hyp1",
	},
	tai_minelayercorvette =
	{
		"tai_minelayercorvette_hyp0",
		"tai_minelayercorvette_hyp1",
	},
	tai_multiguncorvette =
	{
		"tai_multiguncorvette_hyp0",
		"tai_multiguncorvette_hyp1",
	},
	tai_probe =
	{
		"tai_probe_hyp0",
		"tai_probe_hyp1",
	},
	tai_proximitysensor =
	{
		"tai_proximitysensor_hyp0",
		"tai_proximitysensor_hyp1",
	},
	tai_repaircorvette =
	{
		"tai_repaircorvette_hyp0",
		"tai_repaircorvette_hyp1",
	},
	tai_resourcecollector =
	{
		"tai_resourcecollector_res0_hyp0",
		"Tai_ResourceCollector_res0_hyp1",
		"tai_resourcecollector_res1_hyp0",
		"tai_resourcecollector_res1_hyp1",
	},
	tai_salvagecorvette =
	{
		"tai_salvagecorvette_hyp0",
		"tai_salvagecorvette_hyp1",
	},
	tai_scout =
	{
		"tai_scout_hyp0",
		"tai_scout_hyp1",
	},
	tai_sensorarray =
	{
		"tai_sensorarray_hyp0",
		"tai_sensorarray_hyp1",
	},
	tai_researchship = {},
	tai_researchship_1 = {},
	tai_researchship_2 = {},
	tai_researchship_3 = {},
	tai_researchship_4 = {},
	tai_researchship_5 = {},
	kad_advancedswarmer =
	{
		"kad_advancedswarmer_hyp0",
		"kad_advancedswarmer_hyp1",
	},
	kad_fuelpod =
	{
		"kad_fuelpod_hyp0",
		"kad_fuelpod_hyp1",
	},
	kad_multibeamfrigate =
	{
		"kad_multibeamfrigate_hyp0",
		"kad_multibeamfrigate_hyp1",
	},
	kad_p2mothership =
	{
		"kad_p2mothership_hyp0",
		"kad_p2mothership_hyp1",
	},
	kad_swarmer =
	{
		"kad_swarmer_hyp0",
		"kad_swarmer_hyp1",
	},
	kpr_attackdroid =
	{
		"kpr_attackdroid_hyp0",
		"kpr_attackdroid_hyp1",
	},
	kpr_destroyerm10 =
	{
		"kpr_destroyerm10_hyp0",
		"kpr_destroyerm10_hyp1",
	},
	kpr_destroyer =
	{
		"kpr_destroyer_hyp0",
		"kpr_destroyer_hyp1",
	},
	kpr_mover =
	{
		"kpr_mover_hyp0",
		"kpr_mover_hyp1",
	},
	kpr_sajuuk =
	{
		"kpr_sajuuk_hyp0",
		"kpr_sajuuk_hyp1",
	},
	obs_observer =
	{
		"obs_observer_hyp0",
		"obs_observer_hyp1",
	},
	tur_fighter =
	{
		"tur_fighter_hyp0",
		"tur_fighter_hyp1",
	},
	tur_ionarrayfrigate =
	{
		"tur_ionarrayfrigate_hyp0",
		"tur_ionarrayfrigate_hyp1",
	},
	tur_missilecorvette =
	{
		"tur_missilecorvette_hyp0",
		"tur_missilecorvette_hyp1",
	},
	tur_p1mothership =
	{
		"tur_p1mothership_hyp0",
		"tur_p1mothership_hyp1",
	},
	tur_standardcorvette =
	{
		"tur_standardcorvette_hyp0",
		"tur_standardcorvette_hyp1",
	},
}
