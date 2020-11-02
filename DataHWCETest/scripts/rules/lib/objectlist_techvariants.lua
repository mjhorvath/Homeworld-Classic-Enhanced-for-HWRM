-- Not useful within level files since there is no way to tell from within a 
-- level which game rules are active or inactive. Need to disable some game 
-- rules when using the "start with = from map" mode such that the "default" 
-- ship variants and settings are always selected.
-- Should I revert back to using strings versus the small binary tables?
-- For the AI, VariantResearchBool and VariantResearchInt could be merged.
-- For gamerules, VariantResearchBool and TechList could be merged.

VariantLabels = {"car","rch","res","hyp"}

VariantResearchBool =
{
	hgn_attackbomberimprovedbombs = {0,0,0,1},
	hgn_defensefieldfrigateshield = {0,0,0,1},
	hgn_improvedtorpedo = {0,0,0,1},
	hgn_repairability = {0,0,0,1},
	hgn_scoutempability = {0,0,0,1},
	hgn_scoutpingability = {0,0,0,1},
	hgn_allshipbuildspeed = {0,0,0,0},
	hgn_allshipbuildspeedexpert = {0,0,0,0},
	hgn_allshipbuildspeedhard = {0,0,0,0},
	hgn_cpuplayers_aggressive = {0,0,0,0},
	hgn_cpuplayers_defensive = {0,0,0,0},
	hgn_cpuplayers_dynamic = {0,0,0,0},
	hgn_cpuplayers_norushtime10 = {0,0,0,0},
	hgn_cpuplayers_norushtime15 = {0,0,0,0},
	hgn_cpuplayers_norushtime5 = {0,0,0,0},
	hgn_resourcecollectionrateexpert = {0,0,0,1},
	hgn_resourcecollectionratehard = {0,0,0,1},
	hgn_weapondamageupgrade125 = {0,0,0,0},
	hgn_weapondamageupgrade150 = {0,0,0,0},
	hgn_weapondamageupgrade175 = {0,0,0,0},
	hgn_weapondamageupgrade200 = {0,0,0,0},
	hgn_battlecruiserhealthupgrade1 = {0,0,0,1},
	hgn_battlecruisermaxspeedupgrade1 = {0,0,0,1},
	hgn_carrierbuildspeedupgrade1 = {1,1,1,1},
	hgn_carrierhealthupgrade1 = {1,1,1,1},
	hgn_carriermaxspeedupgrade1 = {1,1,1,1},
	hgn_assaultcorvettehealthupgrade1 = {0,0,0,1},
	hgn_pulsarcorvettehealthupgrade1 = {0,0,0,1},
	hgn_assaultcorvettemaxspeedupgrade1 = {0,0,0,1},
	hgn_pulsarcorvettemaxspeedupgrade1 = {0,0,0,1},
	hgn_battlecruiserionweapons = {0,0,0,1},
	hgn_destroyertech = {0,0,0,1},
	hgn_ecmprobe = {0,0,0,1},
	hgn_graviticattractionmines = {0,0,0,1},
	hgn_hyperspacedamagereductionupgrade = {0,0,0,0},
	hgn_instaadvancedfrigatetech = {0,0,0,0},
	hgn_platformionweapons = {0,0,0,1},
	hgn_sensdisprobe = {0,0,0,1},
	hgn_destroyerhealthupgrade1 = {0,0,0,1},
	hgn_destroyermaxspeedupgrade1 = {0,0,0,1},
	hgn_sgmcapitalhealth = {1,1,1,1},
	hgn_sgmcarrierhealth = {1,1,1,1},
	hgn_sgmfrigatehealth = {0,0,0,0},
	hgn_sgmshipyardhealth = {1,1,1,1},
	hgn_attackbombermaxspeedupgrade1 = {0,0,0,1},
	hgn_interceptormaxspeedupgrade1 = {0,0,0,1},
	hgn_assaultfrigatehealthupgrade1 = {0,0,0,1},
	hgn_ioncannonfrigatehealthupgrade1 = {0,0,0,1},
	hgn_torpedofrigatehealthupgrade1 = {0,0,0,1},
	hgn_assaultfrigatemaxspeedupgrade1 = {0,0,0,1},
	hgn_ioncannonfrigatemaxspeedupgrade1 = {0,0,0,1},
	hgn_torpedofrigatemaxspeedupgrade1 = {0,0,0,1},
	hgn_hyperspacecostupgrade1 = {0,0,0,0},
	hgn_hyperspacecostupgrade2 = {0,0,0,0},
	hgn_mothershipbuildspeedupgrade1 = {1,1,1,1},
	hgn_mothershiphealthupgrade1 = {1,1,1,1},
	hgn_mothershipmaxspeedupgrade1 = {1,1,1,1},
	hgn_gunturrethealthupgrade1 = {0,0,0,1},
	hgn_ionturrethealthupgrade1 = {0,0,0,1},
	hgn_shipyardbuildspeedupgrade1 = {1,1,1,1},
	hgn_shipyardbuildspeedupgrade1_elohim = {1,1,1,1},
	hgn_shipyardbuildspeedupgrade1_spg = {1,1,1,1},
	hgn_shipyardhealthupgrade1 = {1,1,1,1},
	hgn_shipyardhealthupgrade1_elohim = {1,1,1,1},
	hgn_shipyardhealthupgrade1_spg = {1,1,1,1},
	hgn_shipyardmaxspeedupgrade1 = {1,1,1,1},
	hgn_shipyardmaxspeedupgrade1_elohim = {1,1,1,1},
	hgn_shipyardmaxspeedupgrade1_spg = {1,1,1,1},
	hgn_assaultcorvetteeliteweaponupgrade = {0,0,0,1},
	hgn_attackbombereliteweaponupgrade = {0,0,0,1},
	hgn_attackdroidhealthupgradespgame_high = {0,0,0,1},
	hgn_attackdroidhealthupgradespgame_low = {0,0,0,1},
	hgn_attackdroidhealthupgradespgame_med = {0,0,0,1},
	hgn_attackdroidweaponupgradespgame_high = {0,0,0,1},
	hgn_attackdroidweaponupgradespgame_low = {0,0,0,1},
	hgn_attackdroidweaponupgradespgame_med = {0,0,0,1},
	hgn_damagemovertech = {1,1,1,1},
	hgn_frigatehealthupgradespgame = {0,0,0,0},
	hgn_keeperhealthupgradespgame_high = {0,0,0,1},
	hgn_keeperhealthupgradespgame_low = {0,0,0,1},
	hgn_keeperhealthupgradespgame_m10_lvl_1 = {0,0,0,1},
	hgn_keeperhealthupgradespgame_m10_lvl_2 = {0,0,0,1},
	hgn_keeperhealthupgradespgame_m10_lvl_3 = {0,0,0,1},
	hgn_keeperhealthupgradespgame_med = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_1 = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_2 = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_3 = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_4 = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_5 = {0,0,0,1},
	hgn_keeperweaponupgradespgame_m10_lvl_6 = {0,0,0,1},
	hgn_moverhealthdowngrade = {0,0,0,1},
	hgn_moverhealthupgrade = {0,0,0,1},
	hgn_radiationdefensefield = {0,0,0,1},
	hgn_sensorsbacktonormal1 = {1,1,1,1},
	hgn_sensorsbacktonormal2 = {1,1,1,1},
	hgn_sensorsbacktonormal3 = {1,1,1,1},
	hgn_sensorsdowngrade1 = {1,1,1,1},
	hgn_sensorsdowngrade2 = {1,1,1,1},
	hgn_sensorsdowngrade3 = {1,1,1,1},
	hgn_resourcecollectorhealthupgrade1 = {0,0,1,1},
	hgn_resourcecontrollerhealthupgrade1 = {0,0,1,1},
	vgr_bomberimprovedbombs = {0,0,0,1},
	vgr_repairability = {0,0,1,1},
	vgr_scoutempability = {0,0,0,1},
	vgr_allshipbuildspeed = {0,0,0,0},
	vgr_allshipbuildspeedexpert = {0,0,0,0},
	vgr_allshipbuildspeedhard = {0,0,0,0},
	vgr_cpuplayers_aggressive = {0,0,0,0},
	vgr_cpuplayers_defensive = {0,0,0,0},
	vgr_cpuplayers_dynamic = {0,0,0,0},
	vgr_cpuplayers_norushtime10 = {0,0,0,0},
	vgr_cpuplayers_norushtime15 = {0,0,0,0},
	vgr_cpuplayers_norushtime5 = {0,0,0,0},
	vgr_resourcecollectionrateexpert = {0,0,1,1},
	vgr_resourcecollectionratehard = {0,0,1,1},
	vgr_weapondamageupgrade125 = {0,0,0,0},
	vgr_weapondamageupgrade150 = {0,0,0,0},
	vgr_weapondamageupgrade175 = {0,0,0,0},
	vgr_weapondamageupgrade200 = {0,0,0,0},
	vgr_supercaphealthupgrade1 = {1,0,0,0},
	vgr_supercapspeedupgrade1 = {1,0,0,0},
	vgr_carrierbuildspeedupgrade1 = {1,1,1,1},
	vgr_mothershipbuildspeedupgrade1 = {1,1,1,1},
	vgr_mothershipbuildspeedupgrade1_makaan = {1,1,1,1},
	vgr_shipyardbuildspeedupgrade1 = {1,1,1,1},
	vgr_corvettehealthupgrade1 = {0,0,0,0},
	vgr_corvettespeedupgrade1 = {0,0,0,0},
	vgr_battlecruiserionweapons = {0,0,0,1},
	vgr_corvettecommand = {0,0,0,1},
	vgr_corvettegraviticattraction = {0,0,0,1},
	vgr_corvettelaser = {0,0,0,1},
	vgr_corvettetech = {0,0,0,0},
	vgr_destroyerguns = {0,0,0,1},
	vgr_frigateassault = {0,0,0,1},
	vgr_frigateinfiltrationtech = {0,0,0,1},
	vgr_frigatetech = {0,0,0,0},
	vgr_hyperspacedamagereductionupgrade = {0,0,0,0},
	vgr_hyperspacegatetech = {0,0,0,1},
	vgr_lancebeams = {0,0,0,1},
	vgr_plasmabombs = {0,0,0,1},
	vgr_platformheavymissiles = {0,0,0,1},
	vgr_probeproxsensor = {0,0,0,1},
	vgr_probesensordisruption = {0,0,0,1},
	vgr_sgmcapitalhealth = {1,1,1,1},
	vgr_sgmcapitalhealth_makaan = {1,1,1,1},
	vgr_sgmcarrierhealth = {1,1,1,1},
	vgr_sgmfrigatehealth = {0,0,0,0},
	vgr_sgmshipyardhealth = {1,1,1,1},
	vgr_fighterspeedupgrade1 = {0,0,0,0},
	vgr_frigatehealthupgrade1 = {0,0,0,0},
	vgr_frigatespeedupgrade1 = {0,0,0,0},
	vgr_platformhealthupgrade1 = {0,0,0,0},
	vgr_corvettehealthupgradespgame = {0,0,0,0},
	vgr_extrastrongvgrheavymissilesspgame = {0,0,0,1},
	vgr_hyperspacerecoverytimeupgradespgame = {0,0,0,0},
	vgr_hyperspacetransitiontimeupgradespgame = {0,0,0,0},
	vgr_makaanbattlecruiserhealth = {0,0,0,1},
	vgr_makaancarrierhealth = {1,1,1,1},
	vgr_makaancorvettehealth = {0,0,0,0},
	vgr_makaandestroyerhealth = {0,0,0,1},
	vgr_makaanfighterhealth = {0,0,0,0},
	vgr_makaanfrigatehealth = {0,0,0,0},
	vgr_makaanplatformhealth = {0,0,0,0},
	vgr_makaanshipyardhealth = {1,1,1,1},
	vgr_makaanutilityhealth = {0,0,0,0},
	vgr_shipyardspeeddowngradespgame = {1,1,1,1},
	vgr_strongergunplats = {0,0,0,1},
	vgr_strongermissileplats = {0,0,0,1},
	vgr_supercapdamageappliedspgame = {0,0,0,0},
	vgr_supercaphealthupgradespgame = {0,0,0,0},
	vgr_vaygrcapturehack = {0,0,0,1},
	vgr_vaygrcarrierhealthregendowngrade = {1,1,1,1},
	vgr_vaygrcarrierhealthupgrade = {1,1,1,1},
	vgr_vaygrfrigatehealthregendowngradespgame = {0,0,0,0},
	vgr_vaygrfrigatehealthupgradespgame = {0,0,0,0},
	vgr_vaygrradiationimmunityhack = {0,0,0,0},
	vgr_vaygrreducecapturehack = {0,0,0,1},
	vgr_weakvgrheavymissiles = {0,0,0,1},
	vgr_utilityhealthupgrade1 = {0,0,0,0},
	kus_allshipbuildspeed = {0,0,0,0},
	kus_allshipbuildspeedexpert = {0,0,0,0},
	kus_allshipbuildspeedhard = {0,0,0,0},
	kus_cpuplayers_aggressive = {0,0,0,0},
	kus_cpuplayers_defensive = {0,0,0,0},
	kus_cpuplayers_dynamic = {0,0,0,0},
	kus_cpuplayers_norushtime10 = {0,0,0,0},
	kus_cpuplayers_norushtime15 = {0,0,0,0},
	kus_cpuplayers_norushtime5 = {0,0,0,0},
	kus_resourcecollectionrateexpert = {0,0,1,1},
	kus_resourcecollectionratehard = {0,0,1,1},
	kus_weapondamageupgrade125 = {0,0,0,0},
	kus_weapondamageupgrade150 = {0,0,0,0},
	kus_weapondamageupgrade175 = {0,0,0,0},
	kus_weapondamageupgrade200 = {0,0,0,0},
	kus_corvettechassis = {0,0,0,1},
	kus_corvettedrive = {0,0,0,1},
	kus_fasttrackingturrets = {0,0,0,1},
	kus_heavycorvetteupgrade = {0,0,0,1},
	kus_minelayingtech = {0,0,0,1},
	kus_cloakgenerator = {0,0,0,1},
	kus_gravitygenerator = {0,0,0,1},
	kus_hyperspacedamagereductionupgrade = {0,0,0,0},
	kus_hyperspacedamagereductionupgradehc = {0,0,0,1},
	kus_proximitysensor = {0,0,0,1},
	kus_sensorarray = {0,0,0,1},
	kus_sgmcapitalhealth = {0,0,0,0},
	kus_sgmfrigatehealth = {0,0,0,0},
	kus_sgmgravwellhealth = {0,0,0,1},
	kus_cloakedfighter = {0,0,0,1},
	kus_defendersubsystems = {0,0,0,1},
	kus_fighterchassis = {0,0,0,1},
	kus_fighterdrive = {0,0,0,1},
	kus_plasmabomblauncher = {0,0,0,1},
	kus_capitalshipchassis = {0,0,0,1},
	kus_capitalshipdrive = {0,0,0,1},
	kus_dronetechnology = {0,0,0,1},
	kus_ioncannons = {0,0,0,1},
	kus_guidedmissiles = {0,0,0,1},
	kus_heavyguns = {0,0,0,1},
	kus_supercapitalshipdrive = {0,0,1,1},
	kus_superheavychassis = {0,0,0,1},
	tai_allshipbuildspeed = {0,0,0,0},
	tai_allshipbuildspeedexpert = {0,0,0,0},
	tai_allshipbuildspeedhard = {0,0,0,0},
	tai_cpuplayers_aggressive = {0,0,0,0},
	tai_cpuplayers_defensive = {0,0,0,0},
	tai_cpuplayers_dynamic = {0,0,0,0},
	tai_cpuplayers_norushtime10 = {0,0,0,0},
	tai_cpuplayers_norushtime15 = {0,0,0,0},
	tai_cpuplayers_norushtime5 = {0,0,0,0},
	tai_resourcecollectionrateexpert = {0,0,1,1},
	tai_resourcecollectionratehard = {0,0,1,1},
	tai_weapondamageupgrade125 = {0,0,0,0},
	tai_weapondamageupgrade150 = {0,0,0,0},
	tai_weapondamageupgrade175 = {0,0,0,0},
	tai_weapondamageupgrade200 = {0,0,0,0},
	tai_corvettechassis = {0,0,0,1},
	tai_corvettedrive = {0,0,0,1},
	tai_fasttrackingturrets = {0,0,0,1},
	tai_heavycorvetteupgrade = {0,0,0,1},
	tai_minelayingtech = {0,0,0,1},
	tai_cloakgenerator = {0,0,0,1},
	tai_gravitygenerator = {0,0,0,1},
	tai_hyperspacedamagereductionupgrade = {0,0,0,0},
	tai_hyperspacedamagereductionupgradehc = {0,0,0,1},
	tai_proximitysensor = {0,0,0,1},
	tai_sensorarray = {0,0,0,1},
	tai_sgmcapitalhealth = {0,0,0,0},
	tai_sgmfrigatehealth = {0,0,0,0},
	tai_sgmgravwellhealth = {0,0,0,1},
	tai_defendersubsystems = {0,0,0,1},
	tai_defensefighter = {0,0,0,1},
	tai_fighterchassis = {0,0,0,1},
	tai_fighterdrive = {0,0,0,1},
	tai_plasmabomblauncher = {0,0,0,1},
	tai_capitalshipchassis = {0,0,0,1},
	tai_capitalshipdrive = {0,0,0,1},
	tai_defensefield = {0,0,0,1},
	tai_ioncannons = {0,0,0,1},
	tai_guidedmissiles = {0,0,0,1},
	tai_heavyguns = {0,0,0,1},
	tai_supercapitalshipdrive = {0,0,1,1},
	tai_superheavychassis = {0,0,0,1},
}

VariantBuildBool =
{
	hgn_battlecruiser = {0,0,0,1},
	hgn_destroyer = {0,0,0,1},
	hgn_carrier = {1,1,1,1},
	hgn_shipyard = {1,1,1,1},
	hgn_mothership = {1,1,1,1},
	hgn_c_module_cloakgenerator = {0,1,0,0},
	hgn_c_module_firecontrol = {0,1,0,0},
	hgn_c_module_hyperspace = {0,1,0,0},
	hgn_c_module_hyperspaceinhibitor = {0,1,0,0},
	hgn_c_module_research = {0,0,0,0},
	hgn_c_module_researchadvanced = {0,0,0,0},
	hgn_c_sensors_advancedarray = {0,0,0,0},
	hgn_c_sensors_detectcloaked = {0,0,0,0},
	hgn_c_sensors_detecthyperspace = {0,0,0,0},
	hgn_assaultcorvette = {0,0,0,1},
	hgn_minelayercorvette = {0,0,0,1},
	hgn_pulsarcorvette = {0,0,0,1},
	hgn_attackbomber = {0,0,0,1},
	hgn_interceptor = {0,0,0,1},
	hgn_scout = {0,0,0,1},
	hgn_assaultfrigate = {0,0,0,1},
	hgn_defensefieldfrigate = {0,0,0,1},
	hgn_ioncannonfrigate = {0,0,0,1},
	hgn_marinefrigate = {0,0,0,1},
	hgn_torpedofrigate = {0,0,0,1},
	hgn_ms_module_cloakgenerator = {0,1,0,0},
	hgn_ms_module_firecontrol = {0,1,0,0},
	hgn_ms_module_hyperspace = {0,1,0,0},
	hgn_ms_module_hyperspaceinhibitor = {0,1,0,0},
	hgn_ms_module_research = {0,0,0,0},
	hgn_ms_module_researchadvanced = {0,0,0,0},
	hgn_ms_sensors_advancedarray = {0,0,0,0},
	hgn_ms_sensors_detectcloaked = {0,0,0,0},
	hgn_ms_sensors_detecthyperspace = {0,0,0,0},
	hgn_gunturret = {0,0,0,1},
	hgn_ionturret = {0,0,0,1},
	hgn_c_module_platformcontrol = {0,0,0,0},
	hgn_c_production_corvette = {0,1,0,0},
	hgn_c_production_fighter = {0,0,0,0},
	hgn_c_production_frigate = {0,1,0,0},
	hgn_ms_module_platformcontrol = {0,0,0,0},
	hgn_ms_production_capship = {0,0,0,0},
	hgn_ms_production_corvette = {0,1,0,0},
	hgn_ms_production_fighter = {0,0,0,0},
	hgn_ms_production_frigate = {0,1,0,0},
	hgn_sy_production_capship = {0,0,0,0},
	hgn_shipyard_elohim = {1,1,1,1},
	hgn_shipyard_spg = {1,1,1,1},
	kpr_mover = {0,0,0,1},
	hgn_ms_production_corvettemover = {0,0,0,0},
	hgn_ecmprobe = {0,0,0,1},
	hgn_probe = {0,0,0,1},
	hgn_proximitysensor = {0,0,0,1},
	hgn_resourcecollector = {0,0,1,1},
	hgn_resourcecontroller = {0,0,1,1},
	vgr_battlecruiser = {0,0,0,1},
	vgr_carrier = {1,1,1,1},
	vgr_destroyer = {0,0,0,1},
	vgr_shipyard = {1,1,1,1},
	vgr_mothership = {1,1,1,1},
	vgr_mothership_makaan = {1,1,1,1},
	vgr_commandcorvette = {0,0,0,1},
	vgr_lasercorvette = {0,0,0,1},
	vgr_minelayercorvette = {0,0,0,1},
	vgr_missilecorvette = {0,0,0,1},
	vgr_bomber = {0,0,0,1},
	vgr_interceptor = {0,0,0,1},
	vgr_lancefighter = {0,0,0,1},
	vgr_scout = {0,0,0,1},
	vgr_assaultfrigate = {0,0,0,1},
	vgr_heavymissilefrigate = {0,0,0,1},
	vgr_infiltratorfrigate = {0,0,0,1},
	vgr_weaponplatform_gun = {0,0,0,1},
	vgr_weaponplatform_missile = {0,0,0,1},
	vgr_planetkillermissile = {0,0,0,0},
	vgr_c_module_cloakgenerator = {0,1,0,0},
	vgr_c_module_firecontrol = {0,1,0,0},
	vgr_c_module_hyperspace = {0,0,0,0},
	vgr_c_module_hyperspaceinhibitor = {0,1,0,0},
	vgr_c_module_platformcontrol = {0,0,0,0},
	vgr_c_module_research = {0,0,0,0},
	vgr_c_production_corvette = {1,0,0,0},
	vgr_c_production_fighter = {1,0,0,0},
	vgr_c_production_frigate = {0,0,0,0},
	vgr_c_sensors_advancedarray = {0,0,0,0},
	vgr_c_sensors_detecthyperspace = {0,0,0,0},
	vgr_ms_module_cloakgenerator = {0,1,0,0},
	vgr_ms_module_firecontrol = {0,1,0,0},
	vgr_ms_module_hyperspace = {0,0,0,0},
	vgr_ms_module_hyperspaceinhibitor = {0,1,0,0},
	vgr_ms_module_platformcontrol = {0,0,0,0},
	vgr_ms_module_research = {0,0,0,0},
	vgr_ms_production_capship = {0,0,0,0},
	vgr_ms_production_corvette = {0,0,0,0},
	vgr_ms_production_fighter = {0,0,0,0},
	vgr_ms_production_frigate = {0,0,0,0},
	vgr_ms_sensors_advancedarray = {0,0,0,0},
	vgr_ms_sensors_detecthyperspace = {0,0,0,0},
	vgr_sy_production_capship = {0,0,0,0},
	vgr_hyperspace_platform = {0,0,0,1},
	vgr_probe = {0,0,0,1},
	vgr_probe_ecm = {0,0,0,1},
	vgr_probe_prox = {0,0,0,1},
	vgr_resourcecollector = {0,0,1,1},
	vgr_resourcecontroller = {0,0,1,1},
	kus_carrier = {0,0,1,1},
	kus_mothership = {1,0,1,1},
	kus_destroyer = {0,0,0,1},
	kus_heavycruiser = {0,0,0,1},
	kus_missiledestroyer = {0,0,0,1},
	kus_heavycorvette = {0,0,0,1},
	kus_lightcorvette = {0,0,0,1},
	kus_minelayercorvette = {0,0,0,1},
	kus_multiguncorvette = {0,0,0,1},
	kus_repaircorvette = {0,0,0,1},
	kus_salvagecorvette = {0,0,0,1},
	kus_attackbomber = {0,0,0,1},
	kus_cloakedfighter = {0,0,0,1},
	kus_defender = {0,0,0,1},
	kus_interceptor = {0,0,0,1},
	kus_scout = {0,0,0,1},
	kus_assaultfrigate = {0,0,0,1},
	kus_drone0 = {0,0,0,0},
	kus_drone1 = {0,0,0,0},
	kus_drone10 = {0,0,0,0},
	kus_drone11 = {0,0,0,0},
	kus_drone12 = {0,0,0,0},
	kus_drone13 = {0,0,0,0},
	kus_drone2 = {0,0,0,0},
	kus_drone3 = {0,0,0,0},
	kus_drone4 = {0,0,0,0},
	kus_drone5 = {0,0,0,0},
	kus_drone6 = {0,0,0,0},
	kus_drone7 = {0,0,0,0},
	kus_drone8 = {0,0,0,0},
	kus_drone9 = {0,0,0,0},
	kus_dronefrigate = {0,0,0,1},
	kus_ioncannonfrigate = {0,0,0,1},
	kus_supportfrigate = {0,0,0,1},
	hw1_production_capital = {0,0,0,0},
	hw1_production_corvette = {0,0,0,0},
	hw1_production_fighter = {0,0,0,0},
	hw1_production_frigate = {0,0,0,0},
	kus_cloakgenerator = {0,0,0,1},
	kus_gravwellgenerator = {0,0,0,1},
	kus_probe = {0,0,0,1},
	kus_proximitysensor = {0,0,0,1},
	kus_researchship = {0,0,0,0},
	kus_researchship_1 = {0,0,0,0},
	kus_researchship_2 = {0,0,0,0},
	kus_researchship_3 = {0,0,0,0},
	kus_researchship_4 = {0,0,0,0},
	kus_researchship_5 = {0,0,0,0},
	kus_resourcecollector = {0,0,1,1},
	kus_resourcecontroller = {0,0,1,1},
	kus_sensorarray = {0,0,0,1},
	tai_carrier = {0,0,1,1},
	tai_mothership = {1,0,1,1},
	tai_destroyer = {0,0,0,1},
	tai_heavycruiser = {0,0,0,1},
	tai_missiledestroyer = {0,0,0,1},
	tai_heavycorvette = {0,0,0,1},
	tai_lightcorvette = {0,0,0,1},
	tai_minelayercorvette = {0,0,0,1},
	tai_multiguncorvette = {0,0,0,1},
	tai_repaircorvette = {0,0,0,1},
	tai_salvagecorvette = {0,0,0,1},
	tai_attackbomber = {0,0,0,1},
	tai_defender = {0,0,0,1},
	tai_defensefighter = {0,0,0,1},
	tai_interceptor = {0,0,0,1},
	tai_scout = {0,0,0,1},
	tai_assaultfrigate = {0,0,0,1},
	tai_fieldfrigate = {0,0,0,1},
	tai_ioncannonfrigate = {0,0,0,1},
	tai_supportfrigate = {0,0,0,1},
	hw1_production_capital = {0,0,0,0},
	hw1_production_corvette = {0,0,0,0},
	hw1_production_fighter = {0,0,0,0},
	hw1_production_frigate = {0,0,0,0},
	tai_cloakgenerator = {0,0,0,1},
	tai_gravwellgenerator = {0,0,0,1},
	tai_probe = {0,0,0,1},
	tai_proximitysensor = {0,0,0,1},
	tai_researchship = {0,0,0,0},
	tai_researchship_1 = {0,0,0,0},
	tai_researchship_2 = {0,0,0,0},
	tai_researchship_3 = {0,0,0,0},
	tai_researchship_4 = {0,0,0,0},
	tai_researchship_5 = {0,0,0,0},
	tai_resourcecollector = {0,0,1,1},
	tai_resourcecontroller = {0,0,1,1},
	tai_sensorarray = {0,0,0,1},
}

VariantResearchInt =
{
	hgn_attackbomberimprovedbombs =
	{
		HGN_ATTACKBOMBERIMPROVEDBOMBS_HYP0,
		HGN_ATTACKBOMBERIMPROVEDBOMBS_HYP1,
	},
	hgn_defensefieldfrigateshield =
	{
		HGN_DEFENSEFIELDFRIGATESHIELD_HYP0,
		HGN_DEFENSEFIELDFRIGATESHIELD_HYP1,
	},
	hgn_improvedtorpedo =
	{
		HGN_IMPROVEDTORPEDO_HYP0,
		HGN_IMPROVEDTORPEDO_HYP1,
	},
	hgn_repairability =
	{
		HGN_REPAIRABILITY_RES0_HYP0,
		HGN_REPAIRABILITY_RES1_HYP0,
		HGN_REPAIRABILITY_RES0_HYP1,
		HGN_REPAIRABILITY_RES1_HYP1,
	},
	hgn_scoutempability =
	{
		HGN_SCOUTEMPABILITY_HYP0,
		HGN_SCOUTEMPABILITY_HYP1,
	},
	hgn_scoutpingability =
	{
		HGN_SCOUTPINGABILITY_HYP0,
		HGN_SCOUTPINGABILITY_HYP1,
	},
	hgn_allshipbuildspeed =
	{
		HGN_ALLSHIPBUILDSPEED,
	},
	hgn_allshipbuildspeedexpert =
	{
		HGN_ALLSHIPBUILDSPEEDEXPERT,
	},
	hgn_allshipbuildspeedhard =
	{
		HGN_ALLSHIPBUILDSPEEDHARD,
	},
	hgn_cpuplayers_aggressive =
	{
		HGN_CPUPLAYERS_AGGRESSIVE,
	},
	hgn_cpuplayers_defensive =
	{
		HGN_CPUPLAYERS_DEFENSIVE,
	},
	hgn_cpuplayers_dynamic =
	{
		HGN_CPUPLAYERS_DYNAMIC,
	},
	hgn_cpuplayers_norushtime10 =
	{
		HGN_CPUPLAYERS_NORUSHTIME10,
	},
	hgn_cpuplayers_norushtime15 =
	{
		HGN_CPUPLAYERS_NORUSHTIME15,
	},
	hgn_cpuplayers_norushtime5 =
	{
		HGN_CPUPLAYERS_NORUSHTIME5,
	},
	hgn_resourcecollectionrateexpert =
	{
		HGN_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP0,
		HGN_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP0,
		HGN_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP1,
		HGN_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP1,
	},
	hgn_resourcecollectionratehard =
	{
		HGN_RESOURCECOLLECTIONRATEHARD_RES0_HYP0,
		HGN_RESOURCECOLLECTIONRATEHARD_RES1_HYP0,
		HGN_RESOURCECOLLECTIONRATEHARD_RES0_HYP1,
		HGN_RESOURCECOLLECTIONRATEHARD_RES1_HYP1,
	},
	hgn_weapondamageupgrade125 =
	{
		HGN_WEAPONDAMAGEUPGRADE125,
	},
	hgn_weapondamageupgrade150 =
	{
		HGN_WEAPONDAMAGEUPGRADE150,
	},
	hgn_weapondamageupgrade175 =
	{
		HGN_WEAPONDAMAGEUPGRADE175,
	},
	hgn_weapondamageupgrade200 =
	{
		HGN_WEAPONDAMAGEUPGRADE200,
	},
	hgn_battlecruiserhealthupgrade1 =
	{
		HGN_BATTLECRUISERHEALTHUPGRADE1_HYP0,
		HGN_BATTLECRUISERHEALTHUPGRADE1_HYP1,
	},
	hgn_battlecruisermaxspeedupgrade1 =
	{
		HGN_BATTLECRUISERMAXSPEEDUPGRADE1_HYP0,
		HGN_BATTLECRUISERMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_carrierbuildspeedupgrade1 =
	{
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_carrierhealthupgrade1 =
	{
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_CARRIERHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_carriermaxspeedupgrade1 =
	{
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_CARRIERMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_assaultcorvettehealthupgrade1 =
	{
		HGN_ASSAULTCORVETTEHEALTHUPGRADE1_HYP0,
		HGN_ASSAULTCORVETTEHEALTHUPGRADE1_HYP1,
	},
	hgn_pulsarcorvettehealthupgrade1 =
	{
		HGN_PULSARCORVETTEHEALTHUPGRADE1_HYP0,
		HGN_PULSARCORVETTEHEALTHUPGRADE1_HYP1,
	},
	hgn_assaultcorvettemaxspeedupgrade1 =
	{
		HGN_ASSAULTCORVETTEMAXSPEEDUPGRADE1_HYP0,
		HGN_ASSAULTCORVETTEMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_pulsarcorvettemaxspeedupgrade1 =
	{
		HGN_PULSARCORVETTEMAXSPEEDUPGRADE1_HYP0,
		HGN_PULSARCORVETTEMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_battlecruiserionweapons =
	{
		HGN_BATTLECRUISERIONWEAPONS_HYP0,
		HGN_BATTLECRUISERIONWEAPONS_HYP1,
	},
	hgn_destroyertech =
	{
		HGN_DESTROYERTECH_HYP0,
		HGN_DESTROYERTECH_HYP1,
	},
	hgn_ecmprobe =
	{
		HGN_ECMPROBE_HYP0,
		HGN_ECMPROBE_HYP1,
	},
	hgn_graviticattractionmines =
	{
		HGN_GRAVITICATTRACTIONMINES_HYP0,
		HGN_GRAVITICATTRACTIONMINES_HYP1,
	},
	hgn_hyperspacedamagereductionupgrade =
	{
		HGN_HYPERSPACEDAMAGEREDUCTIONUPGRADE,
	},
	hgn_instaadvancedfrigatetech =
	{
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH0_RES0_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH0_RES0_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH0_RES1_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH0_RES1_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH0_RES0_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH0_RES0_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH0_RES1_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH0_RES1_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH1_RES0_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH1_RES0_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH1_RES1_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH1_RES1_HYP0,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH1_RES0_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH1_RES0_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR0_RCH1_RES1_HYP1,
		HGN_INSTAADVANCEDFRIGATETECH_CAR1_RCH1_RES1_HYP1,
	},
	hgn_platformionweapons =
	{
		HGN_PLATFORMIONWEAPONS_HYP0,
		HGN_PLATFORMIONWEAPONS_HYP1,
	},
	hgn_sensdisprobe =
	{
		HGN_SENSDISPROBE_HYP0,
		HGN_SENSDISPROBE_HYP1,
	},
	hgn_destroyerhealthupgrade1 =
	{
		HGN_DESTROYERHEALTHUPGRADE1_HYP0,
		HGN_DESTROYERHEALTHUPGRADE1_HYP1,
	},
	hgn_destroyermaxspeedupgrade1 =
	{
		HGN_DESTROYERMAXSPEEDUPGRADE1_HYP0,
		HGN_DESTROYERMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_sgmcapitalhealth =
	{
		HGN_SGMCAPITALHEALTH_CAR0_RCH0_RES0_HYP0,
		HGN_SGMCAPITALHEALTH_CAR1_RCH0_RES0_HYP0,
		HGN_SGMCAPITALHEALTH_CAR0_RCH0_RES1_HYP0,
		HGN_SGMCAPITALHEALTH_CAR1_RCH0_RES1_HYP0,
		HGN_SGMCAPITALHEALTH_CAR0_RCH0_RES0_HYP1,
		HGN_SGMCAPITALHEALTH_CAR1_RCH0_RES0_HYP1,
		HGN_SGMCAPITALHEALTH_CAR0_RCH0_RES1_HYP1,
		HGN_SGMCAPITALHEALTH_CAR1_RCH0_RES1_HYP1,
		HGN_SGMCAPITALHEALTH_CAR0_RCH1_RES0_HYP0,
		HGN_SGMCAPITALHEALTH_CAR1_RCH1_RES0_HYP0,
		HGN_SGMCAPITALHEALTH_CAR0_RCH1_RES1_HYP0,
		HGN_SGMCAPITALHEALTH_CAR1_RCH1_RES1_HYP0,
		HGN_SGMCAPITALHEALTH_CAR0_RCH1_RES0_HYP1,
		HGN_SGMCAPITALHEALTH_CAR1_RCH1_RES0_HYP1,
		HGN_SGMCAPITALHEALTH_CAR0_RCH1_RES1_HYP1,
		HGN_SGMCAPITALHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sgmcarrierhealth =
	{
		HGN_SGMCARRIERHEALTH_CAR0_RCH0_RES0_HYP0,
		HGN_SGMCARRIERHEALTH_CAR1_RCH0_RES0_HYP0,
		HGN_SGMCARRIERHEALTH_CAR0_RCH0_RES1_HYP0,
		HGN_SGMCARRIERHEALTH_CAR1_RCH0_RES1_HYP0,
		HGN_SGMCARRIERHEALTH_CAR0_RCH0_RES0_HYP1,
		HGN_SGMCARRIERHEALTH_CAR1_RCH0_RES0_HYP1,
		HGN_SGMCARRIERHEALTH_CAR0_RCH0_RES1_HYP1,
		HGN_SGMCARRIERHEALTH_CAR1_RCH0_RES1_HYP1,
		HGN_SGMCARRIERHEALTH_CAR0_RCH1_RES0_HYP0,
		HGN_SGMCARRIERHEALTH_CAR1_RCH1_RES0_HYP0,
		HGN_SGMCARRIERHEALTH_CAR0_RCH1_RES1_HYP0,
		HGN_SGMCARRIERHEALTH_CAR1_RCH1_RES1_HYP0,
		HGN_SGMCARRIERHEALTH_CAR0_RCH1_RES0_HYP1,
		HGN_SGMCARRIERHEALTH_CAR1_RCH1_RES0_HYP1,
		HGN_SGMCARRIERHEALTH_CAR0_RCH1_RES1_HYP1,
		HGN_SGMCARRIERHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sgmfrigatehealth =
	{
		HGN_SGMFRIGATEHEALTH,
	},
	hgn_sgmshipyardhealth =
	{
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP0,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP1,
		HGN_SGMSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	hgn_attackbombermaxspeedupgrade1 =
	{
		HGN_ATTACKBOMBERMAXSPEEDUPGRADE1_HYP0,
		HGN_ATTACKBOMBERMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_interceptormaxspeedupgrade1 =
	{
		HGN_INTERCEPTORMAXSPEEDUPGRADE1_HYP0,
		HGN_INTERCEPTORMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_assaultfrigatehealthupgrade1 =
	{
		HGN_ASSAULTFRIGATEHEALTHUPGRADE1_HYP0,
		HGN_ASSAULTFRIGATEHEALTHUPGRADE1_HYP1,
	},
	hgn_ioncannonfrigatehealthupgrade1 =
	{
		HGN_IONCANNONFRIGATEHEALTHUPGRADE1_HYP0,
		HGN_IONCANNONFRIGATEHEALTHUPGRADE1_HYP1,
	},
	hgn_torpedofrigatehealthupgrade1 =
	{
		HGN_TORPEDOFRIGATEHEALTHUPGRADE1_HYP0,
		HGN_TORPEDOFRIGATEHEALTHUPGRADE1_HYP1,
	},
	hgn_assaultfrigatemaxspeedupgrade1 =
	{
		HGN_ASSAULTFRIGATEMAXSPEEDUPGRADE1_HYP0,
		HGN_ASSAULTFRIGATEMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_ioncannonfrigatemaxspeedupgrade1 =
	{
		HGN_IONCANNONFRIGATEMAXSPEEDUPGRADE1_HYP0,
		HGN_IONCANNONFRIGATEMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_torpedofrigatemaxspeedupgrade1 =
	{
		HGN_TORPEDOFRIGATEMAXSPEEDUPGRADE1_HYP0,
		HGN_TORPEDOFRIGATEMAXSPEEDUPGRADE1_HYP1,
	},
	hgn_hyperspacecostupgrade1 =
	{
		HGN_HYPERSPACECOSTUPGRADE1,
	},
	hgn_hyperspacecostupgrade2 =
	{
		HGN_HYPERSPACECOSTUPGRADE2,
	},
	hgn_mothershipbuildspeedupgrade1 =
	{
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_mothershiphealthupgrade1 =
	{
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_MOTHERSHIPHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_mothershipmaxspeedupgrade1 =
	{
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_MOTHERSHIPMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_gunturrethealthupgrade1 =
	{
		HGN_GUNTURRETHEALTHUPGRADE1_HYP0,
		HGN_GUNTURRETHEALTHUPGRADE1_HYP1,
	},
	hgn_ionturrethealthupgrade1 =
	{
		HGN_IONTURRETHEALTHUPGRADE1_HYP0,
		HGN_IONTURRETHEALTHUPGRADE1_HYP1,
	},
	hgn_shipyardbuildspeedupgrade1 =
	{
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardbuildspeedupgrade1_elohim =
	{
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardbuildspeedupgrade1_spg =
	{
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDBUILDSPEEDUPGRADE1_SPG_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardhealthupgrade1 =
	{
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardhealthupgrade1_elohim =
	{
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardhealthupgrade1_spg =
	{
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDHEALTHUPGRADE1_SPG_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardmaxspeedupgrade1 =
	{
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardmaxspeedupgrade1_elohim =
	{
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_ELOHIM_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyardmaxspeedupgrade1_spg =
	{
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARDMAXSPEEDUPGRADE1_SPG_CAR1_RCH1_RES1_HYP1,
	},
	hgn_assaultcorvetteeliteweaponupgrade =
	{
		HGN_ASSAULTCORVETTEELITEWEAPONUPGRADE_HYP0,
		HGN_ASSAULTCORVETTEELITEWEAPONUPGRADE_HYP1,
	},
	hgn_attackbombereliteweaponupgrade =
	{
		HGN_ATTACKBOMBERELITEWEAPONUPGRADE_HYP0,
		HGN_ATTACKBOMBERELITEWEAPONUPGRADE_HYP1,
	},
	hgn_attackdroidhealthupgradespgame_high =
	{
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_HIGH_HYP0,
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_HIGH_HYP1,
	},
	hgn_attackdroidhealthupgradespgame_low =
	{
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_LOW_HYP0,
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_LOW_HYP1,
	},
	hgn_attackdroidhealthupgradespgame_med =
	{
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_MED_HYP0,
		HGN_ATTACKDROIDHEALTHUPGRADESPGAME_MED_HYP1,
	},
	hgn_attackdroidweaponupgradespgame_high =
	{
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_HIGH_HYP0,
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_HIGH_HYP1,
	},
	hgn_attackdroidweaponupgradespgame_low =
	{
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_LOW_HYP0,
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_LOW_HYP1,
	},
	hgn_attackdroidweaponupgradespgame_med =
	{
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_MED_HYP0,
		HGN_ATTACKDROIDWEAPONUPGRADESPGAME_MED_HYP1,
	},
	hgn_damagemovertech =
	{
		HGN_DAMAGEMOVERTECH_CAR0_RCH0_RES0_HYP0,
		HGN_DAMAGEMOVERTECH_CAR1_RCH0_RES0_HYP0,
		HGN_DAMAGEMOVERTECH_CAR0_RCH0_RES1_HYP0,
		HGN_DAMAGEMOVERTECH_CAR1_RCH0_RES1_HYP0,
		HGN_DAMAGEMOVERTECH_CAR0_RCH0_RES0_HYP1,
		HGN_DAMAGEMOVERTECH_CAR1_RCH0_RES0_HYP1,
		HGN_DAMAGEMOVERTECH_CAR0_RCH0_RES1_HYP1,
		HGN_DAMAGEMOVERTECH_CAR1_RCH0_RES1_HYP1,
		HGN_DAMAGEMOVERTECH_CAR0_RCH1_RES0_HYP0,
		HGN_DAMAGEMOVERTECH_CAR1_RCH1_RES0_HYP0,
		HGN_DAMAGEMOVERTECH_CAR0_RCH1_RES1_HYP0,
		HGN_DAMAGEMOVERTECH_CAR1_RCH1_RES1_HYP0,
		HGN_DAMAGEMOVERTECH_CAR0_RCH1_RES0_HYP1,
		HGN_DAMAGEMOVERTECH_CAR1_RCH1_RES0_HYP1,
		HGN_DAMAGEMOVERTECH_CAR0_RCH1_RES1_HYP1,
		HGN_DAMAGEMOVERTECH_CAR1_RCH1_RES1_HYP1,
	},
	hgn_frigatehealthupgradespgame =
	{
		HGN_FRIGATEHEALTHUPGRADESPGAME,
	},
	hgn_keeperhealthupgradespgame_high =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_HIGH_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_HIGH_HYP1,
	},
	hgn_keeperhealthupgradespgame_low =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_LOW_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_LOW_HYP1,
	},
	hgn_keeperhealthupgradespgame_m10_lvl_1 =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_1_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_1_HYP1,
	},
	hgn_keeperhealthupgradespgame_m10_lvl_2 =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_2_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_2_HYP1,
	},
	hgn_keeperhealthupgradespgame_m10_lvl_3 =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_3_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_M10_LVL_3_HYP1,
	},
	hgn_keeperhealthupgradespgame_med =
	{
		HGN_KEEPERHEALTHUPGRADESPGAME_MED_HYP0,
		HGN_KEEPERHEALTHUPGRADESPGAME_MED_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_1 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_1_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_1_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_2 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_2_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_2_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_3 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_3_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_3_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_4 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_4_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_4_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_5 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_5_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_5_HYP1,
	},
	hgn_keeperweaponupgradespgame_m10_lvl_6 =
	{
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_6_HYP0,
		HGN_KEEPERWEAPONUPGRADESPGAME_M10_LVL_6_HYP1,
	},
	hgn_moverhealthdowngrade =
	{
		HGN_MOVERHEALTHDOWNGRADE_HYP0,
		HGN_MOVERHEALTHDOWNGRADE_HYP1,
	},
	hgn_moverhealthupgrade =
	{
		HGN_MOVERHEALTHUPGRADE_HYP0,
		HGN_MOVERHEALTHUPGRADE_HYP1,
	},
	hgn_radiationdefensefield =
	{
		HGN_RADIATIONDEFENSEFIELD_HYP0,
		HGN_RADIATIONDEFENSEFIELD_HYP1,
	},
	hgn_sensorsbacktonormal1 =
	{
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sensorsbacktonormal2 =
	{
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL2_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sensorsbacktonormal3 =
	{
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSBACKTONORMAL3_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sensorsdowngrade1 =
	{
		HGN_SENSORSDOWNGRADE1_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSDOWNGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sensorsdowngrade2 =
	{
		HGN_SENSORSDOWNGRADE2_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSDOWNGRADE2_CAR1_RCH1_RES1_HYP1,
	},
	hgn_sensorsdowngrade3 =
	{
		HGN_SENSORSDOWNGRADE3_CAR0_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH0_RES0_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH0_RES1_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH0_RES0_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH0_RES1_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH1_RES0_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH1_RES1_HYP0,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH1_RES0_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR0_RCH1_RES1_HYP1,
		HGN_SENSORSDOWNGRADE3_CAR1_RCH1_RES1_HYP1,
	},
	hgn_resourcecollectorhealthupgrade1 =
	{
		HGN_RESOURCECOLLECTORHEALTHUPGRADE1_RES0_HYP0,
		HGN_RESOURCECOLLECTORHEALTHUPGRADE1_RES1_HYP0,
		HGN_RESOURCECOLLECTORHEALTHUPGRADE1_RES0_HYP1,
		HGN_RESOURCECOLLECTORHEALTHUPGRADE1_RES1_HYP1,
	},
	hgn_resourcecontrollerhealthupgrade1 =
	{
		HGN_RESOURCECONTROLLERHEALTHUPGRADE1_RES0_HYP0,
		HGN_RESOURCECONTROLLERHEALTHUPGRADE1_RES1_HYP0,
		HGN_RESOURCECONTROLLERHEALTHUPGRADE1_RES0_HYP1,
		HGN_RESOURCECONTROLLERHEALTHUPGRADE1_RES1_HYP1,
	},
	kus_allshipbuildspeed =
	{
		KUS_ALLSHIPBUILDSPEED,
	},
	kus_allshipbuildspeedexpert =
	{
		KUS_ALLSHIPBUILDSPEEDEXPERT,
	},
	kus_allshipbuildspeedhard =
	{
		KUS_ALLSHIPBUILDSPEEDHARD,
	},
	kus_cpuplayers_aggressive =
	{
		KUS_CPUPLAYERS_AGGRESSIVE,
	},
	kus_cpuplayers_defensive =
	{
		KUS_CPUPLAYERS_DEFENSIVE,
	},
	kus_cpuplayers_dynamic =
	{
		KUS_CPUPLAYERS_DYNAMIC,
	},
	kus_cpuplayers_norushtime10 =
	{
		KUS_CPUPLAYERS_NORUSHTIME10,
	},
	kus_cpuplayers_norushtime15 =
	{
		KUS_CPUPLAYERS_NORUSHTIME15,
	},
	kus_cpuplayers_norushtime5 =
	{
		KUS_CPUPLAYERS_NORUSHTIME5,
	},
	kus_resourcecollectionrateexpert =
	{
		KUS_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP0,
		KUS_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP0,
		KUS_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP1,
		KUS_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP1,
	},
	kus_resourcecollectionratehard =
	{
		KUS_RESOURCECOLLECTIONRATEHARD_RES0_HYP0,
		KUS_RESOURCECOLLECTIONRATEHARD_RES1_HYP0,
		KUS_RESOURCECOLLECTIONRATEHARD_RES0_HYP1,
		KUS_RESOURCECOLLECTIONRATEHARD_RES1_HYP1,
	},
	kus_weapondamageupgrade125 =
	{
		KUS_WEAPONDAMAGEUPGRADE125,
	},
	kus_weapondamageupgrade150 =
	{
		KUS_WEAPONDAMAGEUPGRADE150,
	},
	kus_weapondamageupgrade175 =
	{
		KUS_WEAPONDAMAGEUPGRADE175,
	},
	kus_weapondamageupgrade200 =
	{
		KUS_WEAPONDAMAGEUPGRADE200,
	},
	kus_corvettechassis =
	{
		KUS_CORVETTECHASSIS_HYP0,
		KUS_CORVETTECHASSIS_HYP1,
	},
	kus_corvettedrive =
	{
		KUS_CORVETTEDRIVE_HYP0,
		KUS_CORVETTEDRIVE_HYP1,
	},
	kus_fasttrackingturrets =
	{
		KUS_FASTTRACKINGTURRETS_HYP0,
		KUS_FASTTRACKINGTURRETS_HYP1,
	},
	kus_heavycorvetteupgrade =
	{
		KUS_HEAVYCORVETTEUPGRADE_HYP0,
		KUS_HEAVYCORVETTEUPGRADE_HYP1,
	},
	kus_minelayingtech =
	{
		KUS_MINELAYINGTECH_HYP0,
		KUS_MINELAYINGTECH_HYP1,
	},
	kus_cloakgenerator =
	{
		KUS_CLOAKGENERATOR_HYP0,
		KUS_CLOAKGENERATOR_HYP1,
	},
	kus_gravitygenerator =
	{
		KUS_GRAVITYGENERATOR_HYP0,
		KUS_GRAVITYGENERATOR_HYP1,
	},
	kus_hyperspacedamagereductionupgrade =
	{
		KUS_HYPERSPACEDAMAGEREDUCTIONUPGRADE,
	},
	kus_hyperspacedamagereductionupgradehc =
	{
		KUS_HYPERSPACEDAMAGEREDUCTIONUPGRADEHC_HYP0,
		KUS_HYPERSPACEDAMAGEREDUCTIONUPGRADEHC_HYP1,
	},
	kus_proximitysensor =
	{
		KUS_PROXIMITYSENSOR_HYP0,
		KUS_PROXIMITYSENSOR_HYP1,
	},
	kus_sensorarray =
	{
		KUS_SENSORARRAY_HYP0,
		KUS_SENSORARRAY_HYP1,
	},
	kus_sgmcapitalhealth =
	{
		KUS_SGMCAPITALHEALTH,
	},
	kus_sgmfrigatehealth =
	{
		KUS_SGMFRIGATEHEALTH,
	},
	kus_sgmgravwellhealth =
	{
		KUS_SGMGRAVWELLHEALTH_HYP0,
		KUS_SGMGRAVWELLHEALTH_HYP1,
	},
	kus_cloakedfighter =
	{
		KUS_CLOAKEDFIGHTER_HYP0,
		KUS_CLOAKEDFIGHTER_HYP1,
	},
	kus_defendersubsystems =
	{
		KUS_DEFENDERSUBSYSTEMS_HYP0,
		KUS_DEFENDERSUBSYSTEMS_HYP1,
	},
	kus_fighterchassis =
	{
		KUS_FIGHTERCHASSIS_HYP0,
		KUS_FIGHTERCHASSIS_HYP1,
	},
	kus_fighterdrive =
	{
		KUS_FIGHTERDRIVE_HYP0,
		KUS_FIGHTERDRIVE_HYP1,
	},
	kus_plasmabomblauncher =
	{
		KUS_PLASMABOMBLAUNCHER_HYP0,
		KUS_PLASMABOMBLAUNCHER_HYP1,
	},
	kus_capitalshipchassis =
	{
		KUS_CAPITALSHIPCHASSIS_HYP0,
		KUS_CAPITALSHIPCHASSIS_HYP1,
	},
	kus_capitalshipdrive =
	{
		KUS_CAPITALSHIPDRIVE_HYP0,
		KUS_CAPITALSHIPDRIVE_HYP1,
	},
	kus_dronetechnology =
	{
		KUS_DRONETECHNOLOGY_HYP0,
		KUS_DRONETECHNOLOGY_HYP1,
	},
	kus_ioncannons =
	{
		KUS_IONCANNONS_HYP0,
		KUS_IONCANNONS_HYP1,
	},
	kus_guidedmissiles =
	{
		KUS_GUIDEDMISSILES_HYP0,
		KUS_GUIDEDMISSILES_HYP1,
	},
	kus_heavyguns =
	{
		KUS_HEAVYGUNS_HYP0,
		KUS_HEAVYGUNS_HYP1,
	},
	kus_supercapitalshipdrive =
	{
		KUS_SUPERCAPITALSHIPDRIVE_RES0_HYP0,
		KUS_SUPERCAPITALSHIPDRIVE_RES1_HYP0,
		KUS_SUPERCAPITALSHIPDRIVE_RES0_HYP1,
		KUS_SUPERCAPITALSHIPDRIVE_RES1_HYP1,
	},
	kus_superheavychassis =
	{
		KUS_SUPERHEAVYCHASSIS_HYP0,
		KUS_SUPERHEAVYCHASSIS_HYP1,
	},
	tai_allshipbuildspeed =
	{
		TAI_ALLSHIPBUILDSPEED,
	},
	tai_allshipbuildspeedexpert =
	{
		TAI_ALLSHIPBUILDSPEEDEXPERT,
	},
	tai_allshipbuildspeedhard =
	{
		TAI_ALLSHIPBUILDSPEEDHARD,
	},
	tai_cpuplayers_aggressive =
	{
		TAI_CPUPLAYERS_AGGRESSIVE,
	},
	tai_cpuplayers_defensive =
	{
		TAI_CPUPLAYERS_DEFENSIVE,
	},
	tai_cpuplayers_dynamic =
	{
		TAI_CPUPLAYERS_DYNAMIC,
	},
	tai_cpuplayers_norushtime10 =
	{
		TAI_CPUPLAYERS_NORUSHTIME10,
	},
	tai_cpuplayers_norushtime15 =
	{
		TAI_CPUPLAYERS_NORUSHTIME15,
	},
	tai_cpuplayers_norushtime5 =
	{
		TAI_CPUPLAYERS_NORUSHTIME5,
	},
	tai_resourcecollectionrateexpert =
	{
		TAI_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP0,
		TAI_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP0,
		TAI_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP1,
		TAI_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP1,
	},
	tai_resourcecollectionratehard =
	{
		TAI_RESOURCECOLLECTIONRATEHARD_RES0_HYP0,
		TAI_RESOURCECOLLECTIONRATEHARD_RES1_HYP0,
		TAI_RESOURCECOLLECTIONRATEHARD_RES0_HYP1,
		TAI_RESOURCECOLLECTIONRATEHARD_RES1_HYP1,
	},
	tai_weapondamageupgrade125 =
	{
		TAI_WEAPONDAMAGEUPGRADE125,
	},
	tai_weapondamageupgrade150 =
	{
		TAI_WEAPONDAMAGEUPGRADE150,
	},
	tai_weapondamageupgrade175 =
	{
		TAI_WEAPONDAMAGEUPGRADE175,
	},
	tai_weapondamageupgrade200 =
	{
		TAI_WEAPONDAMAGEUPGRADE200,
	},
	tai_corvettechassis =
	{
		TAI_CORVETTECHASSIS_HYP0,
		TAI_CORVETTECHASSIS_HYP1,
	},
	tai_corvettedrive =
	{
		TAI_CORVETTEDRIVE_HYP0,
		TAI_CORVETTEDRIVE_HYP1,
	},
	tai_fasttrackingturrets =
	{
		TAI_FASTTRACKINGTURRETS_HYP0,
		TAI_FASTTRACKINGTURRETS_HYP1,
	},
	tai_heavycorvetteupgrade =
	{
		TAI_HEAVYCORVETTEUPGRADE_HYP0,
		TAI_HEAVYCORVETTEUPGRADE_HYP1,
	},
	tai_minelayingtech =
	{
		TAI_MINELAYINGTECH_HYP0,
		TAI_MINELAYINGTECH_HYP1,
	},
	tai_cloakgenerator =
	{
		TAI_CLOAKGENERATOR_HYP0,
		TAI_CLOAKGENERATOR_HYP1,
	},
	tai_gravitygenerator =
	{
		TAI_GRAVITYGENERATOR_HYP0,
		TAI_GRAVITYGENERATOR_HYP1,
	},
	tai_hyperspacedamagereductionupgrade =
	{
		TAI_HYPERSPACEDAMAGEREDUCTIONUPGRADE,
	},
	tai_hyperspacedamagereductionupgradehc =
	{
		TAI_HYPERSPACEDAMAGEREDUCTIONUPGRADEHC_HYP0,
		TAI_HYPERSPACEDAMAGEREDUCTIONUPGRADEHC_HYP1,
	},
	tai_proximitysensor =
	{
		TAI_PROXIMITYSENSOR_HYP0,
		TAI_PROXIMITYSENSOR_HYP1,
	},
	tai_sensorarray =
	{
		TAI_SENSORARRAY_HYP0,
		TAI_SENSORARRAY_HYP1,
	},
	tai_sgmcapitalhealth =
	{
		TAI_SGMCAPITALHEALTH,
	},
	tai_sgmfrigatehealth =
	{
		TAI_SGMFRIGATEHEALTH,
	},
	tai_sgmgravwellhealth =
	{
		TAI_SGMGRAVWELLHEALTH_HYP0,
		TAI_SGMGRAVWELLHEALTH_HYP1,
	},
	tai_defendersubsystems =
	{
		TAI_DEFENDERSUBSYSTEMS_HYP0,
		TAI_DEFENDERSUBSYSTEMS_HYP1,
	},
	tai_defensefighter =
	{
		TAI_DEFENSEFIGHTER_HYP0,
		TAI_DEFENSEFIGHTER_HYP1,
	},
	tai_fighterchassis =
	{
		TAI_FIGHTERCHASSIS_HYP0,
		TAI_FIGHTERCHASSIS_HYP1,
	},
	tai_fighterdrive =
	{
		TAI_FIGHTERDRIVE_HYP0,
		TAI_FIGHTERDRIVE_HYP1,
	},
	tai_plasmabomblauncher =
	{
		TAI_PLASMABOMBLAUNCHER_HYP0,
		TAI_PLASMABOMBLAUNCHER_HYP1,
	},
	tai_capitalshipchassis =
	{
		TAI_CAPITALSHIPCHASSIS_HYP0,
		TAI_CAPITALSHIPCHASSIS_HYP1,
	},
	tai_capitalshipdrive =
	{
		TAI_CAPITALSHIPDRIVE_HYP0,
		TAI_CAPITALSHIPDRIVE_HYP1,
	},
	tai_defensefield =
	{
		TAI_DEFENSEFIELD_HYP0,
		TAI_DEFENSEFIELD_HYP1,
	},
	tai_ioncannons =
	{
		TAI_IONCANNONS_HYP0,
		TAI_IONCANNONS_HYP1,
	},
	tai_guidedmissiles =
	{
		TAI_GUIDEDMISSILES_HYP0,
		TAI_GUIDEDMISSILES_HYP1,
	},
	tai_heavyguns =
	{
		TAI_HEAVYGUNS_HYP0,
		TAI_HEAVYGUNS_HYP1,
	},
	tai_supercapitalshipdrive =
	{
		TAI_SUPERCAPITALSHIPDRIVE_RES0_HYP0,
		TAI_SUPERCAPITALSHIPDRIVE_RES1_HYP0,
		TAI_SUPERCAPITALSHIPDRIVE_RES0_HYP1,
		TAI_SUPERCAPITALSHIPDRIVE_RES1_HYP1,
	},
	tai_superheavychassis =
	{
		TAI_SUPERHEAVYCHASSIS_HYP0,
		TAI_SUPERHEAVYCHASSIS_HYP1,
	},
	vgr_bomberimprovedbombs =
	{
		VGR_BOMBERIMPROVEDBOMBS_HYP0,
		VGR_BOMBERIMPROVEDBOMBS_HYP1,
	},
	vgr_repairability =
	{
		VGR_REPAIRABILITY_RES0_HYP0,
		VGR_REPAIRABILITY_RES1_HYP0,
		VGR_REPAIRABILITY_RES0_HYP1,
		VGR_REPAIRABILITY_RES1_HYP1,
	},
	vgr_scoutempability =
	{
		VGR_SCOUTEMPABILITY_HYP0,
		VGR_SCOUTEMPABILITY_HYP1,
	},
	vgr_allshipbuildspeed =
	{
		VGR_ALLSHIPBUILDSPEED,
	},
	vgr_allshipbuildspeedexpert =
	{
		VGR_ALLSHIPBUILDSPEEDEXPERT,
	},
	vgr_allshipbuildspeedhard =
	{
		VGR_ALLSHIPBUILDSPEEDHARD,
	},
	vgr_cpuplayers_aggressive =
	{
		VGR_CPUPLAYERS_AGGRESSIVE,
	},
	vgr_cpuplayers_defensive =
	{
		VGR_CPUPLAYERS_DEFENSIVE,
	},
	vgr_cpuplayers_dynamic =
	{
		VGR_CPUPLAYERS_DYNAMIC,
	},
	vgr_cpuplayers_norushtime10 =
	{
		VGR_CPUPLAYERS_NORUSHTIME10,
	},
	vgr_cpuplayers_norushtime15 =
	{
		VGR_CPUPLAYERS_NORUSHTIME15,
	},
	vgr_cpuplayers_norushtime5 =
	{
		VGR_CPUPLAYERS_NORUSHTIME5,
	},
	vgr_resourcecollectionrateexpert =
	{
		VGR_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP0,
		VGR_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP0,
		VGR_RESOURCECOLLECTIONRATEEXPERT_RES0_HYP1,
		VGR_RESOURCECOLLECTIONRATEEXPERT_RES1_HYP1,
	},
	vgr_resourcecollectionratehard =
	{
		VGR_RESOURCECOLLECTIONRATEHARD_RES0_HYP0,
		VGR_RESOURCECOLLECTIONRATEHARD_RES1_HYP0,
		VGR_RESOURCECOLLECTIONRATEHARD_RES0_HYP1,
		VGR_RESOURCECOLLECTIONRATEHARD_RES1_HYP1,
	},
	vgr_weapondamageupgrade125 =
	{
		VGR_WEAPONDAMAGEUPGRADE125,
	},
	vgr_weapondamageupgrade150 =
	{
		VGR_WEAPONDAMAGEUPGRADE150,
	},
	vgr_weapondamageupgrade175 =
	{
		VGR_WEAPONDAMAGEUPGRADE175,
	},
	vgr_weapondamageupgrade200 =
	{
		VGR_WEAPONDAMAGEUPGRADE200,
	},
	vgr_supercaphealthupgrade1 =
	{
		VGR_SUPERCAPHEALTHUPGRADE1,
	},
	vgr_supercapspeedupgrade1 =
	{
		VGR_SUPERCAPSPEEDUPGRADE1,
	},
	vgr_carrierbuildspeedupgrade1 =
	{
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		VGR_CARRIERBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	vgr_mothershipbuildspeedupgrade1 =
	{
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	vgr_mothershipbuildspeedupgrade1_makaan =
	{
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH0_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH0_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH0_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH0_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH0_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH0_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH0_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH0_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH1_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH1_RES0_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH1_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH1_RES1_HYP0,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH1_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH1_RES0_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR0_RCH1_RES1_HYP1,
		VGR_MOTHERSHIPBUILDSPEEDUPGRADE1_MAKAAN_CAR1_RCH1_RES1_HYP1,
	},
	vgr_shipyardbuildspeedupgrade1 =
	{
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES0_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES0_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH0_RES1_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH0_RES1_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP0,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES0_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES0_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR0_RCH1_RES1_HYP1,
		VGR_SHIPYARDBUILDSPEEDUPGRADE1_CAR1_RCH1_RES1_HYP1,
	},
	vgr_corvettehealthupgrade1 =
	{
		VGR_CORVETTEHEALTHUPGRADE1,
	},
	vgr_corvettespeedupgrade1 =
	{
		VGR_CORVETTESPEEDUPGRADE1,
	},
	vgr_battlecruiserionweapons =
	{
		VGR_BATTLECRUISERIONWEAPONS_HYP0,
		VGR_BATTLECRUISERIONWEAPONS_HYP1,
	},
	vgr_corvettecommand =
	{
		VGR_CORVETTECOMMAND_HYP0,
		VGR_CORVETTECOMMAND_HYP1,
	},
	vgr_corvettegraviticattraction =
	{
		VGR_CORVETTEGRAVITICATTRACTION_HYP0,
		VGR_CORVETTEGRAVITICATTRACTION_HYP1,
	},
	vgr_corvettelaser =
	{
		VGR_CORVETTELASER_HYP0,
		VGR_CORVETTELASER_HYP1,
	},
	vgr_corvettetech =
	{
		VGR_CORVETTETECH,
	},
	vgr_destroyerguns =
	{
		VGR_DESTROYERGUNS_HYP0,
		VGR_DESTROYERGUNS_HYP1,
	},
	vgr_frigateassault =
	{
		VGR_FRIGATEASSAULT_HYP0,
		VGR_FRIGATEASSAULT_HYP1,
	},
	vgr_frigateinfiltrationtech =
	{
		VGR_FRIGATEINFILTRATIONTECH_HYP0,
		VGR_FRIGATEINFILTRATIONTECH_HYP1,
	},
	vgr_frigatetech =
	{
		VGR_FRIGATETECH,
	},
	vgr_hyperspacedamagereductionupgrade =
	{
		VGR_HYPERSPACEDAMAGEREDUCTIONUPGRADE,
	},
	vgr_hyperspacegatetech =
	{
		VGR_HYPERSPACEGATETECH_HYP0,
		VGR_HYPERSPACEGATETECH_HYP1,
	},
	vgr_lancebeams =
	{
		VGR_LANCEBEAMS_HYP0,
		VGR_LANCEBEAMS_HYP1,
	},
	vgr_plasmabombs =
	{
		VGR_PLASMABOMBS_HYP0,
		VGR_PLASMABOMBS_HYP1,
	},
	vgr_platformheavymissiles =
	{
		VGR_PLATFORMHEAVYMISSILES_HYP0,
		VGR_PLATFORMHEAVYMISSILES_HYP1,
	},
	vgr_probeproxsensor =
	{
		VGR_PROBEPROXSENSOR_HYP0,
		VGR_PROBEPROXSENSOR_HYP1,
	},
	vgr_probesensordisruption =
	{
		VGR_PROBESENSORDISRUPTION_HYP0,
		VGR_PROBESENSORDISRUPTION_HYP1,
	},
	vgr_sgmcapitalhealth =
	{
		VGR_SGMCAPITALHEALTH_CAR0_RCH0_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_CAR1_RCH0_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_CAR0_RCH0_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_CAR1_RCH0_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_CAR0_RCH0_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_CAR1_RCH0_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_CAR0_RCH0_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_CAR1_RCH0_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_CAR0_RCH1_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_CAR1_RCH1_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_CAR0_RCH1_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_CAR1_RCH1_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_CAR0_RCH1_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_CAR1_RCH1_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_CAR0_RCH1_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	vgr_sgmcapitalhealth_makaan =
	{
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH0_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH0_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH0_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH0_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH0_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH0_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH0_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH0_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH1_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH1_RES0_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH1_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH1_RES1_HYP0,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH1_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH1_RES0_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR0_RCH1_RES1_HYP1,
		VGR_SGMCAPITALHEALTH_MAKAAN_CAR1_RCH1_RES1_HYP1,
	},
	vgr_sgmcarrierhealth =
	{
		VGR_SGMCARRIERHEALTH_CAR0_RCH0_RES0_HYP0,
		VGR_SGMCARRIERHEALTH_CAR1_RCH0_RES0_HYP0,
		VGR_SGMCARRIERHEALTH_CAR0_RCH0_RES1_HYP0,
		VGR_SGMCARRIERHEALTH_CAR1_RCH0_RES1_HYP0,
		VGR_SGMCARRIERHEALTH_CAR0_RCH0_RES0_HYP1,
		VGR_SGMCARRIERHEALTH_CAR1_RCH0_RES0_HYP1,
		VGR_SGMCARRIERHEALTH_CAR0_RCH0_RES1_HYP1,
		VGR_SGMCARRIERHEALTH_CAR1_RCH0_RES1_HYP1,
		VGR_SGMCARRIERHEALTH_CAR0_RCH1_RES0_HYP0,
		VGR_SGMCARRIERHEALTH_CAR1_RCH1_RES0_HYP0,
		VGR_SGMCARRIERHEALTH_CAR0_RCH1_RES1_HYP0,
		VGR_SGMCARRIERHEALTH_CAR1_RCH1_RES1_HYP0,
		VGR_SGMCARRIERHEALTH_CAR0_RCH1_RES0_HYP1,
		VGR_SGMCARRIERHEALTH_CAR1_RCH1_RES0_HYP1,
		VGR_SGMCARRIERHEALTH_CAR0_RCH1_RES1_HYP1,
		VGR_SGMCARRIERHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	vgr_sgmfrigatehealth =
	{
		VGR_SGMFRIGATEHEALTH,
	},
	vgr_sgmshipyardhealth =
	{
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP0,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP1,
		VGR_SGMSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	vgr_fighterspeedupgrade1 =
	{
		VGR_FIGHTERSPEEDUPGRADE1,
	},
	vgr_frigatehealthupgrade1 =
	{
		VGR_FRIGATEHEALTHUPGRADE1,
	},
	vgr_frigatespeedupgrade1 =
	{
		VGR_FRIGATESPEEDUPGRADE1,
	},
	vgr_platformhealthupgrade1 =
	{
		VGR_PLATFORMHEALTHUPGRADE1,
	},
	vgr_corvettehealthupgradespgame =
	{
		VGR_CORVETTEHEALTHUPGRADESPGAME,
	},
	vgr_extrastrongvgrheavymissilesspgame =
	{
		VGR_EXTRASTRONGVGRHEAVYMISSILESSPGAME_HYP0,
		VGR_EXTRASTRONGVGRHEAVYMISSILESSPGAME_HYP1,
	},
	vgr_hyperspacerecoverytimeupgradespgame =
	{
		VGR_HYPERSPACERECOVERYTIMEUPGRADESPGAME,
	},
	vgr_hyperspacetransitiontimeupgradespgame =
	{
		VGR_HYPERSPACETRANSITIONTIMEUPGRADESPGAME,
	},
	vgr_makaanbattlecruiserhealth =
	{
		VGR_MAKAANBATTLECRUISERHEALTH_HYP0,
		VGR_MAKAANBATTLECRUISERHEALTH_HYP1,
	},
	vgr_makaancarrierhealth =
	{
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH0_RES0_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH0_RES0_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH0_RES1_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH0_RES1_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH0_RES0_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH0_RES0_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH0_RES1_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH0_RES1_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH1_RES0_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH1_RES0_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH1_RES1_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH1_RES1_HYP0,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH1_RES0_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH1_RES0_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR0_RCH1_RES1_HYP1,
		VGR_MAKAANCARRIERHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	vgr_makaancorvettehealth =
	{
		VGR_MAKAANCORVETTEHEALTH,
	},
	vgr_makaandestroyerhealth =
	{
		VGR_MAKAANDESTROYERHEALTH_HYP0,
		VGR_MAKAANDESTROYERHEALTH_HYP1,
	},
	vgr_makaanfighterhealth =
	{
		VGR_MAKAANFIGHTERHEALTH,
	},
	vgr_makaanfrigatehealth =
	{
		VGR_MAKAANFRIGATEHEALTH,
	},
	vgr_makaanplatformhealth =
	{
		VGR_MAKAANPLATFORMHEALTH,
	},
	vgr_makaanshipyardhealth =
	{
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH0_RES0_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH0_RES0_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH0_RES1_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH0_RES1_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP0,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH1_RES0_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH1_RES0_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR0_RCH1_RES1_HYP1,
		VGR_MAKAANSHIPYARDHEALTH_CAR1_RCH1_RES1_HYP1,
	},
	vgr_makaanutilityhealth =
	{
		VGR_MAKAANUTILITYHEALTH,
	},
	vgr_shipyardspeeddowngradespgame =
	{
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH0_RES0_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH0_RES0_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH0_RES1_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH0_RES1_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH0_RES0_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH0_RES0_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH0_RES1_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH0_RES1_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH1_RES0_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH1_RES0_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH1_RES1_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH1_RES1_HYP0,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH1_RES0_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH1_RES0_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR0_RCH1_RES1_HYP1,
		VGR_SHIPYARDSPEEDDOWNGRADESPGAME_CAR1_RCH1_RES1_HYP1,
	},
	vgr_strongergunplats =
	{
		VGR_STRONGERGUNPLATS_HYP0,
		VGR_STRONGERGUNPLATS_HYP1,
	},
	vgr_strongermissileplats =
	{
		VGR_STRONGERMISSILEPLATS_HYP0,
		VGR_STRONGERMISSILEPLATS_HYP1,
	},
	vgr_supercapdamageappliedspgame =
	{
		VGR_SUPERCAPDAMAGEAPPLIEDSPGAME,
	},
	vgr_supercaphealthupgradespgame =
	{
		VGR_SUPERCAPHEALTHUPGRADESPGAME,
	},
	vgr_vaygrcapturehack =
	{
		VGR_VAYGRCAPTUREHACK_HYP0,
		VGR_VAYGRCAPTUREHACK_HYP1,
	},
	vgr_vaygrcarrierhealthregendowngrade =
	{
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH0_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH0_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH0_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH0_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH0_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH0_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH0_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH0_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH1_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH1_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH1_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH1_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH1_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH1_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR0_RCH1_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHREGENDOWNGRADE_CAR1_RCH1_RES1_HYP1,
	},
	vgr_vaygrcarrierhealthupgrade =
	{
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH0_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH0_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH0_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH0_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH0_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH0_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH0_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH0_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH1_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH1_RES0_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH1_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH1_RES1_HYP0,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH1_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH1_RES0_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR0_RCH1_RES1_HYP1,
		VGR_VAYGRCARRIERHEALTHUPGRADE_CAR1_RCH1_RES1_HYP1,
	},
	vgr_vaygrfrigatehealthregendowngradespgame =
	{
		VGR_VAYGRFRIGATEHEALTHREGENDOWNGRADESPGAME,
	},
	vgr_vaygrfrigatehealthupgradespgame =
	{
		VGR_VAYGRFRIGATEHEALTHUPGRADESPGAME,
	},
	vgr_vaygrradiationimmunityhack =
	{
		VGR_VAYGRRADIATIONIMMUNITYHACK,
	},
	vgr_vaygrreducecapturehack =
	{
		VGR_VAYGRREDUCECAPTUREHACK_HYP0,
		VGR_VAYGRREDUCECAPTUREHACK_HYP1,
	},
	vgr_weakvgrheavymissiles =
	{
		VGR_WEAKVGRHEAVYMISSILES_HYP0,
		VGR_WEAKVGRHEAVYMISSILES_HYP1,
	},
	vgr_utilityhealthupgrade1 =
	{
		VGR_UTILITYHEALTHUPGRADE1,
	},
}

VariantBuildInt =
{
	hgn_battlecruiser =
	{
		HGN_BATTLECRUISER_HYP0,
		HGN_BATTLECRUISER_HYP1,
	},
	hgn_destroyer =
	{
		HGN_DESTROYER_HYP0,
		HGN_DESTROYER_HYP1,
	},
	hgn_carrier =
	{
		HGN_CARRIER_CAR0_RCH0_RES0_HYP0,
		HGN_CARRIER_CAR1_RCH0_RES0_HYP0,
		HGN_CARRIER_CAR0_RCH0_RES1_HYP0,
		HGN_CARRIER_CAR1_RCH0_RES1_HYP0,
		HGN_CARRIER_CAR0_RCH0_RES0_HYP1,
		HGN_CARRIER_CAR1_RCH0_RES0_HYP1,
		HGN_CARRIER_CAR0_RCH0_RES1_HYP1,
		HGN_CARRIER_CAR1_RCH0_RES1_HYP1,
		HGN_CARRIER_CAR0_RCH1_RES0_HYP0,
		HGN_CARRIER_CAR1_RCH1_RES0_HYP0,
		HGN_CARRIER_CAR0_RCH1_RES1_HYP0,
		HGN_CARRIER_CAR1_RCH1_RES1_HYP0,
		HGN_CARRIER_CAR0_RCH1_RES0_HYP1,
		HGN_CARRIER_CAR1_RCH1_RES0_HYP1,
		HGN_CARRIER_CAR0_RCH1_RES1_HYP1,
		HGN_CARRIER_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyard =
	{
		HGN_SHIPYARD_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARD_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARD_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARD_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARD_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARD_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARD_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARD_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARD_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARD_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARD_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARD_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARD_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARD_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARD_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARD_CAR1_RCH1_RES1_HYP1,
	},
	hgn_c_module_cloakgenerator =
	{
		HGN_C_MODULE_CLOAKGENERATOR_RCH0,
		HGN_C_MODULE_CLOAKGENERATOR_RCH1,
	},
	hgn_c_module_firecontrol =
	{
		HGN_C_MODULE_FIRECONTROL_RCH0,
		HGN_C_MODULE_FIRECONTROL_RCH1,
	},
	hgn_c_module_hyperspace =
	{
		HGN_C_MODULE_HYPERSPACE_RCH0,
		HGN_C_MODULE_HYPERSPACE_RCH1,
	},
	hgn_c_module_hyperspaceinhibitor =
	{
		HGN_C_MODULE_HYPERSPACEINHIBITOR_RCH0,
		HGN_C_MODULE_HYPERSPACEINHIBITOR_RCH1,
	},
	hgn_c_module_research =
	{
		HGN_C_MODULE_RESEARCH,
	},
	hgn_c_module_researchadvanced =
	{
		HGN_C_MODULE_RESEARCHADVANCED,
	},
	hgn_c_sensors_advancedarray =
	{
		HGN_C_SENSORS_ADVANCEDARRAY,
	},
	hgn_c_sensors_detectcloaked =
	{
		HGN_C_SENSORS_DETECTCLOAKED,
	},
	hgn_c_sensors_detecthyperspace =
	{
		HGN_C_SENSORS_DETECTHYPERSPACE,
	},
	hgn_assaultcorvette =
	{
		HGN_ASSAULTCORVETTE_HYP0,
		HGN_ASSAULTCORVETTE_HYP1,
	},
	hgn_minelayercorvette =
	{
		HGN_MINELAYERCORVETTE_HYP0,
		HGN_MINELAYERCORVETTE_HYP1,
	},
	hgn_pulsarcorvette =
	{
		HGN_PULSARCORVETTE_HYP0,
		HGN_PULSARCORVETTE_HYP1,
	},
	hgn_attackbomber =
	{
		HGN_ATTACKBOMBER_HYP0,
		HGN_ATTACKBOMBER_HYP1,
	},
	hgn_interceptor =
	{
		HGN_INTERCEPTOR_HYP0,
		HGN_INTERCEPTOR_HYP1,
	},
	hgn_scout =
	{
		HGN_SCOUT_HYP0,
		HGN_SCOUT_HYP1,
	},
	hgn_assaultfrigate =
	{
		HGN_ASSAULTFRIGATE_HYP0,
		HGN_ASSAULTFRIGATE_HYP1,
	},
	hgn_defensefieldfrigate =
	{
		HGN_DEFENSEFIELDFRIGATE_HYP0,
		HGN_DEFENSEFIELDFRIGATE_HYP1,
	},
	hgn_ioncannonfrigate =
	{
		HGN_IONCANNONFRIGATE_HYP0,
		HGN_IONCANNONFRIGATE_HYP1,
	},
	hgn_marinefrigate =
	{
		HGN_MARINEFRIGATE_HYP0,
		HGN_MARINEFRIGATE_HYP1,
	},
	hgn_torpedofrigate =
	{
		HGN_TORPEDOFRIGATE_HYP0,
		HGN_TORPEDOFRIGATE_HYP1,
	},
	hgn_ms_module_cloakgenerator =
	{
		HGN_MS_MODULE_CLOAKGENERATOR_RCH0,
		HGN_MS_MODULE_CLOAKGENERATOR_RCH1,
	},
	hgn_ms_module_firecontrol =
	{
		HGN_MS_MODULE_FIRECONTROL_RCH0,
		HGN_MS_MODULE_FIRECONTROL_RCH1,
	},
	hgn_ms_module_hyperspace =
	{
		HGN_MS_MODULE_HYPERSPACE_RCH0,
		HGN_MS_MODULE_HYPERSPACE_RCH1,
	},
	hgn_ms_module_hyperspaceinhibitor =
	{
		HGN_MS_MODULE_HYPERSPACEINHIBITOR_RCH0,
		HGN_MS_MODULE_HYPERSPACEINHIBITOR_RCH1,
	},
	hgn_ms_module_research =
	{
		HGN_MS_MODULE_RESEARCH,
	},
	hgn_ms_module_researchadvanced =
	{
		HGN_MS_MODULE_RESEARCHADVANCED,
	},
	hgn_ms_sensors_advancedarray =
	{
		HGN_MS_SENSORS_ADVANCEDARRAY,
	},
	hgn_ms_sensors_detectcloaked =
	{
		HGN_MS_SENSORS_DETECTCLOAKED,
	},
	hgn_ms_sensors_detecthyperspace =
	{
		HGN_MS_SENSORS_DETECTHYPERSPACE,
	},
	hgn_gunturret =
	{
		HGN_GUNTURRET_HYP0,
		HGN_GUNTURRET_HYP1,
	},
	hgn_ionturret =
	{
		HGN_IONTURRET_HYP0,
		HGN_IONTURRET_HYP1,
	},
	hgn_c_module_platformcontrol =
	{
		HGN_C_MODULE_PLATFORMCONTROL,
	},
	hgn_c_production_corvette =
	{
		HGN_C_PRODUCTION_CORVETTE_RCH0,
		HGN_C_PRODUCTION_CORVETTE_RCH1,
	},
	hgn_c_production_fighter =
	{
		HGN_C_PRODUCTION_FIGHTER,
	},
	hgn_c_production_frigate =
	{
		HGN_C_PRODUCTION_FRIGATE_RCH0,
		HGN_C_PRODUCTION_FRIGATE_RCH1,
	},
	hgn_ms_module_platformcontrol =
	{
		HGN_MS_MODULE_PLATFORMCONTROL,
	},
	hgn_ms_production_capship =
	{
		HGN_MS_PRODUCTION_CAPSHIP,
	},
	hgn_ms_production_corvette =
	{
		HGN_MS_PRODUCTION_CORVETTE_RCH0,
		HGN_MS_PRODUCTION_CORVETTE_RCH1,
	},
	hgn_ms_production_fighter =
	{
		HGN_MS_PRODUCTION_FIGHTER,
	},
	hgn_ms_production_frigate =
	{
		HGN_MS_PRODUCTION_FRIGATE_RCH0,
		HGN_MS_PRODUCTION_FRIGATE_RCH1,
	},
	hgn_sy_production_capship =
	{
		HGN_SY_PRODUCTION_CAPSHIP,
	},
	hgn_shipyard_elohim =
	{
		HGN_SHIPYARD_ELOHIM_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARD_ELOHIM_CAR1_RCH1_RES1_HYP1,
	},
	hgn_shipyard_spg =
	{
		HGN_SHIPYARD_SPG_CAR0_RCH0_RES0_HYP0,
		HGN_SHIPYARD_SPG_CAR1_RCH0_RES0_HYP0,
		HGN_SHIPYARD_SPG_CAR0_RCH0_RES1_HYP0,
		HGN_SHIPYARD_SPG_CAR1_RCH0_RES1_HYP0,
		HGN_SHIPYARD_SPG_CAR0_RCH0_RES0_HYP1,
		HGN_SHIPYARD_SPG_CAR1_RCH0_RES0_HYP1,
		HGN_SHIPYARD_SPG_CAR0_RCH0_RES1_HYP1,
		HGN_SHIPYARD_SPG_CAR1_RCH0_RES1_HYP1,
		HGN_SHIPYARD_SPG_CAR0_RCH1_RES0_HYP0,
		HGN_SHIPYARD_SPG_CAR1_RCH1_RES0_HYP0,
		HGN_SHIPYARD_SPG_CAR0_RCH1_RES1_HYP0,
		HGN_SHIPYARD_SPG_CAR1_RCH1_RES1_HYP0,
		HGN_SHIPYARD_SPG_CAR0_RCH1_RES0_HYP1,
		HGN_SHIPYARD_SPG_CAR1_RCH1_RES0_HYP1,
		HGN_SHIPYARD_SPG_CAR0_RCH1_RES1_HYP1,
		HGN_SHIPYARD_SPG_CAR1_RCH1_RES1_HYP1,
	},
	kpr_mover =
	{
		KPR_MOVER_HYP0,
		KPR_MOVER_HYP1,
	},
	hgn_ms_production_corvettemover =
	{
		HGN_MS_PRODUCTION_CORVETTEMOVER,
	},
	hgn_ecmprobe =
	{
		HGN_ECMPROBE_HYP0,
		HGN_ECMPROBE_HYP1,
	},
	hgn_probe =
	{
		HGN_PROBE_HYP0,
		HGN_PROBE_HYP1,
	},
	hgn_proximitysensor =
	{
		HGN_PROXIMITYSENSOR_HYP0,
		HGN_PROXIMITYSENSOR_HYP1,
	},
	hgn_resourcecollector =
	{
		HGN_RESOURCECOLLECTOR_RES0_HYP0,
		HGN_RESOURCECOLLECTOR_RES1_HYP0,
		HGN_RESOURCECOLLECTOR_RES0_HYP1,
		HGN_RESOURCECOLLECTOR_RES1_HYP1,
	},
	hgn_resourcecontroller =
	{
		HGN_RESOURCECONTROLLER_RES0_HYP0,
		HGN_RESOURCECONTROLLER_RES1_HYP0,
		HGN_RESOURCECONTROLLER_RES0_HYP1,
		HGN_RESOURCECONTROLLER_RES1_HYP1,
	},
	kus_carrier =
	{
		KUS_CARRIER_RES0_HYP0,
		KUS_CARRIER_RES1_HYP0,
		KUS_CARRIER_RES0_HYP1,
		KUS_CARRIER_RES1_HYP1,
	},
	kus_destroyer =
	{
		KUS_DESTROYER_HYP0,
		KUS_DESTROYER_HYP1,
	},
	kus_heavycruiser =
	{
		KUS_HEAVYCRUISER_HYP0,
		KUS_HEAVYCRUISER_HYP1,
	},
	kus_missiledestroyer =
	{
		KUS_MISSILEDESTROYER_HYP0,
		KUS_MISSILEDESTROYER_HYP1,
	},
	kus_heavycorvette =
	{
		KUS_HEAVYCORVETTE_HYP0,
		KUS_HEAVYCORVETTE_HYP1,
	},
	kus_lightcorvette =
	{
		KUS_LIGHTCORVETTE_HYP0,
		KUS_LIGHTCORVETTE_HYP1,
	},
	kus_minelayercorvette =
	{
		KUS_MINELAYERCORVETTE_HYP0,
		KUS_MINELAYERCORVETTE_HYP1,
	},
	kus_multiguncorvette =
	{
		KUS_MULTIGUNCORVETTE_HYP0,
		KUS_MULTIGUNCORVETTE_HYP1,
	},
	kus_repaircorvette =
	{
		KUS_REPAIRCORVETTE_HYP0,
		KUS_REPAIRCORVETTE_HYP1,
	},
	kus_salvagecorvette =
	{
		KUS_SALVAGECORVETTE_HYP0,
		KUS_SALVAGECORVETTE_HYP1,
	},
	kus_attackbomber =
	{
		KUS_ATTACKBOMBER_HYP0,
		KUS_ATTACKBOMBER_HYP1,
	},
	kus_cloakedfighter =
	{
		KUS_CLOAKEDFIGHTER_HYP0,
		KUS_CLOAKEDFIGHTER_HYP1,
	},
	kus_defender =
	{
		KUS_DEFENDER_HYP0,
		KUS_DEFENDER_HYP1,
	},
	kus_interceptor =
	{
		KUS_INTERCEPTOR_HYP0,
		KUS_INTERCEPTOR_HYP1,
	},
	kus_scout =
	{
		KUS_SCOUT_HYP0,
		KUS_SCOUT_HYP1,
	},
	kus_assaultfrigate =
	{
		KUS_ASSAULTFRIGATE_HYP0,
		KUS_ASSAULTFRIGATE_HYP1,
	},
	kus_drone0 =
	{
		KUS_DRONE0,
	},
	kus_drone1 =
	{
		KUS_DRONE1,
	},
	kus_drone10 =
	{
		KUS_DRONE10,
	},
	kus_drone11 =
	{
		KUS_DRONE11,
	},
	kus_drone12 =
	{
		KUS_DRONE12,
	},
	kus_drone13 =
	{
		KUS_DRONE13,
	},
	kus_drone2 =
	{
		KUS_DRONE2,
	},
	kus_drone3 =
	{
		KUS_DRONE3,
	},
	kus_drone4 =
	{
		KUS_DRONE4,
	},
	kus_drone5 =
	{
		KUS_DRONE5,
	},
	kus_drone6 =
	{
		KUS_DRONE6,
	},
	kus_drone7 =
	{
		KUS_DRONE7,
	},
	kus_drone8 =
	{
		KUS_DRONE8,
	},
	kus_drone9 =
	{
		KUS_DRONE9,
	},
	kus_dronefrigate =
	{
		KUS_DRONEFRIGATE_HYP0,
		KUS_DRONEFRIGATE_HYP1,
	},
	kus_ioncannonfrigate =
	{
		KUS_IONCANNONFRIGATE_HYP0,
		KUS_IONCANNONFRIGATE_HYP1,
	},
	kus_supportfrigate =
	{
		KUS_SUPPORTFRIGATE_HYP0,
		KUS_SUPPORTFRIGATE_HYP1,
	},
	hw1_production_capital =
	{
		HW1_PRODUCTION_CAPITAL,
	},
	hw1_production_corvette =
	{
		HW1_PRODUCTION_CORVETTE,
	},
	hw1_production_fighter =
	{
		HW1_PRODUCTION_FIGHTER,
	},
	hw1_production_frigate =
	{
		HW1_PRODUCTION_FRIGATE,
	},
	kus_cloakgenerator =
	{
		KUS_CLOAKGENERATOR_HYP0,
		KUS_CLOAKGENERATOR_HYP1,
	},
	kus_gravwellgenerator =
	{
		KUS_GRAVWELLGENERATOR_HYP0,
		KUS_GRAVWELLGENERATOR_HYP1,
	},
	kus_probe =
	{
		KUS_PROBE_HYP0,
		KUS_PROBE_HYP1,
	},
	kus_proximitysensor =
	{
		KUS_PROXIMITYSENSOR_HYP0,
		KUS_PROXIMITYSENSOR_HYP1,
	},
	kus_researchship =
	{
		KUS_RESEARCHSHIP,
	},
	kus_researchship_1 =
	{
		KUS_RESEARCHSHIP_1,
	},
	kus_researchship_2 =
	{
		KUS_RESEARCHSHIP_2,
	},
	kus_researchship_3 =
	{
		KUS_RESEARCHSHIP_3,
	},
	kus_researchship_4 =
	{
		KUS_RESEARCHSHIP_4,
	},
	kus_researchship_5 =
	{
		KUS_RESEARCHSHIP_5,
	},
	kus_resourcecollector =
	{
		KUS_RESOURCECOLLECTOR_RES0_HYP0,
		KUS_RESOURCECOLLECTOR_RES1_HYP0,
		KUS_RESOURCECOLLECTOR_RES0_HYP1,
		KUS_RESOURCECOLLECTOR_RES1_HYP1,
	},
	kus_resourcecontroller =
	{
		KUS_RESOURCECONTROLLER_RES0_HYP0,
		KUS_RESOURCECONTROLLER_RES1_HYP0,
		KUS_RESOURCECONTROLLER_RES0_HYP1,
		KUS_RESOURCECONTROLLER_RES1_HYP1,
	},
	kus_sensorarray =
	{
		KUS_SENSORARRAY_HYP0,
		KUS_SENSORARRAY_HYP1,
	},
	tai_carrier =
	{
		TAI_CARRIER_RES0_HYP0,
		TAI_CARRIER_RES1_HYP0,
		TAI_CARRIER_RES0_HYP1,
		TAI_CARRIER_RES1_HYP1,
	},
	tai_destroyer =
	{
		TAI_DESTROYER_HYP0,
		TAI_DESTROYER_HYP1,
	},
	tai_heavycruiser =
	{
		TAI_HEAVYCRUISER_HYP0,
		TAI_HEAVYCRUISER_HYP1,
	},
	tai_missiledestroyer =
	{
		TAI_MISSILEDESTROYER_HYP0,
		TAI_MISSILEDESTROYER_HYP1,
	},
	tai_heavycorvette =
	{
		TAI_HEAVYCORVETTE_HYP0,
		TAI_HEAVYCORVETTE_HYP1,
	},
	tai_lightcorvette =
	{
		TAI_LIGHTCORVETTE_HYP0,
		TAI_LIGHTCORVETTE_HYP1,
	},
	tai_minelayercorvette =
	{
		TAI_MINELAYERCORVETTE_HYP0,
		TAI_MINELAYERCORVETTE_HYP1,
	},
	tai_multiguncorvette =
	{
		TAI_MULTIGUNCORVETTE_HYP0,
		TAI_MULTIGUNCORVETTE_HYP1,
	},
	tai_repaircorvette =
	{
		TAI_REPAIRCORVETTE_HYP0,
		TAI_REPAIRCORVETTE_HYP1,
	},
	tai_salvagecorvette =
	{
		TAI_SALVAGECORVETTE_HYP0,
		TAI_SALVAGECORVETTE_HYP1,
	},
	tai_attackbomber =
	{
		TAI_ATTACKBOMBER_HYP0,
		TAI_ATTACKBOMBER_HYP1,
	},
	tai_defender =
	{
		TAI_DEFENDER_HYP0,
		TAI_DEFENDER_HYP1,
	},
	tai_defensefighter =
	{
		TAI_DEFENSEFIGHTER_HYP0,
		TAI_DEFENSEFIGHTER_HYP1,
	},
	tai_interceptor =
	{
		TAI_INTERCEPTOR_HYP0,
		TAI_INTERCEPTOR_HYP1,
	},
	tai_scout =
	{
		TAI_SCOUT_HYP0,
		TAI_SCOUT_HYP1,
	},
	tai_assaultfrigate =
	{
		TAI_ASSAULTFRIGATE_HYP0,
		TAI_ASSAULTFRIGATE_HYP1,
	},
	tai_fieldfrigate =
	{
		TAI_FIELDFRIGATE_HYP0,
		TAI_FIELDFRIGATE_HYP1,
	},
	tai_ioncannonfrigate =
	{
		TAI_IONCANNONFRIGATE_HYP0,
		TAI_IONCANNONFRIGATE_HYP1,
	},
	tai_supportfrigate =
	{
		TAI_SUPPORTFRIGATE_HYP0,
		TAI_SUPPORTFRIGATE_HYP1,
	},
	hw1_production_capital =
	{
		HW1_PRODUCTION_CAPITAL,
	},
	hw1_production_corvette =
	{
		HW1_PRODUCTION_CORVETTE,
	},
	hw1_production_fighter =
	{
		HW1_PRODUCTION_FIGHTER,
	},
	hw1_production_frigate =
	{
		HW1_PRODUCTION_FRIGATE,
	},
	tai_cloakgenerator =
	{
		TAI_CLOAKGENERATOR_HYP0,
		TAI_CLOAKGENERATOR_HYP1,
	},
	tai_gravwellgenerator =
	{
		TAI_GRAVWELLGENERATOR_HYP0,
		TAI_GRAVWELLGENERATOR_HYP1,
	},
	tai_probe =
	{
		TAI_PROBE_HYP0,
		TAI_PROBE_HYP1,
	},
	tai_proximitysensor =
	{
		TAI_PROXIMITYSENSOR_HYP0,
		TAI_PROXIMITYSENSOR_HYP1,
	},
	tai_researchship =
	{
		TAI_RESEARCHSHIP,
	},
	tai_researchship_1 =
	{
		TAI_RESEARCHSHIP_1,
	},
	tai_researchship_2 =
	{
		TAI_RESEARCHSHIP_2,
	},
	tai_researchship_3 =
	{
		TAI_RESEARCHSHIP_3,
	},
	tai_researchship_4 =
	{
		TAI_RESEARCHSHIP_4,
	},
	tai_researchship_5 =
	{
		TAI_RESEARCHSHIP_5,
	},
	tai_resourcecollector =
	{
		TAI_RESOURCECOLLECTOR_RES0_HYP0,
		TAI_RESOURCECOLLECTOR_RES1_HYP0,
		TAI_RESOURCECOLLECTOR_RES0_HYP1,
		TAI_RESOURCECOLLECTOR_RES1_HYP1,
	},
	tai_resourcecontroller =
	{
		TAI_RESOURCECONTROLLER_RES0_HYP0,
		TAI_RESOURCECONTROLLER_RES1_HYP0,
		TAI_RESOURCECONTROLLER_RES0_HYP1,
		TAI_RESOURCECONTROLLER_RES1_HYP1,
	},
	tai_sensorarray =
	{
		TAI_SENSORARRAY_HYP0,
		TAI_SENSORARRAY_HYP1,
	},
	vgr_battlecruiser =
	{
		VGR_BATTLECRUISER_HYP0,
		VGR_BATTLECRUISER_HYP1,
	},
	vgr_carrier =
	{
		VGR_CARRIER_CAR0_RCH0_RES0_HYP0,
		VGR_CARRIER_CAR1_RCH0_RES0_HYP0,
		VGR_CARRIER_CAR0_RCH0_RES1_HYP0,
		VGR_CARRIER_CAR1_RCH0_RES1_HYP0,
		VGR_CARRIER_CAR0_RCH0_RES0_HYP1,
		VGR_CARRIER_CAR1_RCH0_RES0_HYP1,
		VGR_CARRIER_CAR0_RCH0_RES1_HYP1,
		VGR_CARRIER_CAR1_RCH0_RES1_HYP1,
		VGR_CARRIER_CAR0_RCH1_RES0_HYP0,
		VGR_CARRIER_CAR1_RCH1_RES0_HYP0,
		VGR_CARRIER_CAR0_RCH1_RES1_HYP0,
		VGR_CARRIER_CAR1_RCH1_RES1_HYP0,
		VGR_CARRIER_CAR0_RCH1_RES0_HYP1,
		VGR_CARRIER_CAR1_RCH1_RES0_HYP1,
		VGR_CARRIER_CAR0_RCH1_RES1_HYP1,
		VGR_CARRIER_CAR1_RCH1_RES1_HYP1,
	},
	vgr_destroyer =
	{
		VGR_DESTROYER_HYP0,
		VGR_DESTROYER_HYP1,
	},
	vgr_shipyard =
	{
		VGR_SHIPYARD_CAR0_RCH0_RES0_HYP0,
		VGR_SHIPYARD_CAR1_RCH0_RES0_HYP0,
		VGR_SHIPYARD_CAR0_RCH0_RES1_HYP0,
		VGR_SHIPYARD_CAR1_RCH0_RES1_HYP0,
		VGR_SHIPYARD_CAR0_RCH0_RES0_HYP1,
		VGR_SHIPYARD_CAR1_RCH0_RES0_HYP1,
		VGR_SHIPYARD_CAR0_RCH0_RES1_HYP1,
		VGR_SHIPYARD_CAR1_RCH0_RES1_HYP1,
		VGR_SHIPYARD_CAR0_RCH1_RES0_HYP0,
		VGR_SHIPYARD_CAR1_RCH1_RES0_HYP0,
		VGR_SHIPYARD_CAR0_RCH1_RES1_HYP0,
		VGR_SHIPYARD_CAR1_RCH1_RES1_HYP0,
		VGR_SHIPYARD_CAR0_RCH1_RES0_HYP1,
		VGR_SHIPYARD_CAR1_RCH1_RES0_HYP1,
		VGR_SHIPYARD_CAR0_RCH1_RES1_HYP1,
		VGR_SHIPYARD_CAR1_RCH1_RES1_HYP1,
	},
	vgr_commandcorvette =
	{
		VGR_COMMANDCORVETTE_HYP0,
		VGR_COMMANDCORVETTE_HYP1,
	},
	vgr_lasercorvette =
	{
		VGR_LASERCORVETTE_HYP0,
		VGR_LASERCORVETTE_HYP1,
	},
	vgr_minelayercorvette =
	{
		VGR_MINELAYERCORVETTE_HYP0,
		VGR_MINELAYERCORVETTE_HYP1,
	},
	vgr_missilecorvette =
	{
		VGR_MISSILECORVETTE_HYP0,
		VGR_MISSILECORVETTE_HYP1,
	},
	vgr_bomber =
	{
		VGR_BOMBER_HYP0,
		VGR_BOMBER_HYP1,
	},
	vgr_interceptor =
	{
		VGR_INTERCEPTOR_HYP0,
		VGR_INTERCEPTOR_HYP1,
	},
	vgr_lancefighter =
	{
		VGR_LANCEFIGHTER_HYP0,
		VGR_LANCEFIGHTER_HYP1,
	},
	vgr_scout =
	{
		VGR_SCOUT_HYP0,
		VGR_SCOUT_HYP1,
	},
	vgr_assaultfrigate =
	{
		VGR_ASSAULTFRIGATE_HYP0,
		VGR_ASSAULTFRIGATE_HYP1,
	},
	vgr_heavymissilefrigate =
	{
		VGR_HEAVYMISSILEFRIGATE_HYP0,
		VGR_HEAVYMISSILEFRIGATE_HYP1,
	},
	vgr_infiltratorfrigate =
	{
		VGR_INFILTRATORFRIGATE_HYP0,
		VGR_INFILTRATORFRIGATE_HYP1,
	},
	vgr_weaponplatform_gun =
	{
		VGR_WEAPONPLATFORM_GUN_HYP0,
		VGR_WEAPONPLATFORM_GUN_HYP1,
	},
	vgr_weaponplatform_missile =
	{
		VGR_WEAPONPLATFORM_MISSILE_HYP0,
		VGR_WEAPONPLATFORM_MISSILE_HYP1,
	},
	vgr_planetkillermissile =
	{
		VGR_PLANETKILLERMISSILE,
	},
	vgr_c_module_cloakgenerator =
	{
		VGR_C_MODULE_CLOAKGENERATOR_RCH0,
		VGR_C_MODULE_CLOAKGENERATOR_RCH1,
	},
	vgr_c_module_firecontrol =
	{
		VGR_C_MODULE_FIRECONTROL_RCH0,
		VGR_C_MODULE_FIRECONTROL_RCH1,
	},
	vgr_c_module_hyperspace =
	{
		VGR_C_MODULE_HYPERSPACE,
	},
	vgr_c_module_hyperspaceinhibitor =
	{
		VGR_C_MODULE_HYPERSPACEINHIBITOR_RCH0,
		VGR_C_MODULE_HYPERSPACEINHIBITOR_RCH1,
	},
	vgr_c_module_platformcontrol =
	{
		VGR_C_MODULE_PLATFORMCONTROL,
	},
	vgr_c_module_research =
	{
		VGR_C_MODULE_RESEARCH,
	},
	vgr_c_production_corvette =
	{
		VGR_C_PRODUCTION_CORVETTE_CAR0,
		VGR_C_PRODUCTION_CORVETTE_CAR1,
	},
	vgr_c_production_fighter =
	{
		VGR_C_PRODUCTION_FIGHTER_CAR0,
		VGR_C_PRODUCTION_FIGHTER_CAR1,
	},
	vgr_c_production_frigate =
	{
		VGR_C_PRODUCTION_FRIGATE,
	},
	vgr_c_sensors_advancedarray =
	{
		VGR_C_SENSORS_ADVANCEDARRAY,
	},
	vgr_c_sensors_detecthyperspace =
	{
		VGR_C_SENSORS_DETECTHYPERSPACE,
	},
	vgr_ms_module_cloakgenerator =
	{
		VGR_MS_MODULE_CLOAKGENERATOR_RCH0,
		VGR_MS_MODULE_CLOAKGENERATOR_RCH1,
	},
	vgr_ms_module_firecontrol =
	{
		VGR_MS_MODULE_FIRECONTROL_RCH0,
		VGR_MS_MODULE_FIRECONTROL_RCH1,
	},
	vgr_ms_module_hyperspace =
	{
		VGR_MS_MODULE_HYPERSPACE,
	},
	vgr_ms_module_hyperspaceinhibitor =
	{
		VGR_MS_MODULE_HYPERSPACEINHIBITOR_RCH0,
		VGR_MS_MODULE_HYPERSPACEINHIBITOR_RCH1,
	},
	vgr_ms_module_platformcontrol =
	{
		VGR_MS_MODULE_PLATFORMCONTROL,
	},
	vgr_ms_module_research =
	{
		VGR_MS_MODULE_RESEARCH,
	},
	vgr_ms_production_capship =
	{
		VGR_MS_PRODUCTION_CAPSHIP,
	},
	vgr_ms_production_corvette =
	{
		VGR_MS_PRODUCTION_CORVETTE,
	},
	vgr_ms_production_fighter =
	{
		VGR_MS_PRODUCTION_FIGHTER,
	},
	vgr_ms_production_frigate =
	{
		VGR_MS_PRODUCTION_FRIGATE,
	},
	vgr_ms_sensors_advancedarray =
	{
		VGR_MS_SENSORS_ADVANCEDARRAY,
	},
	vgr_ms_sensors_detecthyperspace =
	{
		VGR_MS_SENSORS_DETECTHYPERSPACE,
	},
	vgr_sy_production_capship =
	{
		VGR_SY_PRODUCTION_CAPSHIP,
	},
	vgr_hyperspace_platform =
	{
		VGR_HYPERSPACE_PLATFORM_HYP0,
		VGR_HYPERSPACE_PLATFORM_HYP1,
	},
	vgr_probe =
	{
		VGR_PROBE_HYP0,
		VGR_PROBE_HYP1,
	},
	vgr_probe_ecm =
	{
		VGR_PROBE_ECM_HYP0,
		VGR_PROBE_ECM_HYP1,
	},
	vgr_probe_prox =
	{
		VGR_PROBE_PROX_HYP0,
		VGR_PROBE_PROX_HYP1,
	},
	vgr_resourcecollector =
	{
		VGR_RESOURCECOLLECTOR_RES0_HYP0,
		VGR_RESOURCECOLLECTOR_RES1_HYP0,
		VGR_RESOURCECOLLECTOR_RES0_HYP1,
		VGR_RESOURCECOLLECTOR_RES1_HYP1,
	},
	vgr_resourcecontroller =
	{
		VGR_RESOURCECONTROLLER_RES0_HYP0,
		VGR_RESOURCECONTROLLER_RES1_HYP0,
		VGR_RESOURCECONTROLLER_RES0_HYP1,
		VGR_RESOURCECONTROLLER_RES1_HYP1,
	},
}
