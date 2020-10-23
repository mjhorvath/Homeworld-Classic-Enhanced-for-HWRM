
--==============================================================================
-- Make sure nobody can hyperspace. Very slow.
--
function DisableHyperspaceRule()
	if (Player_IsAlive(hyperspacePlayerIndex) == 1) then
		-- disable the hyperspace ability for all ships owned by the player
		SobGroup_AbilityActivate("Player_Ships" .. hyperspacePlayerIndex, AB_Hyperspace, 0)
		-- performance sucks
--		SobGroup_AbilityActivate("Player_Ships" .. hyperspacePlayerIndex, AB_HyperspaceInhibitor, 0)
--		SobGroup_AbilityActivate("Player_Ships" .. hyperspacePlayerIndex, AB_HyperspaceViaGate, 0)
--		SobGroup_AbilityActivate("Player_Ships" .. hyperspacePlayerIndex, AB_FormHyperspaceGate, 0)
	end

	-- rotate to next player for the next frame
	if (hyperspacePlayerIndex == Player_Count) then
		hyperspacePlayerIndex = 0
	else
		hyperspacePlayerIndex = hyperspacePlayerIndex + 1
	end
end


--------------------------------------------------------------------------------
-- Rule to inject resources.
--
function ResourceInjectionRule()
	local resourcesToInject = ResourceInjectionAmount
	HWC_trace("ResourceInjectionRule: Injecting " .. resourcesToInject .. " resources.")

	for playerIndex = 0, Player_Count do
		if (Player_IsAlive(playerIndex) == 1) then
			local currentResources = Player_GetRU(playerIndex)
			Player_SetRU(playerIndex, currentResources + resourcesToInject)
			-- if the player is the local player, announce the RU injection
			if (Player_IsLocal(playerindex) == 1) then
				Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\ResourceInjectionReceived")
			end
		end
	end
end


--------------------------------------------------------------------------------
-- Rule to inject lump sum resources.
--
function ResourceLumpSumRule()
	local resourcesToInject = ResourceLumpSumAmount
	HWC_trace("ResourceLumpSumRule: Injecting a lump sum of " .. resourcesToInject .. " resources.")

	for playerIndex = 0, Player_Count do
		if (Player_IsAlive(playerIndex) == 1) then
			local currentResources = Player_GetRU(playerIndex)
			Player_SetRU(playerIndex, currentResources + resourcesToInject)
			-- if the player is the local player, announce the RU injection
			if (Player_IsLocal(playerindex) == 1) then
				Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\ResourceInjectionReceived")
			end
		end
	end
	Rule_Remove("ResourceLumpSumRule")
end


--------------------------------------------------------------------------------
-- Delete any resourcers that players might build or launch.
-- !!! kind of slow
-- Disabled, no longer needed
function DestroyResourcersRule()
	local GroupName = "ResourcersToDestroy"
	local sRace = Player_Races[resourcePlayerIndex + 1]
	-- for every ship in the list of restricted resourcers...
	for k, iCount in RestrictedBy.ResourceOff[sRace].build do
		-- fill the group with all ships of that type belonging to the player
		Player_FillShipsByType(GroupName, resourcePlayerIndex, iCount)
		-- if the sobgroup is not empty, then despawn and destroy the ships
		if (SobGroup_Empty(GroupName) == 0) then
			SobGroup_Despawn(GroupName)
			SobGroup_SetHealth(GroupName, 0)
		end
	end

	if (resourcePlayerIndex == Player_Count) then
		resourcePlayerIndex = 0
	else
		resourcePlayerIndex = resourcePlayerIndex + 1
	end

	-- could be disabled because you might feasibly be granted a resource collector by the CRATES, SPECIAL FLEETS, FROMMAP rules
	-- there are performance issues, however
	local duration = Universe_GameTime() - resourceStartCountingTime
	if (duration >= resourceStopCountingTime) then
		Rule_Remove("DestroyResourcersRule")
	end
end


--------------------------------------------------------------------------------
-- Returns true if the player has a mothership. Also returns the mothership 
-- type and mothership name. The main loops here are nearly identical and could 
-- be replaced with a single function, but why bother? Not sure I want to do 
-- the StartWithMode checks because "frommap" mode could mean anything.
--
function PlayerHasMothership(playerIndex)
	SobGroup_Clear("CrateMothership")
	local sRace = Player_Races[playerIndex + 1]
	local raceShips = TechList[sRace].ships

--	if (StartWithMode == "mothership") or (StartWithMode == "frommap") then
		-- for every ship in the "mothership" class...
		local shipItems = raceShips["mothership"].items
		for k, kCount in shipItems do
			-- get the correct variant
			local shipType = k
			local shipName = kCount.name
			local shipBits = VariantBuilds[shipType]
			local shipVariant = GetVariantsMatch(shipType, shipBits)
			Player_FillShipsByType("CrateMothership", playerIndex, shipVariant)
			if (SobGroup_Empty("CrateMothership") == 0) then
				return 1, shipVariant, shipName
			end
		end
--	end

--	if (StartWithMode == "carrieronly") or (StartWithMode == "frommap") then
		-- for every ship in the "carrier" class...
		local shipItems = raceShips["carrier"].items
		for k, kCount in shipItems do
			-- get the correct variant
			local shipType = k
			local shipName = kCount.name
			local shipBits = VariantBuilds[shipType]
			local shipVariant = GetVariantsMatch(shipType, shipBits)
			Player_FillShipsByType("CrateMothership", playerIndex, shipVariant)
			if (SobGroup_Empty("CrateMothership") == 0) then
				return 1, shipVariant, shipName
			end
		end
--	end

	return 0, nil, nil
end


--------------------------------------------------------------------------------
-- Grants all research to each player.
--
function GrantAllResearchRule()
	for playerIndex = 0, Player_Count do
		local sRace = Player_Races[playerIndex + 1]
		local isPlayerCPU = Player_GetLevelOfDifficulty(playerIndex)
		dofilepath("data:scripts/races/" .. sRace .. "/scripts/def_research.lua")
		for i = 1, getn(research) do
			local researchsubitem = research[i].Name
			local researchcpuonly = research[i].AIOnly
			local researchignore = research[i].DoNotGrant
			-- non-CPU players should never be granted research meant for CPU players only
			if ((isPlayerCPU == 0) and (researchcpuonly == 1)) then
				HWC_trace([[GrantAllResearchRule: "]] .. researchsubitem .. [[" is intended for CPU players only. Can't grant.]])
			elseif (researchignore == 1) then
				HWC_trace([[GrantAllResearchRule: "]] .. researchsubitem .. [[" is not intended for regular multiplayer matches. Can't grant.]])
			else
				-- if the research item has not already been restricted or granted...
				if ((IsResearchRestricted(playerIndex, sRace, researchsubitem) == 0) and (IsResearchGranted(playerIndex, sRace, researchsubitem) == 0)) then
					HWC_trace([[GrantAllResearchRule: Player ]] .. playerIndex .. [[ has been granted "]] .. researchsubitem .. [[".]])
					Player_GrantResearchOption(playerIndex, researchsubitem)
					tinsert(Player_GrantedResearch[playerIndex + 1][sRace], researchsubitem)
				else
					HWC_trace([[GrantAllResearchRule: "]] .. researchsubitem .. [[" has already been granted or restricted. Can't grant.]])
				end
			end
		end
	end
	Rule_Remove("GrantAllResearchRule")
end


--------------------------------------------------------------------------------
-- Spawns player starting ships placed in hyperspace by the level file.
--
function SpawnPlayerFleetInHyperspaceRule()
	HWC_trace("SpawnPlayerFleetInHyperspaceRule: Spawning fleet in hyperspace.")
	for playerIndex = 0, Player_Count do
		local EH_SobName = "HE_Formation" .. (playerIndex + 1)
		if (SobGroup_Empty(EH_SobName) == 0) then
			SobGroup_Spawn(EH_SobName, "StartPos" .. playerIndex)
			SobGroup_ParadeSobGroup(EH_SobName, "Player_Ships" .. playerIndex, 0)
		end
	end
	Rule_Remove("SpawnPlayerFleetInHyperspaceRule")
end


--------------------------------------------------------------------------------
-- Kills player starting ships placed in hyperspace by the level file.
--
function DespawnPlayerFleetInHyperspaceRule()
	HWC_trace("DespawnPlayerFleetInHyperspaceRule: Despawning fleet in hyperspace.")
	for playerIndex = 0, Player_Count do
		local EH_SobName = "HE_Formation" .. (playerIndex + 1)
		SobGroup_Create(EH_SobName)		-- only create if not already exist. there is a function for this.
		if (SobGroup_Empty(EH_SobName) == 0) then
			SobGroup_Despawn(EH_SobName)		-- flaming junk will be left over if you kill a ship while it's in hyperspace. also, the ships are already in hyperspace. why put them there again?
			SobGroup_SetHealth(EH_SobName, 0)
		end
	end
	Rule_Remove("DespawnPlayerFleetInHyperspaceRule")
end

--------------------------------------------------------------------------------
-- Kills non-player ships (derelicts for instance) placed on map by the level file.
-- Note: These ships are NOT in hyperspace by default.
--
function DespawnNonPlayerFleetOnMapRule()
	HWC_trace("DespawnNonPlayerFleetOnMapRule: Despawning non-player fleet on map.")
	local EH_SobName = "HE_Formation0"
	SobGroup_Create(EH_SobName)
	if (SobGroup_Empty(EH_SobName) == 0) then
		SobGroup_Despawn(EH_SobName)
		SobGroup_SetHealth(EH_SobName, 0)
	end
	Rule_Remove("DespawnNonPlayerFleetOnMapRule")
end
