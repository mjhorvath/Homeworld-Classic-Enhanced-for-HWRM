--GUID = { 110,91,157,190,18,23,250,78,144,20,41,246,181,128,214,12 }
GameRulesName = "HWC Enhanced 2.3.0"
Description = "Multiplayer options from the Homeworld Classic Rebalance and Gameplay Enhanced mods for Homeworld 2 Classic."
SaveGameVersion = 1.0
SinglePlayer = 0
ExtFilter = "rules_hwce"
Race_Paths = "deathmatch"
Level_Pass_Tags = "hwcm"
--Level_Pass_Tags = "dm"
Race_Pass_Tags = "race_dm,race_random"

-- This stuff needs to be here because the game will crash when testing the BIG file, otherwise.
-- For some reason it's not a problem when using the DATA directory instead of the BIG file.
TracksNumber = 0
FleetsNumber = 0
RolesNumber = 0

dofilepath([[data:scripts/rules/lib/objectlist_definedroles.lua]])
dofilepath([[data:scripts/rules/lib/objectlist_specialfleets.lua]])
dofilepath([[data:scripts/rules/lib/objectlist_misc.lua]])
dofilepath([[data:scripts/rules/lib/objectlist_techlist.lua]])
dofilepath([[data:scripts/rules/lib/objectlist_rulerestrictions.lua]])

function createtracktable()
	local temptable = {"Map Default", -1, "Shuffle", 0,}
	for trackindex = 1, TracksNumber do
		local indexcount = trackindex * 2 + 4
		temptable[indexcount - 1] = TracksTable[trackindex][1]
		temptable[indexcount] = trackindex
	end
	return temptable
end

function createfleettable()
	local temptable = {}
	for fleetindex = 1, FleetsNumber do
		local indexcount = fleetindex * 2
		temptable[indexcount - 1] = FleetsTable[FleetsLabelIndex].startingfleets[fleetindex].label
		temptable[indexcount] = FleetsTable[FleetsLabelIndex].startingfleets[fleetindex].name
	end
	return temptable
end

function createroletable()
	local temptable = {}
	for roleindex = 1, RolesNumber do
		local indexcount = roleindex * 2
		temptable[indexcount - 1] = RolesTable[roleindex].label
		temptable[indexcount] = roleindex
	end
	return temptable
end

-- A maximum of 32 items are allowed in this table! Until GearBox fixes this, I 
-- have to disable the Special Fleets game mode.
GameSetupOptions =
{
	----------------------------------------------------------------------------
	-- Relic and GearBox options. I would add more if there were room in the table.

	-- 1. resource mulitplier
	{
		name = "resources",
		locName = "$3240",
		tooltip = "$3239",
		default = 1,
		visible = 1,
		choices =
		{
			"$3241", "0.5",		-- Low
			"$3242", "1.0",		-- Standard
			"$3243", "2.0",		-- High
		},
	},
	-- 2. unitcap option
	{
		name = "unitcaps",
		locName = "$3214",
		tooltip = "$3234",
		default = 1,
		visible = 1,
		choices =
		{
			"$3215", "Small",
			"$3216", "Normal",
			"$3217", "Large",
			"$4801", "Huge",	-- to localize
		},
	},
	-- 3. starting resource option
	{
		name = "resstart",
		locName = "$3205",
		tooltip = "$3232",
		default = 0,
		visible = 1,
		choices =
		{
			"$3206", 1000,			-- Small (1000)
			"$3207", 3000,			-- Medium (3000)
			"$3208", 10000,			-- Large (10000)
--			"None (0)", 0,			-- map default, to localize, could also set this when selecting StartWithMode instead of here
			"Resourcing Disabled", -1,	-- to localize
		},
	},
	-- 4. lock team option
	{
		name = "lockteams",
		locName = "$3220",
		tooltip = "$3235",
		default = 1,
		visible = 1,
		choices =
		{
			"$3221", "yes",
			"$3222", "no",
		},
	},
	-- 5. start location option
	-- tried setting "fixed" as the default, but could not get it to work
	{
		name = "startlocation",
		locName = "$3225",
		tooltip = "$3237",
		default = 1,
		visible = 1,
		choices =
		{
			"$3226", "random",
			"$3227", "fixed",
		},
	},
	-- 6.
	{
		name = "cpuplayers",
		locName = "$2984",
		tooltip = "$2985",
		default = 1,
		visible = 1,
		choices =
		{
			"$3161",  "1",
			"$3201",  "2",
			"$3160",  "3",
			"$2986",  "4",
		},
	},
	-- 7.
	{
		name = "norushtime",
		locName = "$3000",
		tooltip = "$3001",
		default = 0,
		visible = 1,
		choices =
		{
			"$5455", "0",
			"$2992", "5",
			"$2993", "10",
			"$3002", "15",
		},
	},
	----------------------------------------------------------------------------
	-- options specific to HomeworldClassic gametype

	-- 8. start with
	{
		name = "startwith",
		locName = "Start With",
		tooltip = "SELECT NORMAL, CARRIER ONLY, OR HW1C MAP DEFAULT STARTING SHIPS. SUPERCEDED BY \"SPECIAL FLEETS\" MODE.",
		default = 0,
		visible = 1,
		choices =
		{
			"Normal HWRM",		"mothership",
			"Carrier Only",		"carrieronly",
			"HW1C Map Default",	"frommap",
		},
	},
	-- 9. resource injections on/off
	{
		name = "resourceinjection",
		locName = "Resource Injections",
		tooltip = "PERIODICALLY GIVE EVERYONE RESOURCES",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",		0,
			"100 RUs",	100,
			"200 RUs",	200,
			"500 RUs",	500,
			"1000 RUs",	1000,
			"2000 RUs",	2000,
			"5000 RUs",	5000,
			"10000 RUs",	10000,
		},
	},
	-- 10. resource injections wait time
	{
		name = "resourceinjectionevery",
		locName = "...every",
		tooltip = "DURATION BETWEEN RESOURCE INJECTIONS",
		default = 0,
		visible = 1,
		choices =
		{
			"30 seconds",	30,	 	-- 30 sec
			"1 minute",	60,	 	--  1 min
			"2 minutes",	120,		--  2 min
			"5 minutes",	300,		--  5 min
			"10 minutes",	600,		-- 10 min
			"20 minutes",	1200,	  	-- 20 min
		},
	},
	-- 11. resource lump sum on/off
	{
		name = "resourcelumpsum",
		locName = "Resource Lump Sum",
		tooltip = "GIVE EVERYONE A SINGLE RESOURCE INJECTION",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",		0,
			"500 RUs",	500,
			"1000 RUs",	1000,
			"2000 RUs",	2000,
			"5000 RUs",	5000,
			"10000 RUs",	10000,
			"20000 RUs",	20000,
		},
	},
	-- 12. resource lump sum wait time
	{
		name = "resourcelumpsumafter",
		locName = "...after",
		tooltip = "TIME BEFORE LUMP SUM RESOURCE INJECTION",
		default = 0,
		visible = 1,
		choices =
		{
			"1 minute",	60,	 	--  1 min
			"2 minutes",	120,		--  2 min
			"5 minutes",	300,		--  5 min
			"10 minutes",	600,		-- 10 min
			"20 minutes",	1200,	  	-- 20 min
			"40 minutes",	2400,	  	-- 40 min
		},
	},
	-- 13. bounties
	{
		name = "bounties",
		locName = "Bounties",
		tooltip = "GRANT A RESOURCE BOUNTY FOR DESTROYING ENEMY SHIPS",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",		0,
			"Small (15)",	15,
			"Medium (40)",	40,
			"Large (90)",	90,
		},
	},
	-- 14. research on/off
	{
		name = "research",
		locName = "Research",
		tooltip = "ENABLE OR DISABLE RESEARCH. SUPERCEDED BY \"SPECIAL FLEETS\" MODE.",
		default = 1,
		visible = 1,
		choices =
		{
			"Off",	0,
			"On",	1,
		},
	},
	-- 15. crates
	{
		name = "crates",
		locName = "Crates",
		tooltip = "RANDOMLY SPAWN CRATES CONTAINING SURPRISES.",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",			0,
			"every 1 minute",	60,	 	--  1 min
			"every 2 minutes",	120,		--  2 min
			"every 5 minutes",	300,		--  5 min
			"every 10 minutes",	600,		-- 10 min
			"every 20 minutes",	1200,	  	-- 20 min
			"every 40 minutes",	2400,	  	-- 40 min
		},
	},
	-- 16. hyperspace on/off
	{
		name = "hyperspace",
		locName = "Hyperspace",
		tooltip = "ENABLE OR DISABLE HYPERSPACE TRANSPORT",
		default = 1,
		visible = 1,
		choices =
		{
			"Off",	0,
			"On",	1,
		},
	},
	----------------------------------------------------------------------------
	-- options specific to Gameplay Enhanced gametype

	-- 17. win condition
	{ 
		name = "wincondition", 
		locName = "Win Condition", 
		tooltip = "SELECT THE CONDITION FOR WINNING THE GAME", 
		default = 0, 
		visible = 1, 
		choices = 
		{
			"Normal HWRM",		0,
			"Kill Team Production",	1,
			"Kill All Enemy Ships",	2,
			"Destroy Mothership",	3,
			"Capture Capship",	4,
			"Quit Manually",	5,
		}, 
	}, 
	-- 18. background music
	{ 
		name = "bgmusic", 
		locName = "Background Music", 
		tooltip = "SELECT THE BACKGROUND MUSIC", 
		default = 0, 
		visible = 1, 
		choices = createtracktable(),
	}, 
	-- 19. game speed
	{
		name = "GameSpeed",
		locName = "Game Speed",
		tooltip = "CHANGE THE GAME SPEED TO A FRACTION OF ITS NORMAL VALUE",
		default = 0,
		visible = 1,
		choices =
		{
			"1×",	1.00,
			"3/4×",	0.75,
			"1/2×",	0.50,
			"1/4×",	0.25,
		},
	},
	-- 20. bentusi roulette
	{
		name = "RouletteResearch",
		locName = "Bentusi Roulette",
		tooltip = "SELECT A NUMBER OF RESEARCH OPTIONS TO RANDOMLY GRANT OR RESTRICT. SUPERCEDED BY THE \"RESEARCH OFF\" MODE.",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",  0,
			"1",    1,
			"2",    2,
			"3",    3,
			"4",    4,
			"5",    5,
			"6",    6,
			"7",    7,
		},
	},
	-- 21. jobs on/off
	{
		name = "DutiesOnOff",
		locName = "Defined Roles",
		tooltip = "ENABLE SPECIALIZED PLAYER ROLES. HUGE UNITCAPS RECOMMENDED.",
		default = 0,
		visible = 1,
		choices =
		{
			"Off",	0,
			"On",	1,
		},
	},
	-- 22. player 1 job
	{
		name = "Duty0",
		locName = "Position 1 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 1",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 23. player 2 job
	{
		name = "Duty1",
		locName = "Position 2 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 2",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 24. player 3 job
	{
		name = "Duty2",
		locName = "Position 3 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 3",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 25. player 4 job
	{
		name = "Duty3",
		locName = "Position 4 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 4",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 26. player 5 job
	{
		name = "Duty4",
		locName = "Position 5 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 5",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 27. player 6 job
	{
		name = "Duty5",
		locName = "Position 6 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 6",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 28. player 7 job
	{
		name = "Duty6",
		locName = "Position 7 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 7",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
	-- 29. player 8 job
	{
		name = "Duty7",
		locName = "Position 8 Role",
		tooltip = "CHOOSE THE JOB FOR PLAYER 8",
		default = 0,
		visible = 1,
		choices = createroletable(),
	},
--	-- 30. fleets on/off
--	{
--		name = "FleetsOnOff",
--		locName = "Special Fleets",
--		tooltip = "ENABLE SPECIALIZED STARTING FLEETS",
--		default = 0,
--		visible = 1,
--		choices =
--		{
--			"Off",	0,
--			"On",	1,
--		},
--	},
--	-- 31. player 1 starting fleet
--	{
--		name = "Fleet0",
--		locName = "Position 1 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 1",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 32. player 2 starting fleet
--	{
--		name = "Fleet1",
--		locName = "Position 2 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 2",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 33. player 3 starting fleet
--	{
--		name = "Fleet2",
--		locName = "Position 3 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 3",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 34. player 4 starting fleet
--	{
--		name = "Fleet3",
--		locName = "Position 4 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 4",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 35. player 5 starting fleet
--	{
--		name = "Fleet4",
--		locName = "Position 5 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 5",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 36. player 6 starting fleet
--	{
--		name = "Fleet5",
--		locName = "Position 6 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 6",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 37. player 7 starting fleet
--	{
--		name = "Fleet6",
--		locName = "Position 7 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 7",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
--	-- 38. player 8 starting fleet
--	{
--		name = "Fleet7",
--		locName = "Position 8 Fleet",
--		tooltip = "CHOOSE THE STARTING FLEET FOR PLAYER 8",
--		default = 0,
--		visible = 1,
--		choices = createfleettable(),
--	},
}

dofilepath("data:scripts/rules/hwclassicenhanced/hwclassicenhanced.lua")
