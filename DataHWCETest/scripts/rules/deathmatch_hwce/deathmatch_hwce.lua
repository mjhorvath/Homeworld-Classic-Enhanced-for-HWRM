-- load the following external files
dofilepath([[data:scripts/utilfunc.lua]])
dofilepath([[data:scripts/SCAR/SCAR_Util.lua]])
dofilepath([[data:scripts/rules/lib/common.lua]])
--dofilepath([[data:scripts/rules/lib/definedroles.lua]])		-- game mode not enabled currently
dofilepath([[data:scripts/rules/lib/bentusiroulette.lua]])
dofilepath([[data:scripts/rules/lib/specialfleets.lua]])
dofilepath([[data:scripts/rules/lib/homeworldclassic.lua]])
dofilepath([[data:scripts/rules/lib/wincondition.lua]])
dofilepath([[data:scripts/rules/lib/writestats.lua]])
dofilepath([[data:scripts/rules/lib/music.lua]])
dofilepath([[data:scripts/rules/lib/display.lua]])
dofilepath([[data:scripts/rules/lib/crates.lua]])
dofilepath([[data:scripts/rules/lib/bounties.lua]])
dofilepath([[data:scripts/rules/lib/main.lua]])
dofilepath([[data:scripts/rules/lib/cpuplayers.lua]])
dofilepath([[data:scripts/rules/lib/norushtime.lua]])
dofilepath([[data:leveldata/multiplayer/lib/lib.lua]])


--==============================================================================
-- Homeworld Classic variables

CRATES_ArePlayersNearUpdateTime						= 4.0			-- bit mask to to ship near crate checking
CRATES_PlayerNearRadius								= 800.0			-- radius in which a player must get of the crate before receiving the crate item
CRATES_MaximumCratesInTheWorldPerPlayer				= 1				-- maximum numbr of crates that can exist in the world based on number of players in game
CRATES_ExpiryTime									= 300.0			-- life span of crate in seconds before it expires
CRATES_RandomLowDistance, CRATES_RandomHighDistance	= 7000.0, 20000.0
CRATES_MaxRUsGiven, CRATES_MinRUsGiven				= 1000, 500

-- probabilities of getting any of these items (if less than or equal to the first value, else it moves onto the next value)
CRATES_AddACrateProb								= 0.15
CRATES_GetMotherShipCarrierIfDontHaveOne			= 0.80
CRATES_GetAShip, CRATES_GetResearch, CRATES_GetRUs	= 0.90, 0.925, 1.00

-- crate dynamic data
CRATES_DetectPlayerIndex			= 0
CRATES_NumberCrates					= 0
CRATES_SpawnTime					= {0,0,0,0,0,0,0,0,}
CRATES_PingIDs						= {0,0,0,0,0,0,0,0,}

-- tweakables for player bounties
BOUNTY_UpdateRate 					= 8
BOUNTY_MaxPossible					= 250
BOUNTY_ResourcesInPossesion 		= 0.35
BOUNTY_CurrentShipWorth 			= 0.70
BOUNTY_ActualRURatio				= 0.014

-- bounty dynamic data
BOUNTY_Level, BOUNTY_PlayerBounties	= 0, {1,1,1,1,1,1,1,1,}

-- counters
resourcePlayerIndex, hyperspacePlayerIndex 		= 0, 0
capturePlayerIndex, volumePositionCounter		= 0, 0

-- timers
resourceStartCountingTime, resourceStopCountingTime	= 0, 120


--==============================================================================
-- Gameplay Enhanced variables

-- music playlist stuff
MUS_firstRun	= 1
MUS_playedBin	= {}
MUS_playedTxt	= {}
-- BENTUSI ROULETTE research grant and restriction messages
BEN_GrantStrings		= {{},{},{},{},{},{},{},{},}
BEN_RestrictStrings		= {{},{},{},{},{},{},{},{},}
-- SPECIAL FLEETS item messages
FLT_PlayerStrings		= {{},{},{},{},{},{},{},{},}
FLT_PlayerFleets		= {nil,nil,nil,nil,nil,nil,nil,nil,}
JOB_PlayerRoles			= {nil,nil,nil,nil,nil,nil,nil,nil,}
-- used to make DEFINED ROLES compatible with WIN CONDITION
JOB_PlayerModes			= {0,0,0,0,0,0,0,0,}
-- special messages regarding teammates with the "capital" role. pretty ugly
JOB_PlayerStrings		=
{
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
	{{},{},{},{},{},{},{},{},},
}
-- special messages for when a player is granted research by a teammate
JOB_PlayerGrantStrings		= {"","","","","","","","",}
-- used to keep track of which grants have already been applied
JOB_PlayerGrantItems		= {{},{},{},{},{},{},{},{},}
-- used for win condition
WIN_AnyPlayerIndex		= 0


--==============================================================================
-- Non-specific variables

-- seeds used for pseudo random number functions
INI_Seed			= newseed(-2001420)
CRA_Seed			= {}
BEN_Seed			= {}
COM_Seed			= {}
DEF_Seed			= {}
WIN_Seed			= {}
MUS_Seed			= {}

-- used to make HOMEWORLD CLASSIC, DEFINED ROLES, BENTUSI ROULETTE and SPECIAL FLEETS work with each other
Player_RestrictedResearch	= {{},{},{},{},{},{},{},{},}
Player_GrantedResearch		= {{},{},{},{},{},{},{},{},}
Player_RestrictedBuilds		= {{},{},{},{},{},{},{},{},}
Player_GrantedBuilds		= {{},{},{},{},{},{},{},{},}
Player_Races			= {}
Player_Count			= 0

-- message string that is displayed immediately after the game starts
starting_message = ""
StartFleetSuffixString = ""


--==============================================================================
-- game entry point
--
function OnInit()
	SetStartFleetSuffix("_car0_rch1_res1_hyp1")
end

function OnInit_old()
	-- need this or Kushan MS won't budge, it's a GearBox thing
	Volume_AddSphere("centre", {-11111, 11111, 11111,}, 10)
	Player_Count = Universe_PlayerCount() - 1


	--======================================================================
	-- Read Game Settings

	print("HWCE: Getting game settings.")
	ResMultiMode		= GetGameSettingAsNumber("resources")
	UnitCapsMode		= GetGameSettingAsString("unitcaps")
	ResourceMode		= GetGameSettingAsNumber("resstart")
	LockTeamsMode		= GetGameSettingAsString("lockteams")
	StartLocationMode	= GetGameSettingAsString("startlocation")
	cpuplayers		= GetGameSettingAsNumber("cpuplayers")
	norushtime		= GetGameSettingAsNumber("norushtime")
	StartWithMode		= GetGameSettingAsString("startwith")
	ResearchMode		= GetGameSettingAsNumber("research")
	HyperspaceMode		= GetGameSettingAsNumber("hyperspace")
	BountiesMode		= GetGameSettingAsNumber("bounties")
	CratesMode		= GetGameSettingAsNumber("crates")
	ResourceInjectionAmount	= GetGameSettingAsNumber("resourceinjection")
	ResourceInjectionTime	= GetGameSettingAsNumber("resourceinjectionevery")
	ResourceLumpSumAmount	= GetGameSettingAsNumber("resourcelumpsum")
	ResourceLumpSumTime	= GetGameSettingAsNumber("resourcelumpsumafter")
	BackgroundMusic		= GetGameSettingAsNumber("bgmusic")
	GameSpeedMode		= GetGameSettingAsNumber("GameSpeed")
	-- potentially disabled this because I've run out of drop-down menu options in the gametype setup screen. Fix this please, GearBox!
--	SpecialFleetsMode	= 0
	SpecialFleetsMode	= GetGameSettingAsNumber("FleetsOnOff")
	SpecialFleets0		= GetGameSettingAsString("Fleet0")
	SpecialFleets1		= GetGameSettingAsString("Fleet1")
	SpecialFleets2		= GetGameSettingAsString("Fleet2")
	SpecialFleets3		= GetGameSettingAsString("Fleet3")
	SpecialFleets4		= GetGameSettingAsString("Fleet4")
	SpecialFleets5		= GetGameSettingAsString("Fleet5")
	SpecialFleets6		= GetGameSettingAsString("Fleet6")
	SpecialFleets7		= GetGameSettingAsString("Fleet7")
	-- potentially disabled this because I've run out of drop-down menu options in the gametype setup screen. Fix this please, GearBox!
	DefinedRolesMode	= 0
--	DefinedRolesMode	= GetGameSettingAsNumber("DutiesOnOff")
--	DefinedRoles0		= GetGameSettingAsNumber("Duty0")
--	DefinedRoles1		= GetGameSettingAsNumber("Duty1")
--	DefinedRoles2		= GetGameSettingAsNumber("Duty2")
--	DefinedRoles3		= GetGameSettingAsNumber("Duty3")
--	DefinedRoles4		= GetGameSettingAsNumber("Duty4")
--	DefinedRoles5		= GetGameSettingAsNumber("Duty5")
--	DefinedRoles6		= GetGameSettingAsNumber("Duty6")
--	DefinedRoles7		= GetGameSettingAsNumber("Duty7")
	BentusiRouletteMode	= GetGameSettingAsNumber("RouletteResearch")
	WinConditionMode	= GetGameSettingAsNumber("wincondition")


	--======================================================================
	-- Random Seed Stuff

	print("HWCE: Generating PRNG seeds.")

	local Seed_Value = 0
	for i = 0, Player_Count do
		Seed_Value =	Seed_Value
				+ srandom(INI_Seed, 100) * Player_GetRace(i)
				+ srandom(INI_Seed, 100) * Player_GetLevelOfDifficulty(i)
	end

	Seed_Value = floor(Seed_Value)

	print("HWCE: SUM_Seed1 = " .. Seed_Value)

	Seed_Value =	Seed_Value
			+ srandom(INI_Seed, 100) * ResMultiMode
			+ srandom(INI_Seed, 100) * strlen(UnitCapsMode)
			+ srandom(INI_Seed, 100) * ResourceMode
			+ srandom(INI_Seed, 100) * strlen(LockTeamsMode)
			+ srandom(INI_Seed, 100) * strlen(StartLocationMode)
			+ srandom(INI_Seed, 100) * strlen(StartWithMode)
			+ srandom(INI_Seed, 100) * ResearchMode
			+ srandom(INI_Seed, 100) * HyperspaceMode
			+ srandom(INI_Seed, 100) * BountiesMode
			+ srandom(INI_Seed, 100) * CratesMode
			+ srandom(INI_Seed, 100) * ResourceInjectionAmount
			+ srandom(INI_Seed, 100) * ResourceInjectionTime
			+ srandom(INI_Seed, 100) * ResourceLumpSumAmount
			+ srandom(INI_Seed, 100) * ResourceLumpSumTime
			+ srandom(INI_Seed, 100) * BackgroundMusic
			+ srandom(INI_Seed, 100) * GameSpeedMode
			+ srandom(INI_Seed, 100) * SpecialFleetsMode
			+ srandom(INI_Seed, 100) * DefinedRolesMode
			+ srandom(INI_Seed, 100) * BentusiRouletteMode
			+ srandom(INI_Seed, 100) * WinConditionMode

	Seed_Value = floor(Seed_Value)

	print("HWCE: SUM_Seed2 = " .. Seed_Value)

	-- seed must be a negative integer
	CRA_Seed = newseed(-Seed_Value)
	BEN_Seed = newseed(-Seed_Value)
	COM_Seed = newseed(-Seed_Value)
	DEF_Seed = newseed(-Seed_Value)
	WIN_Seed = newseed(-Seed_Value)
	MUS_Seed = newseed(-Seed_Value)


	--======================================================================
	-- Default Rules

	Rule_Add("SetWinObjective")
	Rule_Add("GUI_init")
	Rule_Add("MainRule")


	--======================================================================
	-- Extra rule-specific stuff

	for playerIndex = 0, Player_Count do
		-- potentially disabled this because I've run out of drop-down menu options in the gametype setup screen. Fix this please, GearBox!
--		JOB_PlayerRoles[playerIndex + 1] = GetGameSettingAsNumber("Duty" .. playerIndex)
		-- potentially disabled this because I've run out of drop-down menu options in the gametype setup screen. Fix this please, GearBox!
		FLT_PlayerFleets[playerIndex + 1] = GetGameSettingAsString("Fleet" .. playerIndex)
	end

	-- not all game rules are compatible with each other
	-- need to turn some of them on or off specifically
	if (SpecialFleetsMode == 1) then
		ResearchMode = 1
		ResourceMode = 3000			-- not sure the hardcoded parts of the game will see this
		HyperspaceMode = 1
		print("HWCE: The START WITH, RESEARCH OFF, RESOURCING OFF and HYPERSPACE OFF modes have all been automatically set to their default settings by the SPECIAL FLEETS mode as they are incompatible.")
	end
	if (ResearchMode == 0) then
		BentusiRouletteMode = 0
		print("HWCE: Disabling RESEARCH automatically turns off BENTUSI ROULETTE mode.")
	end


	--======================================================================
	-- Homeworld Classic rules

	-- setup per-gamerule build and research restrictions
	print("HWCE: Setting up per-gamerule build and research restrictions.")
	for playerIndex = 0, Player_Count do
		local sRace = strlower(Race_GetName(Player_GetRace(playerIndex)))
--		print('HWCE: Race check: ' .. sRace)
		Player_Races[playerIndex + 1] = sRace
		Player_RestrictedResearch[playerIndex + 1][sRace] = {}
		Player_RestrictedBuilds[playerIndex + 1][sRace] = {}
		Player_GrantedResearch[playerIndex + 1][sRace] = {}
		Player_GrantedBuilds[playerIndex + 1][sRace] = {}
		DisableListOfBuilds(playerIndex, sRace, RestrictedBy.MPRestrict[sRace].build)
		DisableListOfResearch(playerIndex, sRace, RestrictedBy.MPRestrict[sRace].research)
		DisableListOfBuilds(playerIndex, sRace, RestrictedBy.Misc[sRace].build)
		DisableListOfResearch(playerIndex, sRace, RestrictedBy.Misc[sRace].research)
		if (ResourceMode == -1) then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.ResourceOff[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.ResourceOff[sRace].research)
		else
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.ResourceOn[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.ResourceOn[sRace].research)
		end
		if (HyperspaceMode == 0) then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.HyperspaceOff[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.HyperspaceOff[sRace].research)
		else
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.HyperspaceOn[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.HyperspaceOn[sRace].research)
		end
		if (ResearchMode == 0) then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.ResearchOff[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.ResearchOff[sRace].research)
		else
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.ResearchOn[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.ResearchOn[sRace].research)
		end
		if (StartWithMode == "mothership") then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.StartWithMothership[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.StartWithMothership[sRace].research)
		elseif (StartWithMode == "carrieronly") then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.StartWithCarrierOnly[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.StartWithCarrierOnly[sRace].research)
		elseif (StartWithMode == "frommap") then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.StartWithMapDefault[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.StartWithMapDefault[sRace].research)
		end
		-- disable stuff intended strictly for CPU players if the player is human
		if (Player_GetLevelOfDifficulty(playerIndex) == 0) then
			DisableListOfBuilds(playerIndex, sRace, RestrictedBy.PlayerHuman[sRace].build)
			DisableListOfResearch(playerIndex, sRace, RestrictedBy.PlayerHuman[sRace].research)
		end
		local mothershipsList = MothershipsList[sRace]
		for j = 1, getn(mothershipsList) do
			tinsert(Player_RestrictedBuilds[playerIndex + 1][sRace], mothershipsList[j])
		end
	end

	-- setup resource injections
	if (ResourceInjectionAmount > 0) then
		print("HWC: RESOURCE INJECTIONS of " .. ResourceInjectionAmount .. " RUs every " .. ResourceInjectionTime .. " seconds.")
		Rule_AddInterval("ResourceInjectionRule", ResourceInjectionTime)
	else
		print("HWC: RESOURCE INJECTIONS disabled.")
	end

	-- setup lump sum resource injection
	if (ResourceLumpSumAmount > 0) then
		print("HWC: LUMP SUM RESOURCE INJECTION of " .. ResourceLumpSumAmount .. " RUs after " .. ResourceLumpSumTime .. " seconds.")
		Rule_AddInterval("ResourceLumpSumRule", ResourceLumpSumTime)
	else
		print("HWC: LUMP SUM RESOURCE INJECTION disabled.")
	end

	-- special fleets overrides all of the following settings until I can think of a better solution
	if (SpecialFleetsMode == 1) then
		print("GPE: The START WITH, RESEARCH OFF, RESOURCING OFF and HYPERSPACE OFF modes have all been reset to their default settings by the SPECIAL FLEETS mode as they are incompatible.")
		Rule_Add("DespawnPlayerFleetInHyperspaceRule")
		Rule_Add("DespawnNonPlayerFleetOnMapRule")
	else
		-- setup the "Start With" game modes
		if (StartWithMode == "mothership") then
			print("HWC: START WITH mode set to mothership and carrier.")
			StartFleetSuffixString = StartFleetSuffixString .. "_car0"
			Rule_Add("DespawnPlayerFleetInHyperspaceRule")
			Rule_Add("DespawnNonPlayerFleetOnMapRule")
		elseif (StartWithMode == "carrieronly") then
			print("HWC: START WITH mode set to carrier only.")
			StartFleetSuffixString = StartFleetSuffixString .. "_car1"
			Rule_Add("DespawnPlayerFleetInHyperspaceRule")
			Rule_Add("DespawnNonPlayerFleetOnMapRule")
		elseif (StartWithMode == "frommap") then
			print("HWC: START WITH mode set to HW1 map.")
			-- this is set later toward the end of the script instead of here
--			StartFleetSuffixString = "_blank"
			Rule_Add("SpawnPlayerFleetInHyperspaceRule")
		end

		-- setup the "no research" game mode
		if (ResearchMode == 0) then
			print("HWC: RESEARCH disabled.")
			StartFleetSuffixString = StartFleetSuffixString .. "_rch0"
			-- allow time for mothership to come out of hyperspace
			Rule_AddInterval("GrantAllResearchRule", 15)
			UI_SetElementEnabled("NewTaskbar", "btnResearch", 0)
		else
			print("HWC: RESEARCH enabled.")
			StartFleetSuffixString = StartFleetSuffixString .. "_rch1"
		end

		-- setup the "Resourcing Disabled" option
		if (ResourceMode == -1) then
			print("HWC: RESOURCING disabled.")
			-- brute force method if needed, but with poor performance issues
--			SobGroup_Create("ResourcersToDestroy")
--			resourceStartCountingTime = Universe_GameTime()
--			Rule_AddInterval("DestroyResourcersRule", 1)
			StartFleetSuffixString = StartFleetSuffixString .. "_res0"
		else
			print("HWC: RESOURCING enabled.")
			StartFleetSuffixString = StartFleetSuffixString .. "_res1"
		end

		-- setup the "no hyperspace" game mode
		-- need to implement a starting fleet solution for this mode too
		if (HyperspaceMode == 0) then
			print("HWC: HYPERSPACE disabled.")
			StartFleetSuffixString = StartFleetSuffixString .. "_hyp0"
			-- was disabled in the past due to poor performance issues
			-- the only alternative I can think of is to duplicate all ships and remove the hyperspace ability in the .ship files
			Rule_AddInterval("DisableHyperspaceRule", 1)
		else
			print("HWC: HYPERSPACE enabled.")
			StartFleetSuffixString = StartFleetSuffixString .. "_hyp1"
		end
	end

	-- setup the "crates" game mode
	if (CratesMode > 0) then
		print("HWC: CRATES enabled.")
		CRATES_DoWeNeedToAddCratesCheckTime = CratesMode	-- crates tweakables from Homeworld 1's crates.script. Check to see if add crates every x seconds.
		SobGroup_Create("CrateMothership")
		-- prevent telling stutter when first crate spawned
		Preload_Ship("meg_crate_hw1container")
		-- create empty crate SobGroups. There can only be a max of 1 crate per player.
		for playerIndex = 0, Player_Count do
			SobGroup_Create("CrateSpawnGroup" .. playerIndex)
		end
		Rule_AddInterval("SpawnCratesRule", CRATES_DoWeNeedToAddCratesCheckTime)
		Rule_AddInterval("CheckCratesRule", CRATES_ArePlayersNearUpdateTime)
	else
		print("HWC: CRATES disabled.")
	end

	-- setup for bounties
	if (BountiesMode > 0) then
		print("HWC: BOUNTIES enabled.")
		BOUNTY_Level = BountiesMode
		SobGroup_Create("BountyCounterGroup")
		Rule_AddInterval("UpdateBountyStats", BOUNTY_UpdateRate)
	else
		print("HWC: BOUNTIES disabled.")
	end


	--======================================================================
	-- New GearBox HWRM stuff

	if (norushtime > 0) then
		UI_TimerStop("NewTaskbar", "GameTimer")	
		Rule_AddInterval("norushtime_updating", 10)
	end

	Rule_AddInterval("cpuplayers_updating", 0.1)


	--======================================================================
	-- Gameplay Enhanced rules

	-- setup background music
	if (BackgroundMusic == -1) then
		print("GPE: BACKGROUND MUSIC is set to Map Default.")
	elseif (BackgroundMusic == 0) then
		print("GPE: BACKGROUND MUSIC is set to Shuffle.")
		Rule_Add("RandomMusicRule")
	else
		print("GPE: BACKGROUND MUSIC is set to #" .. BackgroundMusic .. ".")
		Rule_Add("StaticMusicRule")
	end

	-- setup game speed
	print("GPE: Changing the game speed to " .. GameSpeedMode .. " times the normal value.")
	-- not sure what the 20 does here
	Universe_SlowDown(GameSpeedMode, 20)

	-- setup special fleets. needs to come before defined roles
	if (SpecialFleetsMode == 1) then
		print("GPE: SPECIAL FLEETS enabled.")
		-- this is set later toward the end of the script instead of here
--		StartFleetSuffixString = "_blank"
		Rule_Add("SpecialFleets_Init")
	else
		print("GPE: SPECIAL FLEETS disabled.")
	end

	-- setup defined roles. needs to come before bentusi roulette
	if (DefinedRolesMode == 1) then
		print("GPE: DEFINED ROLES enabled.")
		Rule_Add("DefinedRoles_Init")
	else
		print("GPE: DEFINED ROLES disabled.")
	end

	-- setup bentusi roulette
	if (BentusiRouletteMode > 0) then
		print("GPE: BENTUSI ROULETTE enabled.")
		Rule_Add("BentusiRoulette_Init")
	else
		print("GPE: BENTUSI ROULETTE disabled.")
	end

	-- setup win condition. needs to come very last
	if (WinConditionMode == 0) then
		if (DefinedRolesMode == 1) then
			print("GPE: DEFINED ROLES is enabled. Switching to Kill Team Production Ships WIN CONDITION instead of Kill Player Production Ships WIN CONDITION.")
			Rule_AddInterval("CheckTeamProductionShipsLeftRule", 1)
		else
			print("GPE: WIN CONDITION set to Kill Player Production Ships mode.")
			Rule_AddInterval("CheckPlayerProductionShipsLeftRule", 1)
		end
	elseif (WinConditionMode == 1) then
		print("GPE: WIN CONDITION set to Kill Team production Ships mode.")
		Rule_AddInterval("CheckTeamProductionShipsLeftRule", 1)
	elseif (WinConditionMode == 2) then
		print("GPE: WIN CONDITION set to kill all ships mode.")
		Rule_AddInterval("CheckTeamAnyShipsLeftRule", 1)
	elseif (WinConditionMode == 3) then
		if (StartWithMode == "mothership") then
			print("HWC: Destroy mothership WIN CONDITION enabled.")
			Rule_AddInterval("CheckMothershipDeadRule", 1)
		else
			print("HWC: Destroy mothership WIN CONDITION is not compatible with carrier or HWRM Map Default battles. HWRM normal WIN CONDITION enabled, instead.")
			Rule_AddInterval("CheckPlayerProductionShipsLeftRule", 1)
		end
	elseif (WinConditionMode == 4) then
		print("HWC: Capture capital ship WIN CONDITION enabled.")
		for playerIndex = 0, Player_Count do
			local CaptureGroupName = "captureGroup_" .. playerIndex
			SobGroup_Create(CaptureGroupName)
			SobGroup_SetSwitchOwnerFlag(CaptureGroupName, 0)
		end
		Rule_AddInterval("CheckCaptureStatusRule", 1)
	elseif (WinConditionMode == 5) then
		print("HWC: Quit manually WIN CONDITION enabled.")
	end

	-- these need to override any previous settings
	if ((StartWithMode == "frommap") or (SpecialFleetsMode == 1)) then
		StartFleetSuffixString = "_blank"
	end
	-- finally set the start fleet suffix here
	print("HWCE: Setting StartFleetSuffix: \"" .. StartFleetSuffixString .. "\"")
	SetStartFleetSuffix(StartFleetSuffixString)

	-- would like to eventually get rid of this, but it depends on a GearBox setting
	Rule_AddInterval("sobgroups_init", 1)

	print("HWCE: Done parsing OnInit().")
end
