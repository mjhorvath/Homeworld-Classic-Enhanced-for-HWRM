-------------------------------------------------------------------------------
-- Adds an objective to the objectives screen.
-- Unfortunately, I don't have an audio file for every scenario.
-- These variables could be moved to "hwclassicenhanced.lua", where the WIN CONDITION rule is set up.
--
function SetWinObjective()
	local objectiveTextShort = ""
	local objectiveTextLong = ""
	local objectiveAudioFile = ""
	local objectiveSubtitle = ""
	if (WinConditionMode == 0) then
		-- Kill team production
		if (DefinedRolesMode == 1) then
			objectiveTextShort = "Defeat the opposing team's production ships!"
			objectiveTextLong = "Sensors are picking up signatures of enemy Capital Class vessels in the area. Destroy the opposing team's production ships."
			objectiveAudioFile = ""
			objectiveSubTitle = ""
		-- Kill player production  (HWRM normal)
		else
			objectiveTextShort = "Defeat each enemy player's production ships!"
			objectiveTextLong = "Sensors are picking up signatures of enemy Capital Class vessels in the area. Destroy each player's production ships."
			objectiveAudioFile = ""
			objectiveSubTitle = ""
		end
	-- Kill team production
	elseif (WinConditionMode == 1) then
		objectiveTextShort = "Defeat the opposing team's production ships!"
		objectiveTextLong = "Sensors are picking up signatures of enemy Capital Class vessels in the area. Destroy the opposing team's production ships."
		objectiveAudioFile = ""
		objectiveSubTitle = ""
	-- Kill all ships
	elseif (WinConditionMode == 2) then
		objectiveTextShort = "Defeat all enemy vessels!"
		objectiveTextLong = "Sensors are picking up signatures of enemy vessels in the area. Locate and destroy all enemy vessels."
		objectiveAudioFile = ""
		objectiveSubTitle = ""
	elseif (WinConditionMode == 3) then
		-- Destroy mothership
		if (StartWithMode == "mothership") then
			objectiveTextShort = "Destroy all enemy Motherships!"
			objectiveTextLong = "Sensors are picking up the signature of an enemy Mothership in the area. Locate and destroy the enemy Mothership."
			objectiveAudioFile = "data:sound\\speech\\allships\\emperor\\CHALLENGE_DESTROYMOTHERSHIPS_2"
			objectiveSubTitle = "Primary Objective:  Destroy all enemy Motherships."
		-- Kill player production  (HWRM normal)
		else
			objectiveTextShort = "Defeat each enemy player's production ships!"
			objectiveTextLong = "Sensors are picking up signatures of enemy Capital Class vessels in the area. Destroy each player's production ships."
			objectiveAudioFile = ""
			objectiveSubTitle = ""
		end
	-- Capture capital ship
	elseif (WinConditionMode == 4) then
		objectiveTextShort = "Capture an enemy capital ship!"
		objectiveTextLong = "Sensors are picking up signatures of enemy Capital Class vessels in the area. Capture an enemy Capital Class vessel."
		objectiveAudioFile = ""
		objectiveSubTitle = ""
	-- Quit manually
	elseif (WinConditionMode == 5) then
		objectiveTextShort = "Defeat all enemy vessels!"
		objectiveTextLong = "Sensors are picking up signatures of enemy vessels in the area. Locate and destroy all enemy vessels."
		objectiveAudioFile = ""
		objectiveSubTitle = ""
	end
	objectivePrimary = Objective_Add(objectiveTextShort, OT_Primary)					-- $3005	Destroy all enemy Motherships.
	Objective_AddDescription(objectivePrimary, objectiveTextLong)						-- $3006	Sensors are picking up signatures of enemy Super-Capital Class vessels in the area.  Locate and destroy all enemy Motherships.
--	Subtitle_Message_Handler(objectiveSubTitle, 2, objectiveAudioFile, Universe_CurrentPlayer())		-- $3007	Primary Objective:  Destroy all enemy Motherships.
	if (objectiveAudioFile ~= "") then
		Sound_SpeechPlay(objectiveAudioFile)
	end
	Rule_Remove("SetWinObjective")
end

-------------------------------------------------------------------------------
-- Cycles through all players.
--
function CyclePlayers()
	if (WIN_AnyPlayerIndex == Player_Count) then
		WIN_AnyPlayerIndex = 0
	else
		WIN_AnyPlayerIndex = WIN_AnyPlayerIndex + 1
	end
end

-------------------------------------------------------------------------------
-- Kills a player if the player has no production capability.
--
function CheckPlayerProductionShipsLeftRule()
	local bCycle = 1
	-- if the player is alive but has no ships of its own...
	if ((Player_IsAlive(WIN_AnyPlayerIndex) == 1) and (Player_HasShipWithBuildQueue(WIN_AnyPlayerIndex) == 0)) then
--		-- If DEFINED ROLES is active and the player has a teammate with the Capital role, then switch over to the Kill Team Production rule instead.
--		-- Currently, DEFINED ROLES automatically switches to Kill Team Production no matter what.
--		if (JOB_PlayerModes[WIN_AnyPlayerIndex] == 1) then
--			bCycle = 0
--			CheckTeamProductionShipsLeftRule()		
--		-- otherwise, kill the player
--		else
--			WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
--		end
		-- DEFINED ROLES now always defaults to Kill Team Production. No reason any more to do the above check.
		WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
	end
	if (bCycle == 1) then
		CyclePlayers()
	end
end

-------------------------------------------------------------------------------
-- Kills a player if no team member has any production capability.
--
function CheckTeamProductionShipsLeftRule()
	local bDead = 1
	for otherPlayerIndex = 0, Player_Count do
		-- if the player has an ally who is alive and has build-capable ships, then do not kill the player
		if ((AreAllied(WIN_AnyPlayerIndex, otherPlayerIndex) == 1) and (Player_IsAlive(otherPlayerIndex) == 1) and (Player_HasShipWithBuildQueue(otherPlayerIndex) == 1)) then
			bDead = 0
			break
		end
	end
	-- otherwise, kill the player
	if ((bDead == 1) and (Player_IsAlive(WIN_AnyPlayerIndex) == 1)) then
		WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
	end
	CyclePlayers()
end

-------------------------------------------------------------------------------
-- Kills a player if no team member has any ships.
--
function CheckTeamAnyShipsLeftRule()
	local bDead = 1
	for otherPlayerIndex = 0, Player_Count do
		-- if the player has an ally who is alive and possesses at least one ship, then do not kill the player
		if ((AreAllied(WIN_AnyPlayerIndex, otherPlayerIndex) == 1) and (Player_IsAlive(otherPlayerIndex) == 1) and (Player_NumberOfShips(otherPlayerIndex) > 0)) then
			bDead = 0
			break
		end
	end
	-- otherwise, kill the player
	if ((bDead == 1) and (Player_IsAlive(WIN_AnyPlayerIndex) == 1)) then
		WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
	end
	CyclePlayers()
end

--------------------------------------------------------------------------------
-- Checks to see if any players have had a ship captured.
--
function CheckCaptureStatusRule()
	local groupName = "captureGroup_" .. WIN_AnyPlayerIndex
	-- if the WIN_AnyPlayerIndex player is alive, and the group is not empty...
	if ((Player_IsAlive(WIN_AnyPlayerIndex) == 1) and (SobGroup_Empty(groupName) == 0)) then
		WIN_trace("CheckCaptureStatusRule: Player " .. WIN_AnyPlayerIndex .. " has ships currently being captured.")
		-- for each player in a randomized list of players...
		for i, playerIndex in Universe_RandomPlayerList() do
			-- if the player is not the WIN_AnyPlayerIndex player, and the player is alive, and the ship that was being captured is now owned by this player...
			if ((playerIndex ~= WIN_AnyPlayerIndex) and (Player_IsAlive(playerIndex) == 1) and (SobGroup_CountByPlayer(groupName, playerIndex) > 0)) then
				-- announce the loss of the ship if WIN_AnyPlayerIndex is the local player
				if (Player_IsLocal(WIN_AnyPlayerIndex) == 1) then
					Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\ShipStolen")
				end
				-- wait a while before killing the WIN_AnyPlayerIndex player
				WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
			end
		end
	end
	-- if the WIN_AnyPlayerIndex player is still alive...
	if (Player_IsAlive(WIN_AnyPlayerIndex)) then
		-- update the list of ships this player owns that are being captured
		SobGroup_GetSobGroupBeingCapturedGroup("Player_Ships" .. WIN_AnyPlayerIndex, groupName)
	end
	CyclePlayers()
end

--------------------------------------------------------------------------------
-- Kills players if they have no more motherships.
-- The loop in this function is very similar to the PlayerHasMothership() function depending on if I test StartWithMode.
--
function CheckMothershipDeadRule()
	-- if the player is alive...
	if (Player_IsAlive(WIN_AnyPlayerIndex) == 1) then
		local sRace = Player_Races[WIN_AnyPlayerIndex + 1]
		local shipList = TechList[sRace].ships
		local MothershipIsDead = 1
		-- for every class of ship...
		for k = 1, getn(shipList) do
			local kClass = shipList[k].class
			local kItems = shipList[k].items
			-- if this is the "mothership" class...
			if (kClass == "mothership") then
				-- for every ship belonging to that class...
				for l = 1, getn(kItems) do
					local lTypes = kItems[l].types
					-- for every sub-type of ship...
					for m = 1, getn(lTypes) do
						local mType = lTypes[m]
						-- check to see if the player has a mothership
						if (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(WIN_AnyPlayerIndex, mType) > 0) then
							MothershipIsDead = 0
							break
						end
					end
					if (MothershipIsDead == 0) then
						break
					end
				end
				if (MothershipIsDead == 0) then
					break
				end
			end
		end
		-- if the player has no motherships, kill the player
		if (MothershipIsDead == 1) then
			WIN_trace("CheckMothershipDeadRule: Player " .. WIN_AnyPlayerIndex .. " has no more motherships. Killing the player")
			WriteStatsThenKillPlayer(WIN_AnyPlayerIndex)
		end
	end
	CyclePlayers()
end
