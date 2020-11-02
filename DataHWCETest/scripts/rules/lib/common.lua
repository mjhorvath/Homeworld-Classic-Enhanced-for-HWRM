--------------------------------------------------------------------------------
-- special debug commands, similar to the "AI_trace" function
-- uncomment the lines to enable printing to "HW2.log"

-- common code
function COM_trace(sString)
--	print("COM_TRACE: " .. sString)
end
-- bentusi roulette
function BEN_trace(sString)
--	print("BEN_TRACE: " .. sString)
end
-- defined roles
function DEF_trace(sString)
--	print("DEF_TRACE: " .. sString)
end
-- special fleets
function SPC_trace(sString)
--	print("SPC_TRACE: " .. sString)
end
-- homeworld classic
function HWC_trace(sString)
--	print("HWC_TRACE: " .. sString)
end
-- win condition
function WIN_trace(sString)
--	print("WIN_TRACE: " .. sString)
end
-- write stats
function WST_trace(sString)
--	print("WST_TRACE: " .. sString)
end
-- GUI display
function GUI_trace(sString)
--	print("GUI_TRACE: " .. sString)
end
-- crates
function CRA_trace(sString)
--	print("CRA_TRACE: " .. sString)
end


-------------------------------------------------------------------------------
-- Checks whether certain game rules are active or not
--
function BuildSuffixTable()
	local tempTable = {}
	if StartWithMode == "carrieronly" then
		tempTable[1] = 1
	else
		tempTable[1] = 0
	end
	if ResearchMode == 1 then
		tempTable[2] = 1
	else
		tempTable[2] = 0
	end
	if ResourceMode ~= -1 then
		tempTable[3] = 1
	else
		tempTable[3] = 0
	end
	if HyperspaceMode == 1 then
		tempTable[4] = 1
	else
		tempTable[4] = 0
	end
	return tempTable
end


-------------------------------------------------------------------------------
-- Disables a list of build abilities for a player
--
function DisableListOfBuilds(playerIndex, sRace, buildTable)
	for k = 1, getn(buildTable) do
		local buildItem = buildTable[k]
		-- if the research item hasn't already been restricted...
		if (IsBuildRestricted(playerIndex, sRace, buildItem) == 0) then
			-- if the research item hasn't already been granted...
			if (IsBuildGranted(playerIndex, sRace, buildItem) == 0) then
				COM_trace("DisableListOfBuilds: Disabling build option: " .. buildItem .. " for Player " .. playerIndex .. ".")
				Player_RestrictBuildOption(playerIndex, buildItem)
				tinsert(Player_RestrictedBuilds[playerIndex + 1][sRace], buildItem)
			else
				COM_trace([[DisableListOfBuilds: "]] .. buildItem .. [[" has already been granted. Can't restrict.]])
			end
		else
			COM_trace([[DisableListOfBuilds: "]] .. buildItem .. [[" has already been restricted. Can't restrict again.]])
		end
	end
end


-------------------------------------------------------------------------------
-- Disables a list of research abilities for a player
--
function DisableListOfResearch(playerIndex, sRace, researchTable)
	for k = 1, getn(researchTable) do
		local researchItem = researchTable[k]
		-- if the research item hasn't already been restricted...
		if (IsResearchRestricted(playerIndex, sRace, researchItem) == 0) then
			-- if the research item hasn't already been granted...
			if (IsResearchGranted(playerIndex, sRace, researchItem) == 0) then
				-- restrict the research item
				COM_trace("DisableListOfResearch: Disabling research option: " .. researchItem .. " for Player " .. playerIndex .. ".")
				Player_RestrictResearchOption(playerIndex, researchItem)
				tinsert(Player_RestrictedResearch[playerIndex + 1][sRace], researchItem)
			-- else...
			else
				COM_trace([[DisableListOfResearch: "]] .. researchItem .. [[" has already been granted. Can't restrict.]])
			end
		-- else...
		else
			COM_trace([[DisableListOfResearchDisableListOfResearch: "]] .. researchItem .. [[" has already been restricted. Can't restrict again.]])
		end
	end
end


-------------------------------------------------------------------------------
-- checks whether a research item has been restricted
--
function IsResearchRestricted(playerIndex, sRace, sresearchItem)
	local researchList = Player_RestrictedResearch[playerIndex + 1][sRace]
	for n = 1, getn(researchList) do
		local sCheckvs = researchList[n]
		if (strlower(sresearchItem) == strlower(sCheckvs)) then
			return 1
		end
	end
	return 0
end


-------------------------------------------------------------------------------
-- checks whether a research item has been granted
--
function IsResearchGranted(playerIndex, sRace, sresearchItem)
	local researchList = Player_GrantedResearch[playerIndex + 1][sRace]
	for n = 1, getn(researchList) do
		local sCheckvs = researchList[n]
		if (strlower(sresearchItem) == strlower(sCheckvs)) then
			return 1
		end
	end
	return 0
end


-------------------------------------------------------------------------------
-- checks whether a research item has been restricted
--
function IsBuildRestricted(playerIndex, sRace, sbuildItem)
	local buildList = Player_RestrictedBuilds[playerIndex + 1][sRace]
	for n = 1, getn(buildList) do
		local sCheckvs = buildList[n]
		if (strlower(sbuildItem) == strlower(sCheckvs)) then
			return 1
		end
	end
	return 0
end


-------------------------------------------------------------------------------
-- checks whether a research item has been granted
--
function IsBuildGranted(playerIndex, sRace, sbuildItem)
	local buildList = Player_GrantedBuilds[playerIndex + 1][sRace]
	for n = 1, getn(buildList) do
		local sCheckvs = buildList[n]
		if (strlower(sbuildItem) == strlower(sCheckvs)) then
			return 1
		end
	end
	return 0
end


--------------------------------------------------------------------------------
-- Returns true if the player is the local player.
--
function Player_IsLocal(iPlayer)
	if (iPlayer == FE_GetCurrentPlayerIndex()) then
		return 1
	end
	return 0
end


--------------------------------------------------------------------------------
-- Returns a table containing the player indices in random order.
--
function Universe_RandomPlayerList()
	local PlayerCount, PlayerTable, PlayerIndex = Universe_PlayerCount(), {}, 1
	while (getn(PlayerTable) < PlayerCount) do
		local PlayerRandom = srandom(CRA_Seed, 0, PlayerCount - 1)
		local PlayerAlready = 0
		for i, k in PlayerTable do
			if (k == PlayerRandom) then
				PlayerAlready = 1
				break
			end
		end
		if (PlayerAlready == 0) then
			PlayerTable[PlayerIndex] = PlayerRandom
			PlayerIndex = PlayerIndex + 1
		end
	end
	return PlayerTable
end


-------------------------------------------------------------------------------
-- Returns the team number of the player (may be different than what is shown in the game-setup screen).
--
function Player_Team(iPlayer)
	local TeamsTable = {}
	for playerIndex = 0, Player_Count do
		local IsAllied = 0
		for i = 1, getn(TeamsTable) do
			if (AreAllied(playerIndex, TeamsTable[i]) == 1) then
				IsAllied = 1
				break
			end
		end
		if (IsAllied == 0) then
			tinsert(TeamsTable, playerIndex)
		end
	end
	for i = 1, getn(TeamsTable) do
		if (AreAllied(iPlayer, TeamsTable[i]) == 1) then
			return i
		end
	end
end


-------------------------------------------------------------------------------
-- Counts the size of a player's fleet.
-- Could actually use the normal build list here instead of the TechList table.
--
function Player_NumberOfShips(playerIndex)
	local sRace = Player_Races[playerIndex + 1]
	local shipCount = 0
	local shipList = TechList[sRace].ships
	-- for every class...
	for i, iCount in shipList do
		local shipItems = iCount.items
		-- for every ship within that class...
		for j, jCount in shipItems do
			local shipType = j
			local shipBits = VariantBuildBool[shipType]
			local shipVariant = GetVariantsMatch(shipType, shipBits)
			-- keep a count of how many of this variant the player owns
			shipCount = shipCount + Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, shipVariant)
		end
	end
	return shipCount
end
