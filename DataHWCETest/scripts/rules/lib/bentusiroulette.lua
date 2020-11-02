-------------------------------------------------------------------------------
-- randomly restricts and grants research options
-- what's done here is very similar to the "DisableListOfResearch" function in "definedroles.lua"
-- they're different enough that code consolidation may not be warranted
--
function BentusiRoulette_Init()
	-- for every player...
	for playerIndex = 0, Player_Count do
		local sRace = Player_Races[playerIndex + 1]
		local getnG = getn(Player_GrantedResearch[playerIndex + 1][sRace])
		local getnR = getn(Player_RestrictedResearch[playerIndex + 1][sRace])
		local getnT = 0
		local iGrant = 0
		local iRestrict = 0

		for i = 1, getnR do
			local dummy = Player_RestrictedResearch[playerIndex + 1][sRace][i]
			BEN_trace("BentusiRoulette_Init: Player " .. playerIndex .. " restricted research: " .. dummy)
		end

		dofilepath("data:scripts/races/" .. sRace .. "/scripts/def_research.lua")
		getnT = getn(research)

		-- while iGrant is less than or equal to BentusiRouletteMode...
		while (iGrant < BentusiRouletteMode) do
			-- if there are any research items left to grant or restrict...
			if ((getnG + getnR) < getnT) then
				local new_pass, new_item, new_name = GetFreeResearchItem(playerIndex, sRace)
				if (new_pass == 1) then
					-- grant the research item
					Player_GrantResearchOption(playerIndex, new_item)
					tinsert(Player_GrantedResearch[playerIndex + 1][sRace], new_item)
					tinsert(BEN_GrantStrings[playerIndex + 1], new_name)
					iGrant = iGrant + 1
					getnG = getnG + 1
					BEN_trace([[BentusiRoulette_Init: Player ]] .. playerIndex .. [[ has been granted "]] .. new_item .. [[". sRace = ]] .. sRace .. [[, iGrant = ]] .. iGrant .. [[, getnG = ]] .. getnG .. [[, getnR = ]] .. getnR .. [[, getnT = ]] .. getnT)
				end
			-- else...
			else
				BEN_trace([[BentusiRoulette_Init: There are no more research items to grant or restrict to Player ]] .. playerIndex .. [[.]])
				break
			end
		end
		-- fill in some blanks if necessary
		for i = iGrant, BentusiRouletteMode - 1 do
			tinsert(BEN_GrantStrings[playerIndex + 1], "")
		end
		-- while iRestrict is less than or equal to BentusiRouletteMode...
		while (iRestrict < BentusiRouletteMode) do
			-- if there are any research items left to grant or restrict...
			if ((getnG + getnR) < getnT) then
				local new_pass, new_item, new_name = GetFreeResearchItem(playerIndex, sRace)
				if (new_pass == 1) then
					-- restrict the research item
					Player_RestrictResearchOption(playerIndex, new_item)
					tinsert(Player_RestrictedResearch[playerIndex + 1][sRace], new_item)
					tinsert(BEN_RestrictStrings[playerIndex + 1], new_name)
					iRestrict = iRestrict + 1
					getnR = getnR + 1
					BEN_trace([[BentusiRoulette_Init: Player ]] .. playerIndex .. [[ has been restricted "]] .. new_item .. [[". sRace = ]] .. sRace .. [[, iRestrict = ]] .. iRestrict .. [[, getnG = ]] .. getnG .. [[, getnR = ]] .. getnR .. [[, getnT = ]] .. getnT)
				end
			-- else...
			else
				BEN_trace([[BentusiRoulette_Init: There are no more research items to grant or restrict to Player ]] .. playerIndex .. [[.]])
				break
			end
		end
		-- fill in some blanks if necessary
		for i = iRestrict, BentusiRouletteMode - 1 do
			tinsert(BEN_RestrictStrings[playerIndex + 1], "")
		end
	end
	Rule_Remove("BentusiRoulette_Init")
end

-------------------------------------------------------------------------------
-- get an available research item
--

function GetFreeResearchItem(playerIndex, sRace)
	local tResearch = TechList[sRace].research
	local iRand1 = srandom(BEN_Seed)
	-- for every research class...
	for i, iClass in tResearch do
		if (iRand1 <= iClass.prob) then
			local iRand2 = srandom(BEN_Seed)
			local iItems = iClass.items
			-- for every item within that class...
			for j, jItem in iItems do
				if (iRand2 <= jItem.prob) then
					local researchType = j
					local researchName = jItem.name
					-- get the correct variant
					local researchBits = VariantResearchBool[researchType]
					local researchVariant = GetVariantsMatch(researchType, researchBits)
					-- check if the variant is queued, restricted or granted
					-- should I really check for queued items? do you lose the money you have already spent on the queued item?
					local isQueued = Player_HasQueuedResearch(playerIndex, researchVariant)
					local isRestricted = IsResearchRestricted(playerIndex, sRace, researchVariant)
					local isGranted = IsResearchGranted(playerIndex, sRace, researchVariant)
					-- if the variant has not already been restricted, queued or granted...
					if ((isQueued == 0) and (isRestricted == 0) and (isGranted == 0)) then
						-- success!
						return 1, researchVariant, researchName
					end
					BEN_trace([[GetResearchGrant: "]] .. researchType .. [[" or a variant has already been queued, restricted or granted. Can't restrict or grant to Player ]] .. playerIndex .. [[.]])
				end
			end
		end
	end
	return 0, nil, nil
end
