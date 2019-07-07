aitrace("CPU: CLASSDEF LOADED")
squadclass = {}
squadclass[eMotherShip] = {
	HGN_MOTHERSHIP,	
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	KUS_MOTHERSHIP,
	TAI_MOTHERSHIP,
}
squadclass[eCollector] = {
	HGN_RESOURCECOLLECTOR,	
	VGR_RESOURCECOLLECTOR,
	KUS_RESOURCECOLLECTOR,
	TAI_RESOURCECOLLECTOR,
}
squadclass[eScout] = {
	HGN_SCOUT,
	HGN_PROBE,
	HGN_PROXIMITYSENSOR,
	HGN_ECMPROBE,	
	VGR_SCOUT,
	VGR_PROBE,
	VGR_PROBE_PROX,
	VGR_PROBE_ECM,
	KUS_SCOUT,
	KUS_PROBE,
	KUS_PROXIMITYSENSOR,
	TAI_SCOUT,
	TAI_PROBE,
	TAI_PROXIMITYSENSOR,
}
squadclass[eRefinery] = {
	HGN_RESOURCECONTROLLER,	
	VGR_RESOURCECONTROLLER,
	KUS_RESOURCECONTROLLER,	
	TAI_RESOURCECONTROLLER,
}
squadclass[eBuilder] = {
	HGN_MOTHERSHIP,
	HGN_MOTHERSHIP_RESEARCH0,
	HGN_CARRIER,
	HGN_CARRIER_RESEARCH0,
	HGN_SHIPYARD,
	HGN_SHIPYARD_RESEARCH0,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_CARRIER_CARRIERONLY1,
	VGR_SHIPYARD,
	VGR_COMMSTATION_HWC,
	VGR_PRISONSTATION_HWC,
	KUS_MOTHERSHIP,
	KUS_CARRIER,
	TAI_MOTHERSHIP,
	TAI_CARRIER,
}
squadclass[eDropOff] = {
	HGN_MOTHERSHIP,
	HGN_MOTHERSHIP_RESEARCH0,
	HGN_CARRIER,
	HGN_CARRIER_RESEARCH0,
	HGN_SHIPYARD,
	HGN_SHIPYARD_RESEARCH0,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	HGN_RESOURCECONTROLLER,	
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_CARRIER_CARRIERONLY1,
	VGR_SHIPYARD,
	VGR_RESOURCECONTROLLER,
	VGR_COMMSTATION_HWC,
	VGR_PRISONSTATION_HWC,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	KUS_RESOURCECONTROLLER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
	TAI_RESOURCECONTROLLER,
}
squadclass[eSalvageDropOff] = {
	HGN_MOTHERSHIP,
	HGN_MOTHERSHIP_RESEARCH0,
	HGN_CARRIER,
	HGN_CARRIER_RESEARCH0,
	HGN_SHIPYARD,
	HGN_SHIPYARD_RESEARCH0,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_CARRIER,
	VGR_CARRIER_CARRIERONLY1,
	VGR_SHIPYARD,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
}
squadclass[eFighter] = {
	HGN_INTERCEPTOR,
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,	
	VGR_INTERCEPTOR,
	VGR_BOMBER,
	VGR_LANCEFIGHTER,
	KUS_INTERCEPTOR,
	KUS_ATTACKBOMBER,
	KUS_DEFENDER,
	KUS_CLOAKEDFIGHTER,
	TAI_INTERCEPTOR,
	TAI_ATTACKBOMBER,
	TAI_DEFENDER,
	TAI_DEFENSEFIGHTER,
	KPR_ATTACKDROID,
	KPR_ATTACKDROID_HWC,
}
squadclass[eCorvette] = {
	HGN_ASSAULTCORVETTE,
	HGN_PULSARCORVETTE,
	HGN_MINELAYERCORVETTE,	
	VGR_MISSILECORVETTE,
	VGR_LASERCORVETTE,
	VGR_MINELAYERCORVETTE,
	VGR_COMMANDCORVETTE,
	KUS_LIGHTCORVETTE,
	KUS_HEAVYCORVETTE,
	KUS_SALVAGECORVETTE,
	KUS_REPAIRCORVETTE,
	KUS_MULTIGUNCORVETTE,
	KUS_MINELAYERCORVETTE,
	TAI_LIGHTCORVETTE,
	TAI_HEAVYCORVETTE,
	TAI_SALVAGECORVETTE,
	TAI_REPAIRCORVETTE,
	TAI_MULTIGUNCORVETTE,
	TAI_MINELAYERCORVETTE,
	KPR_MOVER,
}
squadclass[eFrigate] = {
	HGN_ASSAULTFRIGATE,
	HGN_DEFENSEFIELDFRIGATE,
	HGN_IONCANNONFRIGATE,
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	HGN_TORPEDOFRIGATE,
	HGN_TORPEDOFRIGATEELITE,
	VGR_ASSAULTFRIGATE,
	VGR_HEAVYMISSILEFRIGATE,
	VGR_INFILTRATORFRIGATE,
	KUS_ASSAULTFRIGATE,
	KUS_IONCANNONFRIGATE,
	KUS_DRONEFRIGATE,
	KUS_SUPPORTFRIGATE,
	TAI_ASSAULTFRIGATE,
	TAI_IONCANNONFRIGATE,
	TAI_FIELDFRIGATE,
	TAI_SUPPORTFRIGATE,
}
squadclass[eCapture] = {
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	VGR_INFILTRATORFRIGATE,
	--KUS_SALVAGECORVETTE,
	--TAI_SALVAGECORVETTE,
}
squadclass[eShield] = {
	HGN_DEFENSEFIELDFRIGATE,
	TAI_FIELDFRIGATE,
}
squadclass[ePlatform] = {
	HGN_GUNTURRET,
	HGN_IONTURRET,	
	VGR_WEAPONPLATFORM_GUN,
	VGR_WEAPONPLATFORM_MISSILE,
	VGR_HYPERSPACE_PLATFORM,
}
squadclass[eAntiFighter] = {
	HGN_INTERCEPTOR,
	HGN_ASSAULTCORVETTE,
	HGN_ASSAULTFRIGATE,
	HGN_GUNTURRET,	
	VGR_INTERCEPTOR,
	VGR_ASSAULTFRIGATE,
	VGR_WEAPONPLATFORM_GUN,
	KUS_INTERCEPTOR,
	KUS_DEFENDER,	
	KUS_LIGHTCORVETTE,  
	KUS_MULTIGUNCORVETTE,
	KUS_DRONEFRIGATE,
	KUS_MISSILEDESTROYER,
	TAI_INTERCEPTOR,  
	TAI_DEFENDER, 
	TAI_LIGHTCORVETTE,
	TAI_MULTIGUNCORVETTE,
	TAI_MISSILEDESTROYER,
	KPR_ATTACKDROID,
	KPR_ATTACKDROID_HWC,
	KPR_DESTROYER,
	KPR_DESTROYER_HWC,
}
squadclass[eAntiCorvette] = {
	HGN_PULSARCORVETTE,
	HGN_TORPEDOFRIGATE,
	HGN_TORPEDOFRIGATEELITE,
	HGN_DESTROYER,	
	VGR_LANCEFIGHTER,
	VGR_LASERCORVETTE,
	VGR_DESTROYER,	
	KUS_DEFENDER,		
	KUS_HEAVYCORVETTE,  
	KUS_MULTIGUNCORVETTE,
	KUS_ASSAULTFRIGATE,	
	KUS_DRONEFRIGATE,
	KUS_DESTROYER,	
	KUS_MISSILEDESTROYER,
	TAI_DEFENDER, 	
	TAI_HEAVYCORVETTE,		
	TAI_MULTIGUNCORVETTE,
	TAI_ASSAULTFRIGATE,
	TAI_DESTROYER,
	TAI_MISSILEDESTROYER,
	KPR_ATTACKDROID,
	KPR_ATTACKDROID_HWC,
	KPR_MOVER,
	KPR_DESTROYER,
	KPR_DESTROYERM10,
	KPR_DESTROYER_HWC,
}
squadclass[eAntiFrigate] = {
	HGN_IONTURRET,
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,
	HGN_IONCANNONFRIGATE,
	HGN_MARINEFRIGATE,
	HGN_MARINEFRIGATE_SOBAN,
	HGN_DEFENSEFIELDFRIGATE,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,	
	VGR_BOMBER,
	VGR_HEAVYMISSILEFRIGATE,
	VGR_INFILTRATORFRIGATE,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_WEAPONPLATFORM_MISSILE,
	KUS_ATTACKBOMBER,
	KUS_IONCANNONFRIGATE,
	KUS_DESTROYER,	
	KUS_HEAVYCRUISER,	
	TAI_ATTACKBOMBER,	
	TAI_DEFENSEFIGHTER,
	TAI_IONCANNONFRIGATE,
	TAI_DESTROYER,	
	TAI_HEAVYCRUISER,
	KPR_DESTROYER,
	KPR_DESTROYERM10,
	KPR_DESTROYER_HWC,
	KPR_MOVER,
	KPR_SAJUUK,
	KPR_SAJUUK_HWC,
}
squadclass[eCapital] = {
	HGN_CARRIER,
	HGN_CARRIER_RESEARCH0,
	HGN_MOTHERSHIP,
	HGN_MOTHERSHIP_RESEARCH0,
	HGN_SHIPYARD,
	HGN_SHIPYARD_RESEARCH0,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,
	HGN_DREADNAUGHT,	
	VGR_CARRIER,
	VGR_CARRIER_CARRIERONLY1,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_SHIPYARD,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	VGR_COMMSTATION,
	VGR_COMMSTATION_HWC,
	VGR_PRISONSTATION,
	VGR_PRISONSTATION_HWC,
	KUS_MOTHERSHIP,
	KUS_CARRIER,	
	KUS_DESTROYER,
	KUS_MISSILEDESTROYER,
	KUS_HEAVYCRUISER,	
	TAI_MOTHERSHIP,
	TAI_CARRIER,	
	TAI_DESTROYER,
	TAI_MISSILEDESTROYER,
	TAI_HEAVYCRUISER,
	KPR_DESTROYER,
	KPR_DESTROYER_HWC,
	KPR_SAJUUK,
	KPR_SAJUUK_HWC,
}
squadclass[eNonThreat] = {
	HGN_RESOURCECOLLECTOR,
	HGN_RESOURCECONTROLLER,
	HGN_CARRIER,
	HGN_CARRIER_RESEARCH0,
	HGN_MOTHERSHIP,
	HGN_MOTHERSHIP_RESEARCH0,
	HGN_SHIPYARD,
	HGN_SHIPYARD_RESEARCH0,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	HGN_SCOUT,
	HGN_PROBE,
	HGN_PROXIMITYSENSOR,
	HGN_ECMPROBE,	
	VGR_RESOURCECOLLECTOR,
	VGR_RESOURCECONTROLLER,	
	VGR_CARRIER,
	VGR_CARRIER_CARRIERONLY1,
	VGR_MOTHERSHIP,
	VGR_MOTHERSHIP_MAKAAN,
	VGR_SHIPYARD,	
	VGR_SCOUT,
	VGR_PROBE,
	VGR_PROBE_PROX,
	VGR_PROBE_ECM,	
	VGR_HYPERSPACE_PLATFORM,
	VGR_COMMSTATION,
	VGR_COMMSTATION_HWC,
	VGR_PRISONSTATION,
	VGR_PRISONSTATION_HWC,
	KUS_RESOURCECOLLECTOR,
	KUS_RESOURCECONTROLLER,
	KUS_REPAIRCORVETTE,
	KUS_MOTHERSHIP,
	KUS_CARRIER,
	KUS_SCOUT,
	KUS_PROBE,
	KUS_PROXIMITYSENSOR,	
	KUS_SENSORARRAY,
	KUS_CLOAKGENERATOR,
	KUS_RESEARCHSHIP,
	KUS_RESEARCHSHIP_1,
	KUS_RESEARCHSHIP_2,
	KUS_RESEARCHSHIP_3,
	KUS_RESEARCHSHIP_4,
	KUS_RESEARCHSHIP_5,
	TAI_RESOURCECOLLECTOR,
	TAI_RESOURCECONTROLLER,
	TAI_REPAIRCORVETTE,
	TAI_MOTHERSHIP,
	TAI_CARRIER,
	TAI_SCOUT,
	TAI_PROBE,
	TAI_PROXIMITYSENSOR,
	TAI_SENSORARRAY,
	TAI_CLOAKGENERATOR,
	TAI_RESEARCHSHIP,
	TAI_RESEARCHSHIP_1,
	TAI_RESEARCHSHIP_2,
	TAI_RESEARCHSHIP_3,
	TAI_RESEARCHSHIP_4,
	TAI_RESEARCHSHIP_5,
}
squadclass[eHyperspaceGate] = 
{
	VGR_HYPERSPACE_PLATFORM
}
squadclass[eSubSystemAttackers] = 
{
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,
	VGR_BOMBER,
	KUS_ATTACKBOMBER,
	TAI_ATTACKBOMBER,
	KPR_ATTACKDROID,
	KPR_ATTACKDROID_HWC,
}
squadclass[eNonCriticalSubSys] = 
{
	CLOAKGENERATOR,
	FIRECONTROLTOWER,
	HYPERSPACEINHIBITOR,
	ADVANCEDARRAY,
	CLOAKSENSOR,
}
squadclass[eGoodRepairAttackers] = 
{
	HGN_INTERCEPTOR,
	HGN_ASSAULTFRIGATE,
	HGN_IONCANNONFRIGATE,
	HGN_DESTROYER,
	HGN_BATTLECRUISER,	
	VGR_INTERCEPTOR,
	VGR_MISSILECORVETTE,
	VGR_ASSAULTFRIGATE,
	VGR_DESTROYER,
	VGR_BATTLECRUISER,
	KUS_INTERCEPTOR,
	KUS_MULTIGUNCORVETTE,	
	KUS_ASSAULTFRIGATE,
	KUS_IONCANNONFRIGATE,
	KUS_DESTROYER,
	KUS_MISSILEDESTROYER,
	KUS_HEAVYCRUISER,
	TAI_INTERCEPTOR,
	TAI_MULTIGUNCORVETTE,	
	TAI_ASSAULTFRIGATE,
	TAI_IONCANNONFRIGATE,
	TAI_DESTROYER,
	TAI_MISSILEDESTROYER,
	TAI_HEAVYCRUISER,
	KPR_ATTACKDROID,
	KPR_ATTACKDROID_HWC,
	KPR_MOVER,
	KPR_DESTROYER,
	KPR_DESTROYERM10,
	KPR_DESTROYER_HWC,
	KPR_SAJUUK,
	KPR_SAJUUK_HWC,
}

-------------------------------------------
-- CUSTOM classes
-- eMaxCount equals 22; do not exceed eMaxUserCount, which equals 32
eUselessShips			= eMaxCount
eBattleCruiser			= eMaxCount + 1
eATTACKBOMBER			= eMaxCount + 2
eASSAULTFRIGATE			= eMaxCount + 3
eHEAVYFRIGATE			= eMaxCount + 4
eWEAPONPLATFORM_GUN		= eMaxCount + 5
eWEAPONPLATFORM_ION		= eMaxCount + 6
eINTERCEPTOR			= eMaxCount + 7
eASSAULTCORVETTE		= eMaxCount + 8
ePULSARCORVETTE			= eMaxCount + 9
eTORPEDOFRIGATE			= eMaxCount + 10
eSHIPYARD			= eMaxCount + 11
eCARRIER			= eMaxCount + 12
sg_maxClasses			= eMaxCount + 13

squadclass[eUselessShips] = 
{
	HGN_MINELAYERCORVETTE,	
	VGR_MINELAYERCORVETTE,
	VGR_COMMANDCORVETTE,
	KUS_MINELAYERCORVETTE,	
	KUS_CLOAKEDFIGHTER,
	KUS_SUPPORTFRIGATE,
	KUS_SALVAGECORVETTE,
	TAI_MINELAYERCORVETTE,
	TAI_SUPPORTFRIGATE,
	TAI_SALVAGECORVETTE,
}
squadclass[eBattleCruiser] = 
{
	HGN_BATTLECRUISER,
	VGR_BATTLECRUISER,
	KUS_HEAVYCRUISER,
	TAI_HEAVYCRUISER,
	KPR_SAJUUK,
	KPR_SAJUUK_HWC,
	KPR_DESTROYER,
	KPR_DESTROYER_HWC,
}
squadclass[eATTACKBOMBER] =
{
	HGN_ATTACKBOMBER,
	HGN_ATTACKBOMBERELITE,
	VGR_BOMBER,
	KUS_ATTACKBOMBER,
	TAI_ATTACKBOMBER,
}
squadclass[eASSAULTFRIGATE] =
{
	HGN_ASSAULTFRIGATE,
	VGR_ASSAULTFRIGATE,
	KUS_ASSAULTFRIGATE,
	TAI_ASSAULTFRIGATE,
}
squadclass[eHEAVYFRIGATE] =
{
	HGN_IONCANNONFRIGATE,
	VGR_HEAVYMISSILEFRIGATE,
	KUS_IONCANNONFRIGATE,
	TAI_IONCANNONFRIGATE,
}
squadclass[eTORPEDOFRIGATE] =
{
	HGN_TORPEDOFRIGATE,
	HGN_TORPEDOFRIGATEELITE,
}
squadclass[eWEAPONPLATFORM_GUN] =
{
	HGN_GUNTURRET,
	VGR_WEAPONPLATFORM_GUN,
}
squadclass[eWEAPONPLATFORM_ION] =
{
	HGN_IONTURRET,	
	VGR_WEAPONPLATFORM_MISSILE,
}
squadclass[eINTERCEPTOR] =
{
	HGN_INTERCEPTOR,
	VGR_INTERCEPTOR,
	KUS_INTERCEPTOR,
	TAI_INTERCEPTOR,
}
squadclass[eASSAULTCORVETTE] =
{
	HGN_ASSAULTCORVETTE,
	VGR_MISSILECORVETTE,
	KUS_LIGHTCORVETTE,
	TAI_LIGHTCORVETTE,
}
squadclass[ePULSARCORVETTE] =
{
	HGN_PULSARCORVETTE,
	VGR_LASERCORVETTE,
	KUS_LIGHTCORVETTE,
	KUS_SALVAGECORVETTE,
	KUS_MULTIGUNCORVETTE,
	TAI_HEAVYCORVETTE,
	TAI_MULTIGUNCORVETTE,
	KPR_MOVER,
}
squadclass[eSHIPYARD] = {
	HGN_SHIPYARD,
	HGN_SHIPYARD_ELOHIM,
	HGN_SHIPYARD_SPG,
	VGR_SHIPYARD,
}
squadclass[eCARRIER] = {
	HGN_CARRIER,
	VGR_CARRIER,
	KUS_CARRIER,
	TAI_CARRIER,
}

function FastAddToClass( tbl, classid )
	for a, b in tbl do
		AddToClass( b, classid )
	end
end

function ClassInitialize()
	for i = 0, sg_maxClasses do
		if (squadclass[i]) then
			FastAddToClass( squadclass[i], i )
		end
	end		
	AddClassName(eMotherShip, "Motherships")
	AddClassName(eCollector, "Collectors")
	AddClassName(eDropOff, "DropOffs")
	AddClassName(eFighter, "Fighters")
	AddClassName(eFrigate, "Frigates")
	AddClassName(eCorvette, "Corvettes")
	AddClassName(eCapital, "Capital")
	AddClassName(eAntiFighter, "AntiFighter")
	AddClassName(eAntiCorvette, "AntiCorvette")
	AddClassName(eAntiFrigate, "AntiFrigate")
	AddClassName(ePlatform, "Platform")
	AddClassName(eRefinery, "Refinery")
	AddClassName(eHyperspaceGate, "HypGates")
	AddClassName(eShield, "Shields")
	AddClassName(eCapture, "Capture")
	AddClassName(eSubSystemAttackers, "SubSysKillas")
	AddClassName(eBattleCruiser, "BattleCruiser")
	AddClassName(eATTACKBOMBER, "AttackBomber")
end
