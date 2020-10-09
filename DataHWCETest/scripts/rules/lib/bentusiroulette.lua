-------------------------------------------------------------------------------
-- randomly restricts and grants research options
-- what's done here is very similar to the "DisableListOfResearch" function in "definedroles.lua"
-- they're different enough that code consolidation may not be warranted
--
function BentusiRoulette_Init()
	-- for every player...
	for playerIndex = 0, Player_Count do
		local sRace = Player_Races[playerIndex + 1]
		local raceResearch = TechList[sRace].research
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
				local new_pass, new_item, new_name = GetFreeResearchItem(playerIndex, sRace, raceResearch)
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
				local new_pass, new_item, new_name = GetFreeResearchItem(playerIndex, sRace, raceResearch)
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

function GetFreeResearchItem(playerIndex, sRace, raceResearch)
	local iRand1 = srandom(BEN_Seed)
	-- for every research class...
	for i = 1, getn(raceResearch) do
		local iClass = raceResearch[i]
		if (iRand1 <= iClass.prob) then
			local iRand2 = srandom(BEN_Seed)
			local iItems = iClass.items
			-- for every item within that class...
			for j = 1, getn(iItems) do
				local jItem = iItems[j]
				if (iRand2 <= jItem.prob) then
					local researchitem = jItem.types
					local researchname = jItem.name
					-- for every sub-type created as a result of rule restrictions...
					for k = 1, getn(researchitem) do
						local researchsubitem = researchitem[k]
						-- if the research item has not already been restricted or granted...
						if ((IsResearchRestricted(playerIndex, sRace, researchsubitem) == 0) and (IsResearchGranted(playerIndex, sRace, researchsubitem) == 0)) then
							return 1, researchsubitem, researchname
						end
					end
					BEN_trace([[GetResearchGrant: "]] .. researchitem[1] .. [[" or sibling item has already been granted or restricted. Can't grant or restrict to Player ]] .. playerIndex .. [[.]])
				end
			end
		end
	end
	return 0, nil, nil
end
