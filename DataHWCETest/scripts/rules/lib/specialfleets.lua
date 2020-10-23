-- incompatible with HWC "carrier-only" mode therefore mutually exclusive

--=============================================================================
-- adds ships to the special starting fleets. Must be called before the "BentusiRoulette_Init" rule.
--
function SpecialFleets_Init()
	for playerIndex = 0, Player_Count do
		local PlayerFleetName = FLT_PlayerFleets[playerIndex + 1]
		local sFleet = {}
		local sRace = Player_Races[playerIndex + 1]
		local item_count = 0
		local StartPosName = "StartPos" .. playerIndex
		local StartGroupName = "Player" .. playerIndex .. "StartShip"
		local FleetGroupName = "Player" .. playerIndex .. "AdditionalShips"
		local SubsyGroupName = "Player" .. playerIndex .. "SubsysRecipient"
		local shipsList = TechList[sRace].ships
		local researchList = TechList[sRace].research
		local subsystemsList = TechList[sRace].subsystems

		-- store the selected starting fleet in "sFleet"
		local racefleets = FleetsTable[sRace].startingfleets
		for k = 1, getn(racefleets) do
			-- check which starting fleet was selected for the player
			local kFleet = racefleets[k]
			if (PlayerFleetName == kFleet.name) then
				sFleet = kFleet
				break
			end
		end

		SobGroup_Create(StartGroupName)
		SobGroup_Create(FleetGroupName)
		SobGroup_Create(SubsyGroupName)

		SobGroup_SpawnNewShipInSobGroup(playerIndex, sFleet.startingship, "", StartGroupName, StartPosName)

		SPC_trace([[SpecialFleets_Init: Player]] .. playerIndex .. [[ has been assigned "]] .. sFleet.name .. [[" as their starting fleet.]])

		local hold_amt = getn(sFleet.ships)
		local hypr_amt = getn(sFleet.ships_hyper)
		local resc_amt = getn(sFleet.research)
		local subs_amt = getn(sFleet.subsystems)

		-- section 1: add ship-types that exit the shiphold
		for j = 1, hold_amt do
			local sType = strlower(sFleet.ships[j])
			local sName = ""
			local isMatch = 0
			for k, kCount in shipsList do
				for l, lCount in kCount.items do
					local lType = strlower(l)
					local lName = lCount.name
					if (lType == sType) then
						sName = lName
						isMatch = 1
						break
					end
				end
				if (isMatch == 1) then
					break
				end
			end
			local sBits = VariantBuilds[sType]
			local sVariant = GetVariantsMatch(sType, sBits)
			SPC_trace([[SpecialFleets_Init: Adding "]] .. sVariant .. [[" to Player ]] .. playerIndex .. [['s fleet.]])
			SobGroup_CreateShip(StartGroupName, sVariant)
			item_count = FLT_PushString(playerIndex, item_count, sName)
		end

		-- section 2: add ship-types that spawn in formation with the mothership
		for j = 1, hypr_amt do
			local sType = strlower(sFleet.ships_hyper[j])
			local sName = ""
			local isMatch = 0
			for k, kCount in shipsList do
				for l, lCount in kCount.items do
					local lType = strlower(l)
					local lName = lCount.name
					if (lType == sShip) then
						sName = lName
						isMatch = 1
						break
					end
				end
				if (isMatch == 1) then
					break
				end
			end
			local sBits = VariantBuilds[sType]
			local sVariant = GetVariantsMatch(sType, sBits)
			SPC_trace([[SpecialFleets_Init: Adding "]] .. sVariant .. [[" to Player ]] .. playerIndex .. [['s fleet.]])
			SobGroup_SpawnNewShipInSobGroup(playerIndex, sVariant, "", FleetGroupName, StartPosName)
			SobGroup_ParadeSobGroup(FleetGroupName, StartGroupName, 2)
			item_count = FLT_PushString(playerIndex, item_count, sName)
		end

		if ((hold_amt + hypr_amt) == 0) then
			item_count = FLT_PushString(playerIndex, item_count, "(none)")
		end

		item_count = FLT_PushString(playerIndex, item_count, "STARTING SHIPS:")

		-- section 3: add subsytems to motherships and carriers (may fail for some ships, but that's OK)
		for j = 1, subs_amt do
			local sType = strlower(sFleet.subsystems[j][1])
			local sShip = strlower(sFleet.subsystems[j][2])
			local sName = ""
			local isMatch = 0
			for k, kCount in subsystemsList do
				for l, lCount in kCount.items do
					local lType = l
					local lName = lCount.name
					if (lType == sType) then
						sName = lName
						isMatch = 1
						break
					end
				end
				if (isMatch == 1) then
					break
				end
			end
			local sBits = VariantBuilds[sType]
			local sVariant = GetVariantsMatch(sType, sBits)
			SPC_trace([[SpecialFleets_Init: Building "]] .. sVariant .. [[" on Player ]] .. playerIndex .. [['s ships (may fail for some ships, but that's OK).]])
			-- !!! the following will add the subsystem to ALL ships of the type in the sobgroup, not just the first !!!
			Player_FillShipsByType(SubsyGroupName, playerIndex, sShip)
			SobGroup_CreateSubSystem(SubsyGroupName, sVariant)
			SobGroup_Clear(SubsyGroupName)
			item_count = FLT_PushString(playerIndex, item_count, sName)
		end

		if (subs_amt == 0) then
			item_count = FLT_PushString(playerIndex, item_count, "(none)")
		end

		item_count = FLT_PushString(playerIndex, item_count, "STARTING SUBSYSTEMS:")

		-- section 4: add research
		for j = 1, resc_amt do
			local sType = strlower(sFleet.research[j])
			local sName = ""
			local isMatch = 0
			for k, kCount in researchList do
				for l, lCount in kCount.items do
					local lType = strlower(l)
					local lName = lCount.name
					if (lType == sType) then
						sName = lName
						isMatch = 1
						break
					end
				end
				if (isMatch == 1) then
					break
				end
			end
			local sBits = VariantResearch[sType]
			local sVariant = GetVariantsMatch(sType, sBits)
			SPC_trace([[SpecialFleets_Init: Granting "]] .. sVariant .. [[" research option to Player ]] .. playerIndex .. [[.]])
			Player_GrantResearchOption(playerIndex, sVariant)
			-- add to list of granted research
			tinsert(Player_GrantedResearch[playerIndex + 1][sRace], sVariant)
			item_count = FLT_PushString(playerIndex, item_count, sName)
		end

		if (resc_amt == 0) then
			item_count = FLT_PushString(playerIndex, item_count, "(none)")
		end

		item_count = FLT_PushString(playerIndex, item_count, "STARTING RESEARCH:")


		item_count = FLT_PushString(playerIndex, item_count, sFleet.label)
		item_count = FLT_PushString(playerIndex, item_count, "SPECIAL FLEET:")
	end
	Rule_Remove("SpecialFleets_Init")
	Rule_Remove( "CreateBuildDefinitions" )
end

--------------------------------------------------------------------------------
-- Spawns all ships placed in hyperspace by the level file.
--
function SpawnPlayerFleetInHyperspace(playerIndex)
	SPC_trace("SpawnPlayerFleetInHyperspace: Spawning fleet in hyperspace.")
	local EH_SobName = "HE_Formation" .. (playerIndex + 1)
	local EH_SobEmpty = SobGroup_Empty(EH_SobName)
	if (EH_SobEmpty == 0) then
		SobGroup_Spawn(EH_SobName, "StartPos" .. playerIndex)
		SobGroup_ParadeSobGroup(EH_SobName, "Player_Ships" .. playerIndex, 0)
	end
end


--------------------------------------------------------------------------------
-- Kills all ships placed in hyperspace by the level file.
--
function DespawnPlayerFleetInHyperspace(playerIndex)
	SPC_trace("DespawnPlayerFleetInHyperspace: Despawning fleet in hyperspace.")
	local EH_SobName = "HE_Formation" .. (playerIndex + 1)
	SobGroup_Create(EH_SobName)
	local EH_SobEmpty = SobGroup_Empty(EH_SobName)
	if (EH_SobEmpty == 0) then
		SobGroup_Move(playerIndex, EH_SobName, "PointOfNoReturn")
		SobGroup_SetHealth(EH_SobName, 0)
	end
end


-------------------------------------------------------------------------------
-- resets the strings passed to the ATI function
-- no longer used since the ATI display is now toggleable
--
function FLT_ClearStrings()
 	FLT_PlayerStrings = {{},{},{},{},{},{},{},{},}
	Rule_Remove("FLT_ClearStrings")
end

function FLT_PushString(pindex, icount, sitem)
	icount = icount + 1
	FLT_PlayerStrings[pindex + 1][icount] = sitem
	return icount
end
