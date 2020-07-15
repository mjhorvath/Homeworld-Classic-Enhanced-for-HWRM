--------------------------------------------------------------------------------
-- Compute bounty value for a given player.
--
function GetPlayerBountyWorthDeterm(shipWorth, RUWorth, totalShipWorth, totalRUWorth)
	local playerCurrentShipWorth, playerRUWorth, worth = 0, 0, 0
	-- adjust the player's ship-worth so that it's a fraction of the total, then adjust it again by a set multiplier
	if (totalShipWorth > 0) then
		playerCurrentShipWorth = BOUNTY_CurrentShipWorth * shipWorth / totalShipWorth
	end
	-- adjust the player's RU-worth so that it's a fraction of the total, then adjust it again by a set multiplier
	if (totalRUWorth > 0) then
		playerRUWorth = BOUNTY_ResourcesInPossesion * RUWorth / totalRUWorth
	end
	-- add the ship-worth and RU-worth
	worth = playerCurrentShipWorth + playerRUWorth
	-- return the worth
	return worth
end


---------------------------------------------------------------------------------
-- Handles updating player bounties and the on-screen bounties display.
--
function UpdateBountyStats()
	local alivePlayers, totalShipCost, totalRUs, totalWorth = 0, 0, 0, 0
	local playerShipCosts, playerRUs, playerWorth = {0,0,0,0,0,0,0,0,}, {0,0,0,0,0,0,0,0,}, {0,0,0,0,0,0,0,0,}
	local playerTotal = Player_Count


	------------------------------------------------------------------------
	-- Compute ship and RU worth for each player.
	--

	-- for each player...
	for playerIndex = 0, playerTotal do
		-- if the player is alive...
		if (Player_IsAlive(playerIndex) == 1) then
			local playerPlusOne = playerIndex + 1
			local sRace = Player_Races[playerIndex + 1]
			local ShipList = TechList[sRace].ships
			alivePlayers = alivePlayers + 1
			HWC_trace("UpdateBountyStats: Checking Player " .. playerIndex .. ", race " .. sRace .. ".")

			-- for each ship class in the player's race...
			for i = 1, getn(ShipList) do
				local iClass = ShipList[i]
				local iItems = iClass.items
				-- for every ship in that class...
				for j = 1, getn(iItems) do
					local jType = iItems[j]
					local TypeList = jType.types
					local TypeCost = jType.cost
					-- for every sub-type of ship...
					for l = 1, getn(TypeList) do
						local TypeType = TypeList[l]
						-- fill all ships of this type that the player has in his/her possession into a sobgroup
						SobGroup_FillShipsByType("BountyCounterGroup", "Player_Ships" .. playerIndex, TypeType)
						-- count the number of ships in the sobgroup
						local shipCount = SobGroup_Count("BountyCounterGroup")
						if (shipCount > 0) then
							HWC_trace("UpdateBountyStats: Player " .. playerIndex .. " has " .. shipCount .. " " .. TypeType .. ".")
							-- calculate the cost of these ships and add them to the player total
							playerShipCosts[playerPlusOne] = playerShipCosts[playerPlusOne] + shipCount * TypeCost
							break
						end
					end
				end
			end

			-- add the player total to the fleet total
			totalShipCost = totalShipCost + playerShipCosts[playerPlusOne]
			-- compute the player's RU worth
			playerRUs[playerPlusOne] = Player_GetRU(playerIndex)
			-- add this to the total fleet RU worth
			totalRUs = totalRUs + playerRUs[playerPlusOne]
		end
	end


	------------------------------------------------------------------------
	-- We now have ship-worth and RU-worth for each player (as well as all players). Let's calculate a player's total worth.
	--

	-- for each player...
	for playerIndex = 0, playerTotal do
		local playerPlusOne = playerIndex + 1
		-- get the player's adjusted worth
		playerWorth[playerPlusOne] = GetPlayerBountyWorthDeterm(playerShipCosts[playerPlusOne], playerRUs[playerPlusOne], totalShipCost, totalRUs)
		HWC_trace("UpdateBountyStats: Player " .. playerIndex .. " has " .. playerShipCosts[playerPlusOne] .. " in ships, " .. playerRUs[playerPlusOne] .. " in RUs, " .. playerWorth[playerPlusOne] .. " total.")
		-- add the player's worth to the fleet total
		totalWorth = totalWorth + playerWorth[playerPlusOne]
	end

	-- for each player...
	for playerIndex = 0, playerTotal do
		local playerPlusOne = playerIndex + 1
		-- process the player's worth further
		local cap = playerWorth[playerPlusOne] * alivePlayers * BOUNTY_Level / totalWorth
		-- place a cap on the player's worth
		if (cap > BOUNTY_MaxPossible) then
			cap = BOUNTY_MaxPossible
		end
		-- store the current value in the BOUNTY_PlayerBounties table
		BOUNTY_PlayerBounties[playerPlusOne] = cap
		-- adjust the value further using another multiplier
		cap = cap * BOUNTY_ActualRURatio
		-- use this new value as the basis for the actual bounty awards
		Player_SetBounty(playerIndex, floor(cap))
	end
end
