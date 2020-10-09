----------Stats_ShipsCreated(g_playerID, GetShipId("Hgn_MS_Production_Fighter"))>=1--------------


-------------------------------------------------------------------------------
-- Writes ending stats to a file. Call this before you call the "setGameOver()" 
-- function. Any newlines and/or double quotation marks contained in strings 
-- that were retrieved from elsewhere (such as game rule settings) will break 
-- this script.
--
-- Things that this function can't report on:
--   Map Name
--   Player Name
--
-- Can't write the player name because that is a wide character string. Can't 
-- write the map name because the game rule has no idea what map is loaded.
--
-- Some values are not exactly the same as what is reported by the Stats 
-- screen. Probably because the game takes an extra few milliseconds to 
-- actually end after this script is run.

function WriteStats()
	local game_time = Universe_GameTime()
	local game_h = floor(game_time/3600)
	local game_m = floor(game_time/60 - game_h * 60)
	local game_s = game_time - game_m * 60 - game_h * 3600
	local game_str = format("%02d:%02d:%02d", game_h, game_m, game_s)
	local ftime = date("%H:%M:%S")
	local fdate = date("%Y/%m/%d")
	local fstamp = date("%m-%d-%Y_%H_%M_%S")
	if (strsub(fstamp, 1, 1) == "0") then
		fstamp = strsub(fstamp, 2)	
	end

	-- These variables must match those listed in "data\ui\newui\stats.lua".
	-- Combat total = (ShipbuiltRU) + (ShipsCapturedRU) + (ShipsDestroyedRU) - (ShipslostRU)
	local smShipBuiltRU = 1.0
	local smShipsCapturedRU = 1.0
	local smShipsDestroyedRU = 1.0
	local smShipsLostRU = 1.0
	-- Resource total = (ResourcesHarvested) + (ResourcesSpent) + (CollectorsBuiltRU) + (RefineriesRU)
	local smResourcesHarvestedRU = 0.5
	local smResourcesSpentRU = 0.5
	local smCollectorsBuiltRU = 1.0
	local smRefineriesRU = 1.0
	-- Building & Research total = (Total build shipsRU) + (NumSubsystemsRU) + (ResearchRU)
	local smBuildShipsRU = 1.0
	local smSubsystemsRU = 1.5
	local smResearchRU = 1.0
	-- Diplomacy total = (Tribute donated) - (Tribute received) + deathTime * 3
	local smTributeDonatedRU = 1.0
	local smTributeReceivedRU = 0.25
	local smDeathTimeLoserSec = 2.245 	-- just to make the numbers not so obvious
	local smDeathTimeWinnerSec = 4.879

	writeto("HWCE_EndGame_" .. fstamp .. ".stats")

						write("\n  INFO = {")
						write("\n    TotalTime = \"" .. game_str .. "\",")
						write("\n    LocalTime = \"" .. ftime .. "\",")
						write("\n    LocalDate = \"" .. fdate .. "\",")
						write("\n    RulesName = \"" .. GameRulesName .. "\",")
						--write("\n    MapName = \"unknown\",")
						write("\n  },")
						write("\n  RULES = {")

	for i = 1, getn(GameSetupOptions) do
		local thisRule = GameSetupOptions[i]
		local thisRuleID = thisRule.name
		local thisRuleName = thisRule.locName
		local thisRuleChoices = thisRule.choices
		local thisRuleSetting = GetGameSettingAsString(thisRuleID)
		local thisRuleSettingLabel = ""
		for j = 2, getn(thisRuleChoices), 2 do
			local choiceLabel = thisRuleChoices[j - 1]
			local choiceValue = tostring(thisRuleChoices[j])
			if (thisRuleSetting == choiceValue) then
				thisRuleSettingLabel = choiceLabel
				break
			end
		end

						write("\n    {Rule = \"" .. thisRuleName .. "\", Setting = \"" .. thisRuleSettingLabel .. "\"},")

	end

						write("\n  },")

	for playerIndex = 0, Player_Count do
		local sRace = Player_Races[playerIndex + 1]
		WST_trace("Player " .. playerIndex .. " is race " .. sRace .. ".")

						write("\n  Player" .. playerIndex .. " = {")

		-- Building & Research total = (Total build shipsRU) + (NumSubsystemsRU) + (ResearchRU)
		local BuildingTotal = floor(Stats_BuildShipsBuiltInRUs(playerIndex) * smBuildShipsRU + Stats_SubsystemsBuiltInRUs(playerIndex) * smSubsystemsRU + Stats_ResearchRUValue(playerIndex) * smResearchRU)
		local BuildCapableShips = Stats_BuildShipsBuilt(playerIndex)
		local ResearchCost = Stats_ResearchRUValue(playerIndex)
		local ResearchPercent = floor(100 * Stats_ResearchCount(playerIndex)/Stats_ResearchTotal(playerIndex))
		local TotalSubsystems = Stats_SubsystemsBuilt(playerIndex)

						write("\n    BUILDING = {")
						write("\n      BuildingTotal = " .. BuildingTotal .. ",")
						write("\n      BuildCapableShips = " .. BuildCapableShips .. ",")
						write("\n      ResearchCost = " .. ResearchCost .. ",")
						write("\n      ResearchPercent = " .. ResearchPercent .. ",")
						write("\n      TotalSubsystems = " .. TotalSubsystems .. ",")
						write("\n    },")

		-- Combat total = (ShipbuiltRU) + (ShipsCapturedRU) + (ShipsDestroyedRU) - (ShipslostRU)
		local CombatTotal = floor(Stats_TotalShipsBuiltInRUs(playerIndex) * smShipBuiltRU + Stats_EnemyShipsCapturedInRUs(playerIndex) * smShipsCapturedRU + Stats_TotalKillsInRUs(playerIndex) * smShipsDestroyedRU - Stats_TotalLossesInRUs(playerIndex) * smShipsLostRU)
		local TotalShipsBuilt = Stats_TotalShipsBuilt(playerIndex)
		local TotalShipsCaptured = Stats_EnemyShipsCaptured(playerIndex)
		local TotalShipsDestroyed = Stats_TotalKills(playerIndex)
		local TotalShipsLost = Stats_TotalLosses(playerIndex)

						write("\n    COMBAT = {")
						write("\n      CombatTotal = " .. CombatTotal .. ",")				-- seems okay
						write("\n      TotalShipsBuilt = " .. TotalShipsBuilt .. ",")			-- seems okay
						write("\n      TotalShipsCaptured = " .. TotalShipsCaptured .. ",")		-- seems okay
						write("\n      TotalShipsDestroyed = " .. TotalShipsDestroyed .. ",")		-- seems okay
						write("\n      TotalShipsLost = " .. TotalShipsLost .. ",")			-- seems okay
						write("\n    },")

		local TimeOfDeathValue = Stats_TimeKilled(playerIndex)
		local TimeOfDeathText = TimeOfDeathValue
		local TimeOfDeathMulti = smDeathTimeLoserSec
		if (TimeOfDeathValue == 0) then
			TimeOfDeathValue = Stats_TotalDuration()
			TimeOfDeathText = "\"--\""
			TimeOfDeathMulti = smDeathTimeWinnerSec
		end
		local TributeDonated = Stats_TributeDonated(playerIndex)
		local TributeReceived = Stats_TributeReceived(playerIndex)
		-- Diplomacy total = (Tribute donated) - (Tribute received) + deathTime * 3
		local DiplomacyTotal = floor(TributeDonated * smTributeDonatedRU - TributeReceived * smTributeReceivedRU + TimeOfDeathValue * TimeOfDeathMulti)

						write("\n    DIPLOMACY = {")
						write("\n      DiplomacyTotal = " .. DiplomacyTotal .. ",")
						write("\n      TimeOfDeath = " .. TimeOfDeathText .. ",")
						write("\n      TributeDonated = " .. TributeDonated .. ",")
						write("\n      TributeReceived = " .. TributeReceived .. ",")
						write("\n    },")

		local RefineryShipCount = 0
		local RefineryRUsCount = 0
		local thisList = ResourceControllersList[sRace]		-- stored in "objectlist_misc.lua"
		for i = 1, getn(thisList) do
			local thisShip = thisList[i]
			RefineryShipCount = RefineryShipCount + Stats_ShipsCreated(playerIndex, GetShipId(thisShip))
			RefineryRUsCount = RefineryRUsCount + Stats_ShipsCreatedInRUs(playerIndex, GetShipId(thisShip))
		end
		local ResourceCollectors = Stats_HarvestersBuilt(playerIndex)
		local TotalRUHarvested = Stats_GatheredRUs(playerIndex)
		local TotalRUSpent = Stats_SpentRUs(playerIndex)
		-- Resource total = (ResourcesHarvested) + (ResourcesSpent) + (CollectorsBuiltRU) + (RefineriesRU)
		local ResourceTotal = floor(TotalRUHarvested * smResourcesHarvestedRU + TotalRUSpent * smResourcesSpentRU + Stats_HarvestersBuiltInRUs(playerIndex) * smCollectorsBuiltRU + RefineryRUsCount * smRefineriesRU)

						write("\n    RESOURCE = {")
						write("\n      MobileRefineries = " .. RefineryShipCount .. ",")
						write("\n      ResourceCollectors = " .. ResourceCollectors .. ",")
						write("\n      ResourceTotal = " .. ResourceTotal .. ",")
						write("\n      TotalRUHarvested = " .. TotalRUHarvested .. ",")
						write("\n      TotalRUSpent = " .. TotalRUSpent .. ",")
						write("\n    },")

		local OverviewTotal = BuildingTotal + CombatTotal + DiplomacyTotal + ResourceTotal

						write("\n    OVERVIEW = {")
						write("\n      BuildingTotal = " .. BuildingTotal .. ",")
						write("\n      CombatTotal = " .. CombatTotal .. ",")
						write("\n      DiplomacyTotal = " .. DiplomacyTotal .. ",")
						write("\n      ResourceTotal = " .. ResourceTotal .. ",")
						write("\n      OverviewTotal = " .. OverviewTotal .. ",")
						write("\n    },")
						write("\n    SHIPS = {")

		dofilepath("data:scripts/races/" .. sRace .. "/scripts/def_build.lua")
		for i, iCount in build do
			local bldName = iCount.ThingToBuild
			local bldType = iCount.Type
			if (bldType == 0) then
				local bldAmount = Stats_ShipsCreated(playerIndex, GetShipId(bldName))

						write("\n      {Type = " .. bldType .. ", ThingToBuild = \"" .. bldName .. "\", Number = " .. bldAmount .. ",},")

				WST_trace("Player = " .. playerIndex .. ", Type = " .. bldType .. ", ThingToBuild = \"" .. bldName .. "\", Number = " .. bldAmount)
			end
		end

						write("\n    },")
						write("\n    SUBSYSTEMS = {")

		for i, iCount in build do
			local bldName = iCount.ThingToBuild
			local bldType = iCount.Type
			if (bldType == 1) then
				local bldAmount = Stats_ShipsCreated(playerIndex, GetShipId(bldName))

						write("\n      {Type = " .. bldType .. ", ThingToBuild = \"" .. bldName .. "\", Number = " .. bldAmount .. ",},")

				WST_trace("Player = " .. playerIndex .. ", Type = " .. bldType .. ", ThingToBuild = \"" .. bldName .. "\", Number = " .. bldAmount)
			end
		end

						write("\n    },")
						write("\n    RESEARCH = {")

		dofilepath("data:scripts/races/" .. sRace .. "/scripts/def_research.lua")
		local resCount = 0
		for i, iCount in research do
			local resName = iCount.Name
			local resComplete = Player_HasResearch(playerIndex, resName)
			resCount = resCount + resComplete

						write("\n      {Name = \"" .. resName .. "\", Completed = " .. resComplete .. ",},")

			WST_trace("Player = " .. playerIndex .. ", Name = \"" .. resName .. "\", Completed = " .. resComplete)
		end

						write("\n    },")

		local RaceString = RacesListCorrectName[sRace]
		local PlayerTeam = Player_Team(playerIndex)
		local PlayerIsAlive = Player_IsAlive(playerIndex)
		local PlayerIsLocal = 0
		if (playerIndex == FE_GetCurrentPlayerIndex()) then
			PlayerIsLocal = 1
		end

						write("\n    GENERAL = {")
						write("\n      Name = \"unkown\",")
						write("\n      Race = \"" .. RaceString .. "\",")
						write("\n      Team = " .. PlayerTeam .. ",")
						write("\n      Alive = " .. PlayerIsAlive .. ",")
						write("\n      Local = " .. PlayerIsLocal .. ",")
						write("\n    },")
						write("\n  },")

	end

						write("\n")

	writeto()
	print("GPE: ADVANCED STATS written to profile folder.")
--	Subtitle_Message("GPE: Additional end-of-game stats have been written to each player's profile directory.", 10)
	Rule_Remove("WriteStats")		-- should this function be a rule or not?
end


--------------------------------------------------------------------------------
-- Writes advanced stats to the local player's profile folder before killing him.
-- Partially disabled because maybe it's best only to write the stats at the end of the game, so that they are identical for all players (if they stick it out).
--
function WriteStatsThenKillPlayer(playerIndex)
--	if (playerIndex == FE_GetCurrentPlayerIndex()) then
--		WriteStats()
--	end
	Player_Kill(playerIndex)
	if (playerIndex ~= Universe_CurrentPlayer()) then
		local playerNameW = Player_GetName(playerIndex)
		--UI_SetScreenEnabled("PlayerDestroyedScreen", 1)
		--UI_SetScreenVisible("PlayerDestroyedScreen", 1)
		--UI_SetTextLabelTextWF1("PlayerDestroyedScreen", "lblDescription1", "$1231", playerNameW)
		Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47100")
		Player_AddLocalChatMessage("$1231", playerNameW)
	end
end
