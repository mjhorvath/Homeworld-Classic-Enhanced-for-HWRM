dofilepath("data:scripts/utilfunc.lua")

if not (RUsRatio) then	RUsRatio = 1	end
if not (PebRatio) then	PebRatio = 7/8	end
if not (NebRatio) then	NebRatio = 1/100	end
if not (RUScale) then	RUScale	 = 1	end
if not (MapScale) then	MapScale = 1/3	end
if not (UniverseScale) then	UniverseScale = 1.2	end
if not (MinSensorsZoomOverride) then	MinSensorsZoomOverride = -1	end
if not (MaxSensorsZoomOverride) then	MaxSensorsZoomOverride = -1	end
if not (AdvancedGameRule) then	AdvancedGameRule = 1	end
if not (RandomSeedValue) then	RandomSeedValue = newseed(-763261)	end	-- seed must be a negative integer
if not (ShowTextClouds) then	ShowTextClouds = 0	end

--	HWRM    HW1C   Param
--	800     575    BuildCost
--	206     325    MaxSpeed

--	0.3048		= Meters/Feet ratio
--	0.35		= GearBox scale adjustment according to EatThePath
--	1/3			= the value I am using

CountLPs, CountRUs, CountLoops, CountPebbles, CountBlobs = 0, 0, 0, 0, 0
CountPlayerSquadrons = {0,0,0,0,0,0,0,0}
CountNonPlayerSquadrons, CountDerelictSquadrons, CountAllSquadrons = 0, 0, 0
PebNumo, PebDeno = decimal_to_fraction(PebRatio)
debug_objects = 0


--------------------------------------------------------------------------------
-- Map Conversion Data

-- resource conversion table
-- file name, RU amount, number of latch points, radius
ResourceTable =
{
	-- hw1c: 0 (11), 25, 40, 100, 400
	-- hwcc: 0, 160, 720, 2600, 7920
	-- hw2c: 0, 0, 9000, 18000, 40000
	-- hwrm: ?,?,?,?,?
	asteroid0 = {"asteroid_m_0",  11, 1, nil,},
	asteroid1 = {"asteroid_m_1",  25, 1, nil,},
	asteroid2 = {"asteroid_m_2",  40, 1, nil,},
	asteroid3 = {"asteroid_m_3", 100, 2, nil,},
	asteroid4 = {"asteroid_m_4", 400, 3, nil,},
	-- hw1c: 50, 108, 250, 700, ???
	-- hwcc: 50, 108, 250, 700, ???
	dustcloud0 = {"dustcloud_m_0",   50, 1,  100,},
	dustcloud1 = {"dustcloud_m_1",  108, 1,  200,},
	dustcloud2 = {"dustcloud_m_2",  250, 1,  600,},
	dustcloud3 = {"dustcloud_m_3",  700, 1, 1200,},
	dustcloud4 = {"dustcloud_m_3", 1500, 1, 1800,},			-- the remastered version of the game is missing this item
	-- hw1c: 100, 100, 100, 100
	-- hwcc: 100, 100, 100, 100
	nebula0 = {"nebula_m_0", 100, 1, 85.75,},			-- the remastered version of the game is only using this one
	nebula1 = {"nebula_m_0", 100, 1, 85.75,},
	nebula2 = {"nebula_m_0", 100, 1, 85.75,},
	nebula3 = {"nebula_m_0", 100, 1, 85.75,},
	nebula4 = {"nebula_m_0", 100, 1, 85.75,},
	-- hw1c: n/a, n/a
	-- hwcc: 6000, 10000
	dcrystal0 = {"crystal_m_1",  6000, 1, nil,},
	dcrystal1 = {"crystal_m_2", 10000, 1, nil,},
}

-- HW1C did not use pebbles, but I need them to reduce the number of asteroids
PebbleTable =
{
	"pebble_m_0",
	"pebble_m_1",
	"pebble_m_2",
}

-- ship conversion table
ShipTable =
{
	-- done
	r1 =
	{
		advancesupportfrigate = "kus_supportfrigate",
		attackbomber = "kus_attackbomber",
		carrier = "kus_carrier",
		cloakedfighter = "kus_cloakedfighter",
		cloakgenerator = "kus_cloakgenerator",
		cryotray = "kus_cryotray",
		dddfrigate = "kus_dronefrigate",
		drone = "kus_drone0",
		gravwellgenerator = "kus_gravwellgenerator",
		headshotasteroid = "kus_headshotasteroid",
		heavycorvette = "kus_heavycorvette",
		heavycruiser = "kus_heavycruiser",
		heavydefender = "kus_defender",
		heavyinterceptor = "kus_interceptor",
		ioncannonfrigate = "kus_ioncannonfrigate",
		lightcorvette = "kus_lightcorvette",
		lightdefender = "kus_lightdefender",
		lightinterceptor = "kus_scout",
		minelayercorvette = "kus_minelayercorvette",
		missiledestroyer = "kus_missiledestroyer",
		mothership = "kus_mothership",
		multiguncorvette = "kus_multiguncorvette",
		probe = "kus_probe",
		proximitysensor = "kus_proximitysensor",
		repaircorvette = "kus_repaircorvette",
		researchship = "kus_assaultfrigate",
		resourcecollector = "kus_resourcecollector",
		resourcecontroller = "kus_resourcecontroller",
		salcapcorvette = "kus_salvagecorvette",
		sensorarray = "kus_sensorarray",
		standarddestroyer = "kus_destroyer",
		standardfrigate = "kus_assaultfrigate",
		targetdrone = "kus_targetdrone",
	},
	-- done
	r2 =
	{
		advancesupportfrigate = "tai_supportfrigate",
		attackbomber = "tai_attackbomber",
		carrier = "tai_carrier",
		cloakgenerator = "tai_cloakgenerator",
		cryotray = "tai_cryotray",
		defensefighter = "tai_defensefighter",
		dfgfrigate = "tai_fieldfrigate",
		gravwellgenerator = "tai_gravwellgenerator",
		headshotasteroid = "tai_headshotasteroid",
		heavycorvette = "tai_heavycorvette",
		heavycruiser = "tai_heavycruiser",
		heavydefender = "tai_defender",
		heavyinterceptor = "tai_interceptor",
		ioncannonfrigate = "tai_ioncannonfrigate",
		lightcorvette = "tai_lightcorvette",
		lightdefender = "tai_lightdefender",
		lightinterceptor = "tai_scout",
		minelayercorvette = "tai_minelayercorvette",
		missiledestroyer = "tai_missiledestroyer",
		mothership = "tai_mothership",
		multiguncorvette = "tai_multiguncorvette",
		probe = "tai_probe",
		proximitysensor = "tai_proximitysensor",
		repaircorvette = "tai_repaircorvette",
		researchship = "tai_assaultfrigate",
		resourcecollector = "tai_resourcecollector",
		resourcecontroller = "tai_resourcecontroller",
		salcapcorvette = "tai_salvagecorvette",
		sensorarray = "tai_sensorarray",
		standarddestroyer = "tai_destroyer",
		standardfrigate = "tai_assaultfrigate",
		targetdrone = "tai_targetdrone",
	},
	-- done
	p1 =
	{
		p1fighter = "tur_fighter",
		p1ionarrayfrigate = "tur_ionarrayfrigate",
		p1missilecorvette = "tur_missilecorvette",
		p1mothership = "tur_p1mothership",
		p1standardcorvette = "tur_standardcorvette",
	},
	-- done
	p2 =
	{
		p2advanceswarmer = "kad_advancedswarmer",
		p2fuelpod = "kad_fuelpod",
		p2mothership = "kad_p2mothership",
		p2multibeamfrigate = "kad_multibeamfrigate",
		p2swarmer = "kad_swarmer",
	},
	-- somewhat done
	p3 =
	{
		p3frigate = "kpr_mover",												-- ???
		p3megaship = "misc_t-matmegaship",
		p3destroyer = "kpr_destroyer",											-- ???
	},
	-- mostly done
	traders =
	{
		cargobarge = "ben_cargobarge",
		floatingcity = "ben_bentusiexchange",
		ghostship = "der_ghostship",
		junk_lgun = "junk_autogunl",
		junk_sgun = "junk_autoguns",
		junkyarddawg = "junk_junkyarddog",
		junkyardhq = "junk_junkyardoffice",
		miningbase = "meg_gehenna_1",											-- ???
		researchstation = "meg_sajhulkturret",									-- ???
		researchstationbridge = "meg_sajhulknose",								-- ???
		researchstationtower = "meg_sajhulkpanels",								-- ???
	},
	-- mostly done
	derelicts =
	{
		advancesupportfrigate = "der_supportfrigate",
		angelmoon = "meg_angelmoon",
		angelmoon_clean = "meg_angelmoon",
		carrier = "der_carrier",
		crate = "der_crate",
		dddfrigate = "der_dddfrigate",
		fragment = "meg_foundrydebris_chunk4",									-- ???
		fragmentpanel0a = "der_fragmentpanel0a",
		fragmentpanel0b = "der_fragmentpanel0b",
		fragmentpanel0c = "der_fragmentpanel0c",
		fragmentpanel1 = "der_fragmentpanel1",
		fragmentpanel2 = "der_fragmentpanel2",
		fragmentpanel3 = "der_fragmentpanel3",
		fragmentstrut = "der_fragmentstrut",
		heavycorvette = "der_heavycorvette",
		heavycruiser = "der_heavycruiser",
		homeworld = "meg_homeworld",
		ioncannonfrigate = "hgn_ioncannonfrigate",								-- ???
		junk0_antenna = "der_junk0_antenna",
		junk0_fin1 = "der_junk0_fin1",
		junk0_fin2 = "der_junk0_fin2",
		junk0_gunammo = "der_junk0_gunammo",
		junk0_lgun = "hgn_gunplatform",											-- ???
		junk0_panel = "der_junk0_panel",
		junk0_sensors = "der_junk0_sensors",
		junk0_sgun = "hgn_gunturret",											-- ???
		junk1_parta = "der_junk1_parta",
		junk1_partb = "der_junk1_partb",
		junk1_shell = "der_junk1_shell",
		junk1_strut = "der_junk1_strut",
		junk2_panela = "der_junk2_panela",
		junk2_panelb = "der_junk2_panelb",
		junk2_panelc = "der_junk2_panelc",
		junk2_paneld = "der_junk2_paneld",
		junk2_shipwreck = "der_junk2_shipwreck",
		junk3_boiler = "der_junk3_boiler",
		junk3_boilercasing = "der_junk3_boilercasing",
--		lifeboat = "der_lifeboat",												-- crashes the game
		lifeboat = "der_junk0_panel",
		lightcorvette = "der_lightcorvette",
		m13panela = "meg_foundrydebris_chunk1",									-- ???
		m13panelb = "meg_foundrydebris_chunk2",									-- ???
		m13panelc = "meg_foundrydebris_chunk3",									-- ???
		minelayercorvette = "der_minelayercorvette",
		multiguncorvette = "der_multiguncorvette",
--		planetoforigin = "meg_kharak",
--		planetoforigin_scarred = "meg_kharakburned",
		prisonshipnew = "der_prisonshipnew",
		prisonshipold = "der_prisonshipold",
		repaircorvette = "der_repaircorvette",
		resourcecontroller = "sp_tanker",										-- ???
		salcapcorvette = "meg_salvagecollector",								-- ???
		scaffold = "der_scaffold",
		scaffold_scarred = "der_scaffold_scarred",
		scaffoldfingera_scarred = "der_scaffoldfingera_scarred",
		scaffoldfingerb_scarred = "der_scaffoldfingerb_scarred",
		shipwreck = "der_shipwreck",
		standardfrigate = "meg_misslefrigate",
	},
	-- not done at all
	race_sect =
	{
		smothership = "hgn_mothership",
		srecon = "hgn_scout",
		sacolyte = "hgn_interceptor",
		smimic = "hgn_attackbomber",
		sacv = "hgn_assaultcorvette",
		smcv = "hgn_pulsarcorvette",
		srammingfrigate = "hgn_marinefrigate",
		smultibeamfrigate = "hgn_ioncannonfrigate",
		shivefrigate = "hgn_assaultfrigate",
		sdestroyer = "hgn_destroyer",
		sdreadnought = "hgn_battlecruiser",
		scarrier = "hgn_carrier",
		sprocessor = "hgn_resourcecontroller",
		sworker = "hgn_resourcecollector",
		sleech = "hgn_ionturret",
		ssentinel = "hgn_gunturret",
	},
	-- not done at all
	race_beast =
	{
		bmothership = "vgr_mothership",
		brecon = "vgr_scout",
		bacolyte = "vgr_lancefighter",
		binterceptor = "hgn_interceptor",
		bcloakedfighter = "vgr_lancefighter",
		battackbomber = "vgr_bomber",
		bmultiguncorvette = "vgr_assaultcorvette",
		bmissilecorvette = "vgr_missilecorvette",
		bheavycorvette = "vgr_lasercorvette",
		bionarrayfrigate = "vgr_assaultfrigate",
		bmultibeamfrigate = "vgr_heavymissilefrigate",
		bhivefrigate = "vgr_assaultfrigate",
		bdfgfrigate = "vgr_infiltratorfrigate",
		brammingfrigate = "vgr_infiltratorfrigate",
		bmissiledestroyer = "vgr_destroyer",
		bheavycruiserbcarrier = "vgr_battlecruiser",
		bprocessor = "vgr_resourcecontroller",
		bworker = "vgr_resourcecollector",
		bcruisemissile = "vgr_planetkillermissile",
		bsentinel = "vgr_weaponplatform_gun",
	},
	-- done
	race_kushan =
	{
		kcarrier = "kus_carrier",
		kheavyinterceptor = "kus_interceptor",
		kheavydefender = "kus_defender",
		kattackbomber = "kus_attackbomber",
		kheavycorvette = "kus_heavycorvette",
		kmultiguncorvette = "kus_multiguncorvette",
		ksalcapcorvette = "kus_salvagecorvette",
		kioncannonfrigate = "kus_ioncannonfrigate",
		kadvancesupportfrigate = "kus_supportfrigate",
		kstandarddestroyer = "kus_destroyer",
		kheavycruiser = "kus_heavycruiser",
		kproximitysensor = "kus_proximitysensor",
		kgravwellgenerator = "kus_gravwellgenerator",
	},
	-- done
	race_taidan =
	{
		tcarrier = "tai_carrier",
		theavyinterceptor = "tai_interceptor",
		tattackbomber = "tai_attackbomber",
		theavydefender = "tai_defender",
		tmultiguncorvette = "tai_multiguncorvette",
		tminelayercorvette = "tai_minelayercorvette",
		tsalcapcorvette = "tai_salvagecorvette",
		tstandardfrigate = "tai_assaultfrigate",
		tioncannonfrigate = "tai_ioncannonfrigate",
		tadvancesupportfrigate = "tai_supportfrigate",
		tdfgfrigate = "tai_fieldfrigate",
		tstandarddestroyer = "tai_destroyer",
		tmissiledestroyer = "tai_missiledestroyer",
		theavycruiser = "tai_heavycruiser",
		tresourcecollector = "tai_resourcecollector",
		tproximitysensor = "tai_proximitysensor",
		tgravwellgenerator = "tai_gravwellgenerator",
	},
	-- mostly done
	race_p1 =
	{
		p1mothership = "tur_p1mothership",
		p1outpost = "meg_tanis",												-- ???
		p1fighter = "tur_fighter",
		p1standardcorvette = "tur_standardcorvette",
		p1missilecorvette = "tur_missilecorvette",
		p1ionarrayfrigate = "tur_ionarrayfrigate",
	},
	-- mostly done
	race_traders =
	{
		trcargobarge = "ben_cargobarge",
		trghostship = "der_ghostship",
		trfloatingcity = "ben_bentusiexchange",
		trjunk_lgun = "junk_autogunl",
		trjunk_sgun = "junk_autoguns",
		trjunkyarddawg = "junk_junkyarddog",
		trjunkyardhq = "junk_junkyardoffice",
		trminingbase = "vgr_prisonstation",										-- ???
		trresearchstation = "vgr_listeningpost",								-- ???
	},
	-- somewhat done
	race_derelict =
	{
		homeworld = "meg_homeworld",
		lavaball = "meg_gehenna_6",												-- ???
		mattworld = "meg_angelmoon",											-- ???
--		planetoforigin = "meg_kharak",
--		planetoforigin_scarred = "meg_kharakburned",
		galaxy = "meg_tanis",													-- ???
--		dplanetoforigin = "meg_kharak",
--		ddeadplanet = "meg_kharakburned",										-- ???
--		dfirstplanet = "meg_kharak",											-- ???
		ghostship = "der_ghostship",
		decclesiam = "kad_fuelpod",												-- ???
		decclesiaminfected = "kad_fuelpod",										-- ???
		dprisonship = "der_prisonshipnew",
		dprisonshipinfected = "der_prisonshipold",								-- ???
		dnomadfieldemitter = "meg_relic_rugenerator",							-- ???
		dnomadmoon = "meg_angelmoon",											-- ???
		dbiggun = "meg_sajhulkturret",											-- ???
		dbiggununit = "meg_sajhulknose",										-- ???
		djunk1parta = "der_junk1_parta",
		djunk1shell = "der_junk1_shell",
		djunk1strut = "der_junk1_strut",
		djunk2shipwreck = "der_junk2_shipwreck",
		djunk3boiler = "der_junk3_boiler",
		djunk3boilercasing = "der_junk3_boilercasing",
		dbeastdockingbay = "meg_tanisstructure_medium",							-- ???
		dbeastmothership = "meg_foundry",										-- ???
		dacolyte = "kpr_attackdroid",											-- ???
		dionarrayfrigate = "tur_ionarrayfrigate",								-- ???
		dioncannonfrigate = "kus_ioncannonfrigate",								-- ???
		dkushancarrier = "kus_carrier",											-- ???
		drko = "kus_targetdrone",												-- ???
		dcrate = "meg_crate_hw1container",										-- ???
		dbuoy = "kus_targetdrone",												-- ???
		dmessagepod = "kus_targetdrone",										-- ???
		dnisbuoy = "kus_targetdrone",											-- ???
		dcrate = "meg_crate_hw1container",
		dcrystal0 = "meg_crate_hw1container",									-- resources
		dcrystal1 = "meg_crate_hw1container",									-- resources
		dslipgatelarge = "meg_balcoragate",										-- ???
		dslipgatemedium = "meg_balcoragate",									-- ???
		dslipgatesmall = "meg_balcoragate",										-- ???
		dslipgatesmall = "meg_balcoragate",										-- ???
		dslipgatenode = "meg_balcoragate",										-- ???
	},
}

MusicTable =
{
	["-1"] = nil,
	-- hw1 ambient
	["0"] = "data:sound/music/ambient/a02_mission2and4",
	["1"] = "data:sound/music/ambient/a04_mission5",
	["2"] = "data:sound/music/ambient/a05_mission6and12",
	["3"] = "data:sound/music/ambient/a06_mission7and8",
	["4"] = "data:sound/music/ambient/a07_mission9",
	["5"] = "data:sound/music/ambient/a08_mission10",
	["6"] = "data:sound/music/ambient/a09_mission11and15",
	["7"] = "data:sound/music/ambient/a11_mission13",
	["8"] = "data:sound/music/ambient/a12_mission14",
	["9"] = "data:sound/music/ambient/tutorial",
	-- hw1 battle
	["10"] = "data:sound/music/battle/a01_mission1and16",
	["11"] = "data:sound/music/battle/a03_mission3",
	["12"] = "data:sound/music/battle/b01_turanicraiderslong",
	["13"] = "data:sound/music/battle/b02_turanicraidersshort",
	["14"] = "data:sound/music/battle/b03_swarmers",
	["15"] = "data:sound/music/battle/b04_evilempire",
	["16"] = "data:sound/music/battle/nislet01",
	-- hw1 NIS
	["17"] = "data:sound/music/nis/n01_r1opening",
	["18"] = "data:sound/music/nis/n01_r2opening",
	["19"] = "data:sound/music/nis/n02_p1intro",
	["20"] = "data:sound/music/nis/n03_tradersintro",
	["21"] = "data:sound/music/nis/n04_learnofsacking",
	["22"] = "data:sound/music/nis/n05_p2intro",
	["23"] = "data:sound/music/nis/n06_supernova",
	["24"] = "data:sound/music/nis/n07_p3vstraders",
	["25"] = "data:sound/music/nis/n08_awareness",
	["26"] = "data:sound/music/nis/n09_headshot",
	["27"] = "data:sound/music/nis/n10_miningfacility",
	["28"] = "data:sound/music/nis/n10_miningfacility",			-- Yes is gone
	-- hw1 animatic
	["29"] = "data:sound/music/animatic/anim_00_opening",		-- Sierra is gone
	["30"] = "data:sound/music/animatic/anim_00_opening",		-- Relic is gone
	["31"] = "data:sound/music/animatic/anim_00_opening",
	["32"] = "data:sound/music/animatic/anim_01_02",
	["33"] = "data:sound/music/animatic/anim_02_03",
	["34"] = "data:sound/music/animatic/anim_03_04",
	["35"] = "data:sound/music/animatic/anim_04_05",
	["36"] = "data:sound/music/animatic/anim_05_06",
	["37"] = "data:sound/music/animatic/anim_06_07",
	["38"] = "data:sound/music/animatic/anim_07_08",
	["39"] = "data:sound/music/animatic/anim_08_09",
	["40"] = "data:sound/music/animatic/anim_09_10",
	["41"] = "data:sound/music/animatic/anim_10_11",
	["42"] = "data:sound/music/animatic/anim_11_12",
	["43"] = "data:sound/music/animatic/anim_12_13",
	["44"] = "data:sound/music/animatic/anim_13_14",
	["45"] = "data:sound/music/animatic/anim_14_15",
	["46"] = "data:sound/music/animatic/anim_15_16",
	["47"] = "data:sound/music/animatic/anim_ending",
	-- cata
	["48"] = "data:sound/music/battle/battle_04",								-- ???
	["49"] = "data:sound/music/battle/battle_04",								-- ???
}

BackgroundTable =
{
	default = "m02",
	-- hw1
	ez01 = "ez01",
	ez02 = "ez02",
	ez03 = "ez03",	-- doesn't exist, but some maps reference it anyway
	ez04 = "ez04",
	ez05 = "ez05",
	ez06 = "ez06",
	ez07 = "ez07",
	ez08 = "ez08",
	ez09 = "ez09",
	ez10 = "ez10",
	ez11 = "ez11",
	ez12 = "ez12",
	ez13 = "ez13",
	ez14 = "ez14",
	ez15 = "ez15",
	ez16 = "ez16",
	-- cata
	mission01 = "m01",
	mission02 = "m07",
	mission03 = "m07",
	mission04 = "m15",
	mission05 = "m15",
	mission06 = "m13",
	mission07 = "m08",
	mission08 = "m14",
	mission09 = "m09",
	mission10 = "m10",
	mission11 = "m11",
	mission12 = "m06",
	mission13 = "m03",
	mission14 = "m04",
	mission15 = "m05",
	mission16 = "m12",
	mission17 = "m12",
	nis01 = "m01",
	nis02 = "m07",
	nis03 = "m07",
	nis04 = "m15",
	nis05 = "m15",
	nis06 = "m13",
	nis07 = "m08",
	nis08 = "m14",
	nis09 = "m09",
	nis10 = "m10",
}


--------------------------------------------------------------------------------
-- Standard Map Code

if (NumberOfPlayers == 2) then
	DescColor = "FF4800"
elseif (NumberOfPlayers == 3) then
	DescColor = "FF0048"
elseif (NumberOfPlayers == 4) then
	DescColor = "48FF00"
elseif (NumberOfPlayers == 5) then
	DescColor = "00FF48"
elseif (NumberOfPlayers == 6) then
	DescColor = "4800FF"
elseif (NumberOfPlayers == 7) then
	DescColor = "0048FF"
elseif (NumberOfPlayers == 8) then
	DescColor = "FF48FF"
end

--levelDesc = [[<c=]] .. DescColor .. [[>]] .. SourceGame .. [[ - ]] .. LevelName .. [[</c>]]
levelDesc = [[<c=]] .. DescColor .. [[>]] .. LevelName .. [[</c>]]
maxPlayers = NumberOfPlayers
player = {}

for k = 0, maxPlayers - 1 do
	player[k] = {id = k, name = "", raceName = "Vaygr_hwce", resources = 0, startPos = 1,}
end

function DetermChunk()
	-- level thumbnail generation stuff
	if (ShowTextClouds == 1) then
		addCamera("pieplatetest", {0,0,0,}, {0,1,0,})		-- 32768
	end

	setWorldBoundsInner({0, 0, 0,}, convert_position(vmultiply(UniverseSize, UniverseScale), MapScale))
	for i, iCount in StartPoints do
		AddStartPoints(i, iCount)
	end
	if (AdvancedGameRule == 1) then
		print("HWCM: AdvancedGameRule detected.")
		SpawnNonPlayerFleet()		-- no real point in spawning these since you can't interact with them like you could in HW1C, but whatever
		SpawnPlayerFleet()
	else
		print("HWCM: AdvancedGameRule not detected.")
	end
	for i, iCount in Derelicts do
		-- no point in spawning more than one ship at the same location since formations are unsupported, and non-player ships are always inert and can't move apart
		-- update: formations are support since 2.0-patch I think?
		-- AddSquadrons(sName, sType, tPosition, iPlayer, tRotation, iNumber, bHyper, sRace)
--		AddSquadrons("", iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], 0, "derelicts")
		AddSquadrons("", iCount[1], iCount[2], iCount[3], iCount[4], 1, 0, "derelicts")
		CountDerelictSquadrons = CountDerelictSquadrons + 1
	end
	for i, iCount in Resources do
		-- AddResources(tPosition, sLayout, sDistribution, iNumResources, fA, fB, fRotY, fRotZ)
		AddResources(iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8])
		CountBlobs = CountBlobs + 1
	end
	for i, iCount in Nebulae do
		-- should be using all five types of nebula here even if there is the only one model
		-- in the future there may be more models
		-- AddNebulas(tPosition, sLayout, sDistribution, iNumStrands, fSizX, fSizY, fSizZ, iNumChunks)
		AddNebulas(iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8])
		CountBlobs = CountBlobs + 1
	end
	for i, iCount in Crystals do
		-- AddCrystals(iAmount, sType, tPosition)
		AddCrystals(iCount[1], iCount[2], iCount[3])
		CountBlobs = CountBlobs + 1
	end

	print("HWCM: CountLPs = " .. CountLPs)
	print("HWCM: CountRUs = " .. CountRUs)
	print("HWCM: CountLoops = " .. CountLoops)
	print("HWCM: CountBlobs = " .. CountBlobs)
end

function NonDetermChunk()
	local MinSensorsZoom = SensorsZoom[1] * MapScale
	local MaxSensorsZoom = SensorsZoom[2] * MapScale
	if (MinSensorsZoomOverride ~= -1) then
		MinSensorsZoom = max(SensorsZoom[1] * MapScale, MinSensorsZoomOverride)
	end
	if (MaxSensorsZoomOverride ~= -1) then
		MaxSensorsZoom = min(SensorsZoom[2] * MapScale, MaxSensorsZoomOverride)
	end
	setSensorsManagerCameraDistances(MinSensorsZoom, MaxSensorsZoom)
	setGlareIntensity(0)
	setLevelShadowColour(0, 0, 0, 1)
	if (BackgroundTable[LevelBackground]) then
		loadBackground(BackgroundTable[LevelBackground])
		print("HWCM: Background " .. LevelBackground .. " loaded.")
	else
		loadBackground(BackgroundTable["default"])
		print("HWCM: Background " .. LevelBackground .. " not recognized, loading default background instead.")
	end
	if (MusicTable[LevelMusic]) then
		setDefaultMusic(MusicTable[LevelMusic])
		print("HWCM: Music " .. LevelMusic .. " loaded.")
	else
		setDefaultMusic(MusicTable["0"])
		print("HWCM: Music " .. LevelMusic .. " not recognized, loading default music instead.")
	end
end


--------------------------------------------------------------------------------
-- Custom Functions

function SpawnNonPlayerFleet()
	-- Derelicts and squadrons aren't currently stored in separate tables though they should be. [I forgot why?]
	-- Formations are not properly supported, yet. Until they are, adding more than one of each ship will result in overlapping ships and lots of lag as they try to spread out.
	-- Even with formations properly supported, the lag is still going to be considerably higher than normal.
	-- It would be nice to only spawn these when the StartWith setting is set to "From Map". But I don't think you can retain ships' positional information after you put them into hyperspace.
	print("HWCM: Spawning non-player fleet.")
	createSOBGroup("HE_Formation0")
	for i, iCount in Squadrons do
		local ShipNumber, ShipName, ShipType, ShipPosition, iPlayer, ShipRotation, iNumber, bHyper, sRace, sFormation = iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8], iCount[9], iCount[10]
		if (iPlayer == -1) then
			local iPlayerPlus = 0
			local SquadNum = CountNonPlayerSquadrons
			local SquadName = "HE_Player0Squadron" .. SquadNum
			local SquadGroup = "HE_Formation0"
			CountNonPlayerSquadrons = SquadNum + 1
--			if (sFormation == "null_formation") then
--			elseif (sFormation == "parade_formation") then
--			elseif (sFormation == "delta_formation") then
--			elseif (sFormation == "broad_formation") then
--			elseif (sFormation == "delta3d_formation") then
--			elseif (sFormation == "claw_formation") then
--			elseif (sFormation == "wall_formation") then
--			elseif (sFormation == "sphere_formation") then
--			elseif (sFormation == "picket_formation") then
--			elseif (sFormation == "useasmothership") then
--			else
--				print("HWCM: WARNING: Formation type " .. sFormation .. " not recognized.")
--			end
			for j = 1, ShipNumber do
				-- sName, sType, tPosition, iPlayer, tRotation, iNum, bHyper, sRace
--				AddSquadrons(SquadName .. "_" .. j, ShipType, ShipPosition, iPlayer, ShipRotation, iNumber, 0, sRace)
				-- no point spawning more than one ship in the same location since formations are unsupported, and non-player ships are always inert and can't move apart
				AddSquadrons(SquadName .. "_" .. j, ShipType, ShipPosition, iPlayer, ShipRotation, 1, 0, sRace)
				addToSOBGroup(SquadName .. "_" .. j, SquadGroup)
			end
		else
			print("HWCM: WARNING: Extra player squadrons found in non-player fleet.")
		end
	end
end

function SpawnPlayerFleet()
	print("HWCM: Spawning player fleet.")
	for i = 1, maxPlayers do
		createSOBGroup("HE_Formation" .. i)
	end
	for i, iCount in StartShips do
		-- [Amnt, Name, Type, Coo, Plyr, Ang, Size, Hyper, Race, Form]
		local ShipNumber, ShipName, ShipType, ShipPosition, iPlayer, ShipRotation, iNumber, bHyper, sRace, sFormation = iCount[1], iCount[2], iCount[3], iCount[4], iCount[5], iCount[6], iCount[7], iCount[8], iCount[9], iCount[10]
		if (iPlayer < maxPlayers) then
			local iPlayerPlus = iPlayer + 1
			local PlayerStart = StartPoints[iPlayerPlus]
			local SquadNum = CountPlayerSquadrons[iPlayerPlus]
			local SquadName = "HE_Player" .. iPlayerPlus .. "Squadron" .. SquadNum
			local SquadGroup = "HE_Formation" .. iPlayerPlus
			CountPlayerSquadrons[iPlayerPlus] = SquadNum + 1
--			if (sFormation == "null_formation") then
--			elseif (sFormation == "parade_formation") then
--			elseif (sFormation == "delta_formation") then
--			elseif (sFormation == "broad_formation") then
--			elseif (sFormation == "delta3d_formation") then
--			elseif (sFormation == "claw_formation") then
--			elseif (sFormation == "wall_formation") then
--			elseif (sFormation == "sphere_formation") then
--			elseif (sFormation == "picket_formation") then
--			elseif (sFormation == "useasmothership") then
--			else
--				print("HWCM: WARNING: Formation type " .. sFormation .. " not recognized.")
--			end
			if ((ShipPosition[1] + ShipPosition[2] + ShipPosition[3]) == 0) then
				ShipPosition = {PlayerStart[1], PlayerStart[2], PlayerStart[3],}
			end
			-- Adds an offset in the direction (or reverse direction?) the ship should be facing.
			-- This is later (where? how?) used to determine the ship's rotation angle relative to the universe plane.
			-- Maybe the ship gets placed on the map here first with the slight offset, and is then moved by the SobGroup_Spawn function to the correct position in the game rule.
			-- The direction of this movement then determines the direction the ship faces when it finally is spawned in the game rule.
			-- This is kind of convoluted, but I guess it is harmless.
			if ((ShipPosition[1] == PlayerStart[1]) and (ShipPosition[2] == PlayerStart[2]) and (ShipPosition[3] == PlayerStart[3])) then
				local Angle = PlayerStart[4] + 180
				local Radius = 5000
				local AdjX = cos(Angle) * Radius
				local AdjY = sin(Angle) * Radius
				ShipPosition = {ShipPosition[1] + AdjX, ShipPosition[2] + AdjY, ShipPosition[3],}
			end
			for j = 1, ShipNumber do
				-- sName, sType, tPosition, iPlayer, tRotation, iNum, bHyper, sRace
				-- it's okay to spawn more than one ship per location here, since they get automatically put into parade formation by the game rule script
				AddSquadrons(SquadName .. "_" .. j, ShipType, ShipPosition, iPlayer, ShipRotation, iNumber, 1, sRace)
				addToSOBGroup(SquadName .. "_" .. j, SquadGroup)
			end
		else
			print("HWCM: WARNING: Extra out-of-range squadrons found in player fleet.")
		end
	end
end

function AddStartPoints(i, tCoords)
	print_objects("HWCM: Adding start points.")
	local StartCoo = convert_position(tCoords, MapScale)
	local StartRot = {0,tCoords[4] - 90,0}
	print_objects("addPoint(\"StartPos" .. (i - 1) .. "\", " .. vstr(StartCoo) .. ", " .. vstr(StartRot) .. ")")
	addPoint("StartPos" .. (i - 1), StartCoo, {0, tCoords[4] - 90, 0,})
	-- map thumbnail stuff
	if (ShowTextClouds == 1) then
		addCloud("cloud_text_" .. i, "cloud_text_" .. i, StartCoo, {1, 1, 1, 1}, 0, 4096)
	end
end

function AddSquadrons(sName, sType, tPosition, iPlayer, tRotation, iNumber, bHyper, sRace)
--	iNumber = 10
	print_objects("HWCM: Adding squadrons.")
	local RUType = ShipTable[sRace][sType]
	if ((RUType ~= "") and (RUType ~= nil) and (iPlayer < maxPlayers)) then
		local new_coords = convert_position(tPosition, MapScale)
		local new_rotation = convert_rotation(tRotation)
		print_objects("addSquadron(\"" .. sName .. "\", \"" .. RUType .. "\", " .. vstr(new_coords) .. ", " .. iPlayer .. ", " .. vstr(new_rotation) .. ", " .. iNumber .. ", " .. bHyper .. ")")
		-- addSquadron(<sSquadronName>, <sSquadronType>, <tPosition>, <playerIndex>, <tRotation>, <iNumberShips>, <bHyperspace>)
		addSquadron(sName, RUType, new_coords, iPlayer, new_rotation, iNumber, bHyper)
		CountAllSquadrons = CountAllSquadrons + 1 * iNumber
	else
		print("HWCM: WARNING: AddSquadrons: ship type " .. sType .. " not recognized. Skipping.")
	end
end

function AddCrystals(iAmount, sType, tPosition)
	print_objects("HWCM: Adding crystals.")
	local RUType = ResourceTable[sType][1]
	local RUValue = ResourceTable[sType][2] * RUScale
	local RULatch = ResourceTable[sType][3]
	if (iAmount > 1) then
		for j = 1, iAmount do
			local r, u, v = 10000, srandom3(RandomSeedValue, 180), srandom3(RandomSeedValue, 360)
			local cooX = r * cos(u)
			local cooY = r * sin(v) * sin(u)
			local cooZ = r * cos(v) * sin(u)
			local tCoordinates = convert_position({tPosition[1] + cooX, tPosition[2] + cooY, tPosition[3] + cooZ}, MapScale)
			print_objects("addSalvage(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. RUValue .. ", 0, 0, 0, 0)")
			addSalvage(RUType, tCoordinates, RUValue, 0, 0, 0, 0)
		end
	else
		local tCoordinates = convert_position(tPosition, MapScale)
		print_objects("addSalvage(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. RUValue .. ", 0, 0, 0, 0)")
		addSalvage(RUType, tCoordinates, RUValue, 0, 0, 0, 0)
	end
	CountLoops = CountLoops + iAmount
	CountLPs = CountLPs + iAmount * RULatch
	CountRUs = CountRUs + iAmount * RUValue
end

-- should be using all five types of nebula here even if there is the only one model
-- in the future there may be more models
-- {{0.0, 0.0, 0.0,}, "nebula", "nebula", 35, 10000.0, 10000.0, 10000.0, 6000,},
function AddNebulas(tPosition, sLayout, sDistribution, iNumStrands, fSizX, fSizY, fSizZ, iNumChunks)
	print_objects("HWCM: Adding nebulas.")
	iNumStrands = ceil(iNumStrands * NebRatio)
	iNumChunks = ceil(iNumChunks * NebRatio)
	local RUValue = 100/NebRatio * RUScale
	for i = 1, iNumStrands do
		local tChunkTable = {}
		local oldU = 0
		local oldV = 0
		local NewX = 0
		local NewY = 0
		local NewZ = 0
		local iTmpChunks = floor(iNumChunks/iNumStrands)		-- maybe do a max number of chunks per strand?
--		local iTmpChunks = 0
--		if (i == iNumStrands) then
--			iTmpChunks = iNumChunks
--		else
--			iTmpChunks = srandom(RandomSeedValue, 0, iNumChunks)
--			iNumChunks = iNumChunks - iTmpChunks
--		end
		for j = 1, iTmpChunks do
			if (j == 1) then
--				local radius = sqrt(srandom(RandomSeedValue)) * 0.5
				local radius = srandom(RandomSeedValue) * 0.5
				oldU = srandom(RandomSeedValue) * 180
				oldV = srandom(RandomSeedValue) * 360
				local CooX = radius * sin(oldV) * sin(oldU)
				local CooY = radius * cos(oldV) * sin(oldU)
				local CooZ = radius * cos(oldU)
				NewX = CooX
				NewY = CooY
				NewZ = CooZ
--				NewX = srandom(RandomSeedValue) - 0.5
--				NewY = srandom(RandomSeedValue) - 0.5
--				NewZ = srandom(RandomSeedValue) - 0.5
				tChunkTable[j] = {NewX, NewY, NewZ}
			else
				repeat
					local radius = (1 - srandom(RandomSeedValue) * srandom(RandomSeedValue)) * 0.1
					oldU = oldU + srandom(RandomSeedValue) * srandom(RandomSeedValue) *  90 * srandomSign(RandomSeedValue)
					oldV = oldV + srandom(RandomSeedValue) * srandom(RandomSeedValue) * 180 * srandomSign(RandomSeedValue)
					local CooX = radius * sin(oldV) * sin(oldU)
					local CooY = radius * cos(oldV) * sin(oldU)
					local CooZ = radius * cos(oldU)
					NewX = tChunkTable[j-1][1] + CooX
					NewY = tChunkTable[j-1][2] + CooY
					NewZ = tChunkTable[j-1][3] + CooZ
					tChunkTable[j] = {NewX, NewY, NewZ}
				until ((abs(NewX) <= 0.5) and (abs(NewY) <= 0.5) and (abs(NewZ) <= 0.5))		-- maybe check versus a sphere instead
				local old_table = convert_position({tChunkTable[j-1][1] * fSizX, tChunkTable[j-1][2] * fSizY, tChunkTable[j-1][3] * fSizZ}, MapScale)
				local new_table = convert_position({  tChunkTable[j][1] * fSizX,   tChunkTable[j][2] * fSizY,   tChunkTable[j][3] * fSizZ}, MapScale)
				local rotate_val = srandom(RandomSeedValue) * 360
				local default_nebula = ResourceTable.nebula0[1]
				print_objects("addNebulaWithResources(\"NebulaGroup0\", \"" .. default_nebula .. "\", " .. vstr(new_table) .. ", " .. RUValue .. ", {37.000000, 17.000000, 48.000000, 163.000000}, " .. rotate_val .. ", 1000, 0)")
				addNebulaWithResources("NebulaGroup0", default_nebula, new_table, RUValue, {37.000000, 17.000000, 48.000000, 163.000000}, rotate_val, 1000, 0)
			end
		end
		addTendrils(unpack2(tChunkTable))
	end
	CountLoops = CountLoops + iNumStrands
	CountLPs = CountLPs + iNumChunks
	CountRUs = CountRUs + iNumChunks * RUValue
end

function AddResources(tPosition, sLayout, sDistribution, iNumResources, fA, fB, fRotY, fRotZ)
	print_objects("HWCM: Adding resources.")
	local Relative, iModulos = 0, 0
	for k, iCount in Distributions[sDistribution] do
		if (ResourceTable[k]) then
			Relative = Relative + iCount
		else
			Distributions[sDistribution][k] = 0
			print("HWCM: WARNING: AddResources: resource type " .. k .. " not recognized.")
		end
	end
	if (Relative > 0) then
		for k, iCount in Distributions[sDistribution] do
			if (iCount > 0) then
				local kRes = ResourceTable[k]
				local RUType = kRes[1]
				local RUValue = kRes[2] * RUScale
				local RULatch = kRes[3]
				local RUScale = kRes[4]
				local Amount = iNumResources * iCount / Relative
				if (RUsRatio > 0) then
					RUValue = RUValue / RUsRatio
					Amount = Amount * RUsRatio
				end
				if (PebRatio > 0) then
					RUValue = RUValue / (1-PebRatio)
				end
				RUValue = round(RUValue)	-- can be wildly inconsistent
				Amount = round(Amount)
				iModulos = iModulos + mod(iCount * iNumResources, Relative)
				for j = 1, Amount do
					local cooX, cooY, cooZ = 0, 0, 0
					if (sLayout == "cylinder") then
						local r, w, v = sqrt(srandom(RandomSeedValue)) * fA, srandom3(RandomSeedValue, -fB, fB), srandom(RandomSeedValue) * 360
						cooX = w / 2
						cooY = r * sin(v)
						cooZ = r * cos(v)
					elseif (sLayout == "sphere") then
						local r, u, v = sqrt(srandom(RandomSeedValue)) * fA, srandom(RandomSeedValue) * 180, srandom(RandomSeedValue) * 360
						cooX = r * cos(u)
						cooY = r * sin(v) * sin(u)
						cooZ = r * cos(v) * sin(u)
					elseif (sLayout == "rectangle") then
						local l, w, h = srandom3(RandomSeedValue, -fA, fA), srandom3(RandomSeedValue, -fB, fB), srandom3(RandomSeedValue, -fRotY, fRotY)
						cooX = l
						cooY = w
						cooZ = h
						fRotY = 0
					-- should never happen
					elseif (sLayout == "nebula") then
						print("HWCM: WARNING: AddResources: A nebula got into my resources! Bad nebula!!")
					end
--					print_objects("-- sLayout = " .. sLayout .. ", cooX = " .. cooX .. ", cooY = " .. cooY .. ", cooZ = " .. cooZ .. ", j = " .. j)
					local yCooX = cooX * cos(fRotY) + cooZ * sin(fRotY)
					local yCooY = cooY * 1
					local yCooZ = cooX * -1 * sin(fRotY) + cooZ * cos(fRotY)
					local zCooX = yCooX * cos(fRotZ) - yCooY * sin(fRotZ)
					local zCooY = yCooX * sin(fRotZ) + yCooY * cos(fRotZ)
					local zCooZ = yCooZ * 1
					local tCoordinates = convert_position({tPosition[1] + zCooX, tPosition[2] + zCooY, tPosition[3] + zCooZ}, MapScale)
					if ((PebRatio > 0) and (CountPebbles < PebNumo)) then
						-- pebbles
						local temp_rng = ceil(srandom(RandomSeedValue) * srandom(RandomSeedValue) * getn(PebbleTable))
						local temp_peb = PebbleTable[temp_rng]
						print_objects("addPebble(\"" .. temp_peb .. "\", " .. vstr(tCoordinates) .. ", 0, 0, 0)")
						addPebble(temp_peb, tCoordinates, 0, 0, 0)
					else
						-- dustclouds
						if ((k == "dustcloud0") or (k == "dustcloud1") or (k == "dustcloud2") or (k == "dustcloud3") or (k == "dustcloud4")) then		-- dustcloud4 doesn't exist in HWRM I think
							print_objects("addDustCloudWithResources(\"CloudNameToIgnore\", \"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. round(RUValue/100) .. ", {1.0, 1.0, 1.0, 0.7}, 0, " .. RUScale .. ", 1)")
							addDustCloudWithResources("CloudNameToIgnore", RUType, tCoordinates, RUValue, {1.0, 1.0, 1.0, 0.7}, srandom(RandomSeedValue) * 360, RUScale, 1)
						-- asteroids
						else
							print_objects("addAsteroid(\"" .. RUType .. "\", " .. vstr(tCoordinates) .. ", " .. round(RUValue/100) .. ", 0, 0, 0, 0)")
							addAsteroid(RUType, tCoordinates, RUValue, 0, srandom(RandomSeedValue) * 360, 0, 0)
						end
--						print_objects("HWCM: AddResources: added RUType = " .. RUType .. " at position " .. vstr(tCoordinates))
					end
					CountPebbles = CountPebbles + 1
					if (CountPebbles == PebDeno) then
						CountPebbles = 0
					end
				end
--				print_objects("HWCM: AddResources: RUType = " .. RUType .. ", Amount = " .. Amount .. ", RUValue = " .. RUValue)
				CountLoops = CountLoops + Amount
				CountLPs = CountLPs + Amount * RULatch
				CountRUs = CountRUs + Amount * RUValue
			end
		end
		if (iModulos > 0) then
--			print_objects("HWCM: AddResources: iNumResources = " .. iNumResources)
--			print_objects("HWCM: AddResources: iModulos = " .. iModulos)
			AddResources(tPosition, sLayout, sDistribution, iModulos, fA, fB, fRotY, fRotZ)
		end
	end
end

function convert_position(tPosition, fScale)
	return vround({tPosition[1] * fScale * -1, tPosition[3] * fScale, tPosition[2] * fScale})
end

function convert_rotation(tRotation)
	return vround({tRotation[1], tRotation[3] - 90, tRotation[2]})
end

function print_objects(in_string)
	if (debug_objects == 1) then
		print(in_string)
	end
end
