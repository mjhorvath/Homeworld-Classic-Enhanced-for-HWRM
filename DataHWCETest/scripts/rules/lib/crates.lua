-- Some of these scripts naiively depend on dictionary indices being returned 
-- in the same order as they are declared. If they are not returned in the same 
-- order, then these scripts will fail.
-- The functions "ChooseCrateRewardShip", "ChooseCrateRewardSubsystem" and
-- "ChooseCrateRewardResearch" are very similar and likely could be merged into a 
-- single function.

--------------------------------------------------------------------------------
-- See if a position is OK for spawning crate.
-- E.g. check if the chosen location has any player ships in it or not. If it does, then signal a failure.
function CratePositionIsOK(posTable)
	local result = 1

	-- create a volume at the given location
	Volume_AddSphere("CrateDetectVolumeTest" .. volumePositionCounter, posTable, CRATES_PlayerNearRadius * 2)

	-- for each player...
	for playerIndex = 0, Player_Count do
		-- fill a sobgroup with all ships belonging to the player that are inside the volume
		SobGroup_FillSobGroupInVolume("CrateMothership", "Player_Ships" .. playerIndex, "CrateDetectVolumeTest" .. volumePositionCounter)
		-- if the sobgroup is not empty, the result is failure
		if (SobGroup_Empty("CrateMothership") == 0) then
			result = 0
			break
		end
	end

	-- delete the volume
	Volume_Delete("CrateDetectVolumeTest" .. volumePositionCounter)
	volumePositionCounter = volumePositionCounter + 1
	-- return the result
	return result
end


--------------------------------------------------------------------------------
-- Figure out where to put a crate.
--
function GetBestCrateLocation()
	local universeSize = Universe_GetWorldBounds()
	local cratePosition, averageMSPosition, randPos, displacement = {0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,}
	local directionVectors = {{0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,}, {0,0,0,},}
	local theta, phi, radius = 0, 0, 0
	local alivePlayers = 0

	-- do a pass to determine position of motherships and get average
	-- for each player find mothership
	for playerIndex = 0, Player_Count do
		if (Player_IsAlive(playerIndex) == 1) then
			local mothershipPosition = {0,0,0,}
			local HasMothership, MothershipType, MothershipName = PlayerHasMothership(playerIndex)

			-- keeps trying to add motherships or carriers to the sobgroup, then gets the position of the sobgroup
			if (HasMothership == 1) then
				mothershipPosition = SobGroup_GetPosition("CrateMothership")
			-- otherwise use the position of ALL of the player's ships
			else
				mothershipPosition = SobGroup_GetPosition("Player_Ships" .. playerIndex)
			end

			directionVectors[playerIndex + 1] =
			{
				mothershipPosition[1],
				mothershipPosition[2],
				mothershipPosition[3],
			}

			averageMSPosition = vaddV(averageMSPosition, mothershipPosition)

			-- We now have a position for a mothership, or at least some ship
			CRA_trace("GetBestCrateLocation: Player " .. playerIndex .. "'s mothership location: " .. vstr(mothershipPosition))
			alivePlayers = alivePlayers + 1
		end
	end

	-- average position of all players' motherships
	averageMSPosition = vdivide(averageMSPosition, alivePlayers)
	CRA_trace("GetBestCrateLocation: Average of all players' mothership locations: " .. vstr(averageMSPosition))

	-- for each player...
	for playerIndex = 0, Player_Count do
		-- if the player is alive...
		if (Player_IsAlive(playerIndex) == 1) then
			-- get the player's bounty value, defaults to 1 unless bounties mode is also enabled
			local playerBounty = BOUNTY_PlayerBounties[playerIndex + 1]
			CRA_trace("GetBestCrateLocation: Player " .. playerIndex .. "'s bounty: " .. playerBounty)
			-- calculate the vector from the average position to this mothership's position
			local dest = vsubtractV(directionVectors[playerIndex + 1], averageMSPosition)
			-- calculate the length of the vector
			local length1 = sqrt(vsum(vpower(dest, 2)))
			-- zero length vector means the position is stuck at the map origin
			if (length1 > 0) then
				-- adjust the length by a factor of the player's bounty
				length1 = length1 * playerBounty * -1
				-- normalize the vector and multiply it by the inverse of the player's bounty
				dest = vdivide(dest, length1)
				-- set the starting vector to favor the direction that weaker players are in
				cratePosition = vaddV(cratePosition, dest)
			end
			CRA_trace("GetBestCrateLocation: Player " .. playerIndex .. "'s crate weighting factor: " .. length1)
		end
	end
	CRA_trace("GetBestCrateLocation: Quick check crate position: " .. vstr(cratePosition))

	-- if the crate position hasn't moved from the map origin, it might cause a divide by zero error later
	-- e.g. the distance of the crate from the map origin needs to be non-zero
	-- so let's create a random unit vector instead
	if ((cratePosition[1] + cratePosition[2] + cratePosition[3]) == 0) then
		theta, phi = srandomSet(CRA_Seed, 360, 180)
		radius = 1
		cratePosition =
		{
			radius * cos(theta) * sin(phi),
			radius * cos(phi),
			radius * sin(theta) * sin(phi),
		}
	end

	-- calculate the length of the crate's position
	local length2 = sqrt(vsum(vpower(cratePosition, 2)))

	-- normalize the crate's position
	cratePosition = vdivide(cratePosition, length2)
	CRA_trace("GetBestCrateLocation: Normalized crate position: " .. vstr(cratePosition))

	-- add a large random element to the location
	randPos = srandom(CRA_Seed, CRATES_RandomLowDistance, CRATES_RandomHighDistance)
	cratePosition = vmultiply(cratePosition, randPos)

	-- add the crate's position to the motherships' average position
	cratePosition = vaddV(cratePosition, averageMSPosition)

	-- add another large random element to the location
	displacement =
	{
		srandom(CRA_Seed, universeSize[1] / -3, universeSize[1] / 3),
		srandom(CRA_Seed, universeSize[2] / -3, universeSize[2] / 3),
		srandom(CRA_Seed, universeSize[3] / -3, universeSize[3] / 3),
	}
	cratePosition = vaddV(cratePosition, displacement)

	-- add a random displacement to offset the location until it is valid, in accordance with the loop below
	theta, phi, radius = srandomSet(CRA_Seed, 360, 180, 1000)
	displacement =
	{
		radius * cos(theta) * sin(phi),
		radius * cos(phi),
		radius * sin(theta) * sin(phi),
	}

	-- keep adding the displacement until the location is okay
	-- e.g. if the intended destination is empty of all ships
	while (CratePositionIsOK(cratePosition) == 0) do
		cratePosition = vaddV(cratePosition, displacement)
		-- !!! place check not to exceed game world edge?
		-- !!! wrap ..if hit edge...alter displacement value
	end

	-- clip the location to the world bounds
	cratePosition = Universe_ClipToWorldBounds(cratePosition)
	-- round down to the nearest integer
	cratePosition = vfloor(cratePosition)

	CRA_trace("GetBestCrateLocation: Final crate position: " .. vstr(cratePosition))
	return cratePosition
end


--------------------------------------------------------------------------------
-- Called when we need to actually spawn a crate.
--
function SelectivlyPlaceCrate()
	-- for every player...
	for playerIndex = 0, Player_Count do
		-- if the player's crate spawn group is empty...
		if (SobGroup_Empty("CrateSpawnGroup" .. playerIndex) == 1) then
			local cratePosition = GetBestCrateLocation()
			CRA_trace("SelectivlyPlaceCrate: Attempting to spawn crate at: " .. vstr(cratePosition))
			-- create a crate detection volume at the best location
			Volume_AddSphere("CrateDetectVolume" .. playerIndex, cratePosition, CRATES_PlayerNearRadius)
			-- spawn a neutral crate within the volume
			SobGroup_SpawnNewShipInSobGroup(-1, "meg_crate_hw1container", "Crate", "CrateSpawnGroup" .. playerIndex, "CrateDetectVolume" .. playerIndex)
			-- add a sensors ping to the crate location
			local cratePingID = Ping_AddSobGroup("", "circleandarrows", "CrateSpawnGroup" .. playerIndex)
			Ping_LabelVisible(cratePingID, 1)
			Ping_AddDescription(cratePingID, 0, "Crate")		-- needs to be localized
			-- post a quick message
			Subtitle_Message("Crate detected.", 5)		-- needs to be localized
			Sound_SpeechPlay("data:sound\\speech\\allships\\emperor\\STATUS_NEWCRATE_1")
			UI_AddToEventScreen("STATUS_CRATEFOUND_1")
			-- there's one more crate, now
			CRATES_NumberCrates = CRATES_NumberCrates + 1
			CRATES_PingIDs[playerIndex + 1] = cratePingID
			-- record the time the crate was spawned
			CRATES_SpawnTime[playerIndex + 1] = Universe_GameTime()
			CRA_trace("SelectivlyPlaceCrate: Added a crate to slot " .. (playerIndex + 1) .. ". There are now " .. CRATES_NumberCrates .. " crates in the universe.")
			return
		end
	end
	CRA_trace("SelectivlyPlaceCrate: No empty crate spawn slots. Not spawning.")
end


--------------------------------------------------------------------------------
-- Handles the spawning of crates.
--
function SpawnCratesRule()
	local Prob = srandom(CRA_Seed)
	if (Prob > CRATES_AddACrateProb) then
		CRA_trace("SpawnCratesRule: Adding a crate. Prob: " .. (Prob * 100) .. " percent. Time: " .. Universe_GameTime() .. " seconds.")
		SelectivlyPlaceCrate()
	else
		CRA_trace("SpawnCratesRule: Not adding a crate. Prob: " .. (Prob * 100) .. " percent. Time: " .. Universe_GameTime() .. " seconds.")
	end
end


--------------------------------------------------------------------------------
-- Choose what ship type to reward the player with.
--
function ChooseCrateRewardShip(playerIndex)
	local sRace = Player_Races[playerIndex + 1]
	CRA_trace("ChooseCrateRewardShip: Rewarding a ship from Race " .. sRace .. " to Player " .. playerIndex .. ".")

	-- for every ship class...
	local Prob1 = srandom(CRA_Seed)
	local sClass, tClass = "", {}
	local classList = TechList[sRace].ships
	for i, v in classList do
		if (v.prob > Prob1) then
			sClass = i
			tClass = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardShip: TechList['" .. sRace .. "'].ships['" .. sClass .. "'].prob = " .. tClass.prob)

	-- for every ship within the class...
	local Prob2 = srandom(CRA_Seed)
	local sItem, tItem = "", {}
	local itemList = tClass.items
	for i, v in itemList do
		if (v.prob > Prob2) then
			sItem = i
			tItem = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardShip: TechList['" .. sRace .. "'].ships['" .. sClass .. "'].items['" .. sItem .. "'].prob = " .. tItem.prob)

	-- get the correct ship variant
	local typeBits = VariantBuilds[sItem]
	local typeShip = GetVariantsMatch(sItem, typeBits)
	-- check if the variant is restricted
	if (IsBuildRestricted(playerIndex, sRace, typeShip) == 0) then
		-- success!
		CRA_trace("ChooseCrateRewardShip: Awarding ship " .. typeShip .. " to Player " .. playerIndex .. ".")
		return typeShip, tItem.name
	else
		-- start over
		CRA_trace("ChooseCrateRewardShip: No match for ship " .. typeShip .. " for Player " .. playerIndex .. ". Starting over.")
		return ChooseCrateRewardShip(playerIndex)
	end
end


--------------------------------------------------------------------------------
-- Choose a subsystem to give to the player. Doesn't work, yet. Has not been updated to the latest version of TechList.
--
function ChooseCrateRewardSubsystem(playerIndex)
	local sRace = Player_Races[playerIndex + 1]
	CRA_trace("ChooseCrateRewardSubsystem: Rewarding a subsystem from Race " .. sRace .. " to Player " .. playerIndex .. ".")

	-- for every class in the list of subsystems...
	local Prob1 = srandom(CRA_Seed)
	local sClass, tClass = "", {}
	local classList = TechList[sRace].subsystems
	for i, v in classList do
		if (v.prob > Prob1) then
			sClass = i
			tClass = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardSubsystem: TechList['" .. sRace .. "'].subsystems['" .. sClass .. "'].prob = " .. tClass.prob)

	-- for every subsystem within the class...
	local Prob2 = srandom(CRA_Seed)
	local sItem, tItem = "", {}
	local itemList = tClass.items
	for i, v in itemList do
		if (v.prob > Prob2) then
			sItem = i
			tItem = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardSubsystem: TechList['" .. sRace .. "'].subsystems['" .. sClass .. "'].items['" .. sItem .. "'].prob = " .. tItem.prob)

	-- get the correct subsystem variant
	local typeBits = VariantBuilds[sItem]
	local typeSubs = GetVariantsMatch(sItem, typeBits)
	-- check if the variant is restricted
	if (IsBuildRestricted(playerIndex, sRace, typeSubs) == 0) then
		-- success!
		CRA_trace("ChooseCrateRewardSubsystem: Awarding subsystem " .. typeSubs .. " to Player " .. playerIndex .. ".")
		return typeSubs, tItem.name
	else
		-- start over
		CRA_trace("ChooseCrateRewardSubsystem: No match for subsystem " .. typeSubs .. " for Player " .. playerIndex .. ". Starting over.")
		return ChooseCrateRewardSubsystem(playerIndex)
	end
end


--------------------------------------------------------------------------------
-- Choose a research to give to the player.
--
function ChooseCrateRewardResearch(playerIndex)
	local sRace = Player_Races[playerIndex + 1]
	CRA_trace("ChooseCrateRewardResearch: Rewarding a research item from Race " .. sRace .. " to Player " .. playerIndex .. ".")

	-- for every class in the list of research...
	local Prob1 = srandom(CRA_Seed)
	local sClass, tClass = "", {}
	local classList = TechList[sRace].research
	for i, v in classList do
		if (v.prob > Prob1) then
			sClass = i
			tClass = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardResearch: TechList['" .. sRace .. "'].research['" .. sClass .. "'].prob = " .. tClass.prob)

	-- for every research within the class...
	local Prob2 = srandom(CRA_Seed)
	local sItem, tItem = "", {}
	local itemList = tClass.items
	for i, v in itemList do
		if (v.prob > Prob2) then
			sItem = i
			tItem = v
			break
		end
	end
	CRA_trace("ChooseCrateRewardResearch: TechList['" .. sRace .. "'].research['" .. sClass .. "'].items['" .. sItem .. "'].prob = " .. tItem.prob)

	-- get the correct research variant
	local typeBits = VariantResearch[sItem]
	local typeReas = GetVariantsMatch(sItem, typeBits)
	-- check if the variant is queued, restricted or granted
	-- should I really check for queued items? do you lose the money you have already spent on the queued item?
	local isQueued = Player_HasQueuedResearch(playerIndex, typeReas)
	local isRestricted = IsResearchRestricted(playerIndex, sRace, typeReas)
	local isGranted = IsResearchGranted(playerIndex, sRace, typeReas)
	if ((isQueued == 0) and (isRestricted == 0) and (isGranted == 0)) then
		-- success!
		CRA_trace("ChooseCrateRewardResearch: Awarding research " .. typeReas .. " to Player " .. playerIndex .. ".")
		return typeReas, tItem.name
	else
		-- start over
		CRA_trace("ChooseCrateRewardSubsystem: No match for research " .. typeReas .. " for Player " .. playerIndex .. ". Starting over.")
		return ChooseCrateRewardResearch(playerIndex)
	end
end


--------------------------------------------------------------------------------
-- Gives a crate to a player.
-- shipType should be renamed to shipVariant
--
function GivePlayerCrateReward(playerIndex, iVolume)
	local HasMothership, MothershipType, MothershipName = PlayerHasMothership(playerIndex)
	local prob = srandom(CRA_Seed)
	local tempDisplayText = ""
	-- if a mothership should be spawned and the player has no mothership...
	if ((prob <= CRATES_GetMotherShipCarrierIfDontHaveOne) and (HasMothership == 0)) then
		local shipType, shipName = MothershipType, MothershipName
		-- if the player is the local player, play an effect
		if (Player_IsLocal(playerIndex) == 1) then
			Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\CrateFoundShips")
		end
		-- spawn the mothership
		SobGroup_SpawnNewShipInSobGroup(playerIndex, shipType, "NewCrateCarrier", "Player_Ships" .. playerIndex, "CrateDetectVolume" .. iVolume)
		CRA_trace("GivePlayerCrateReward: Player " .. playerIndex .. " gets a " .. shipType .. ".")
		tempDisplayText = "Crate found. " .. shipType .. " recovered."
	-- if a ship should be spawned...
	elseif (prob <= CRATES_GetAShip) then
		local shipType, shipName = ChooseCrateRewardShip(playerIndex)
		-- if the player is the local player, play an effect
		if (Player_IsLocal(playerIndex) == 1) then
			Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\CrateFoundShips")
		end
		-- spawn the ship
		SobGroup_SpawnNewShipInSobGroup(playerIndex, shipType, "NewCrateShip", "Player_Ships" .. playerIndex, "CrateDetectVolume" .. iVolume)
		CRA_trace("GivePlayerCrateReward: Player " .. playerIndex .. " gets a " .. shipType)
		tempDisplayText = "Crate found. " .. shipName .. " recovered."
	-- if a research item should be granted...
	elseif (prob <= CRATES_GetResearch) then
		if (ResearchMode ~= 0) then
			local techType, techName = ChooseCrateRewardResearch(playerIndex)
			-- if research name is not blank...
			if (techType ~= "") then
				-- if the player is the local player, play an effect
				if (Player_IsLocal(playerIndex) == 1) then
					Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\CrateFoundTechnology")
				end
				-- grant the research item
				Player_GrantResearchOption(playerIndex, techType)
				CRA_trace("GivePlayerCrateReward: Player " .. playerIndex .. " gets " .. techType .. " technology.")
				tempDisplayText = "Crate found. " .. techName .. " technology recovered."
			end
		else
			GivePlayerCrateReward(playerIndex, iVolume)
			return
		end
	-- if resources should be granted...
	elseif (prob <= CRATES_GetRUs) then
		local RUs = srandom(CRA_Seed, CRATES_MinRUsGiven, CRATES_MaxRUsGiven)
		-- if the player is the local player, play an effect
		if (Player_IsLocal(playerIndex) == 1) then
			Sound_SpeechPlay("data:sound\\speech\\allships\\HEIDI\\CrateFoundResources")
		end
		-- grant the resources
		Player_SetRU(playerIndex, Player_GetRU(playerIndex) + RUs)
		CRA_trace("GivePlayerCrateReward: Player " .. playerIndex .. " gets " .. RUs .. "RUs.")
		tempDisplayText = "Crate found. " .. RUs .. " RUs recovered."
	end
	-- if the player is the local player, print text to the screen
	if (Player_IsLocal(playerIndex) == 1) then
		Subtitle_Message(tempDisplayText, 15)
	end
end


--------------------------------------------------------------------------------
-- Handles checking if players get the crates.
--
function CheckCratesRule()
	-- if there are any crates...
	if (CRATES_NumberCrates > 0) then
		-- for every player...
		for playerIndex = 0, Player_Count do
			-- if the player's spawn group has a crate in it...
			if (SobGroup_Empty("CrateSpawnGroup" .. playerIndex) == 0) then
				-- check if it's time for the crate to expire
				if ((Universe_GameTime() - CRATES_SpawnTime[playerIndex + 1]) > CRATES_ExpiryTime) then
					CRA_trace("CheckCratesRule: Time is up. Crate #" .. playerIndex .. " has expired. Despawning crate at time " .. Universe_GameTime() .. ".")
					DespawnCrate(playerIndex)
				-- else, the crate is not dead yet
				else
					-- for every player in a randomized list of players...
					for i, otherPlayerIndex in Universe_RandomPlayerList() do
						-- check if the player has any ships in the crate's detection volume, then put the ships into a sobgroup
						SobGroup_FillSobGroupInVolume("CrateMothership", "Player_Ships" .. otherPlayerIndex, "CrateDetectVolume" .. playerIndex)
						-- if the sobgroup is not empty...
						if (SobGroup_Empty("CrateMothership") == 0) then
							-- remove any megaliths, etc.
							for k, shipVariant in CrateExclusions do
								SobGroup_RemoveType("CrateMothership", shipVariant)
							end
							-- if the sobgroup is still not empty, then it means that the player's ship(s) has collided with crate's detection volume
							if (SobGroup_Empty("CrateMothership") == 0) then
								CRA_trace("CheckCratesRule: Player " .. otherPlayerIndex .. " gets crate #" .. playerIndex .. " at time " .. Universe_GameTime() .. ".")
								-- award the crate to the player
								GivePlayerCrateReward(otherPlayerIndex, playerIndex)
								DespawnCrate(playerIndex)
								break
							end
						end
					end
				end
			end
		end
	end
end

function DespawnCrate(playerIndex)
	-- kill the crate
	SobGroup_Despawn("CrateSpawnGroup" .. playerIndex)
	SobGroup_Clear("CrateSpawnGroup" .. playerIndex)
	-- kill the ping
	Ping_Remove(CRATES_PingIDs[playerIndex + 1])
	-- kill the volume
	Volume_Delete("CrateDetectVolume" .. playerIndex)
	-- there's one less crate, now
	CRATES_NumberCrates = CRATES_NumberCrates - 1
end
