pass = 0

function cpuplayers_updating()
	for playerIndex = 0, Player_Count do
		if (Player_IsAlive(playerIndex) == 1) then
			if (Player_HasShipWithBuildQueue(playerIndex) == 1) then
				if (Player_GetLevelOfDifficulty(playerIndex) > 0) then
					-- try Race_GetName here instead
					local playerDiff = Player_GetLevelOfDifficulty(playerIndex)
					local playerRace = Player_GetRace(playerIndex)
					local raceIndex = RacesListIndex[playerRace]
					local racePrefix = RacesListPrefix[raceIndex] .. "_"

					--behaviour	
					if (pass == 0) then
						if (cpuplayers == 1) then
							Flag_Research(playerIndex,		racePrefix .. "cpuplayers_defensive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_aggressive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_dynamic")
						elseif (cpuplayers == 2) then
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_defensive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_aggressive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_dynamic")
						elseif (cpuplayers == 3) then
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_defensive")
							Flag_Research(playerIndex,		racePrefix .. "cpuplayers_aggressive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_dynamic")
						elseif (cpuplayers == 4) then
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_defensive")
							Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_aggressive")
							Flag_Research(playerIndex,		racePrefix .. "cpuplayers_dynamic")
						end
					end

					--no-rush time
					if (norushtime > 0) then
						if (pass == 0) then
							--prevents the AI to attack
							if (norushtime == 5) then
								Flag_Research(playerIndex,		racePrefix .. "cpuplayers_norushtime5")
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime10")
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime15")
							elseif (norushtime == 10) then
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime5")
								Flag_Research(playerIndex,		racePrefix .. "cpuplayers_norushtime10")
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime15")
							elseif (norushtime == 15) then
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime5")
								Restrict_Research(playerIndex,	racePrefix .. "cpuplayers_norushtime10")
								Flag_Research(playerIndex,		racePrefix .. "cpuplayers_norushtime15")
							end	
						end	
						--prevents the AI to move
						-- newissue: should not use ModeSuffixString here since it will fail for Kushan and Taiidan ships
						-- newissue: need to build the suffix string separately for each race's ships
						print("cpuplayers_updating(): ModeSuffixString is only correct for Hgn mothership and carrier currently. Need to fix.")
						local mothership	= PlayerRace_GetString(playerIndex, "def_type_mothership",	racePrefix .. "mothership")	.. ModeSuffixString
						local carrier		= PlayerRace_GetString(playerIndex, "def_type_carrier",		racePrefix .. "carrier")	.. ModeSuffixString
						SobGroup_CreateIfNotExist("temp")
						SobGroup_Clear("temp")
						SobGroup_CreateIfNotExist("norushtime_nomove" .. playerIndex)
						SobGroup_Clear("norushtime_nomove" .. playerIndex)
						SobGroup_FillShipsByType("temp", "Player_Ships" .. playerIndex, mothership)
						SobGroup_SobGroupAdd("norushtime_nomove" .. playerIndex, "temp")
						SobGroup_FillShipsByType("temp", "Player_Ships" .. playerIndex, carrier)
						SobGroup_SobGroupAdd("norushtime_nomove" .. playerIndex, "temp")
						if norushtime > 1 then
							SobGroup_AbilityActivate("norushtime_nomove" .. playerIndex, AB_Move, 0)
						else
							SobGroup_AbilityActivate("norushtime_nomove" .. playerIndex, AB_Move, 1)
						end					
					end

					--build speed balancing, based on level of difficulty
					if (pass == 0) then
						if ((playerDiff == 1) or (playerDiff == 2)) then
							Flag_Research(playerIndex,		racePrefix .. "AllShipBuildSpeed")
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeedHard")
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeedExpert")
						elseif (playerDiff == 3) then
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeed")
							Flag_Research(playerIndex,		racePrefix .. "AllShipBuildSpeedHard")
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeedExpert")
						elseif (playerDiff == 4) then
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeed")
							Restrict_Research(playerIndex,	racePrefix .. "AllShipBuildSpeedHard")
							Flag_Research(playerIndex,		racePrefix .. "AllShipBuildSpeedExpert")
						end
					end	
					
					--ru speed balancing, based on level of difficulty
					if (pass == 0) then
						if (playerDiff == 3) then
							Flag_Research(playerIndex,		racePrefix .. "ResourceCollectionRateHard")
							Restrict_Research(playerIndex,	racePrefix .. "ResourceCollectionRateExpert")
						elseif (playerDiff == 4) then
							Restrict_Research(playerIndex,	racePrefix .. "ResourceCollectionRateHard")
							Flag_Research(playerIndex,		racePrefix .. "ResourceCollectionRateExpert")
						end
					end	
					
					--enables AI special weapons
					if (pass == 0) then
						AI_Special_Research = nil
						dofilepath(PlayerRace_GetString(playerIndex, "path_ai_special", ""))
						if (AI_Special_Research ~= nil) then
							AI_Special_Research(playerIndex)
							AI_Special_Research = nil
						end
					end	
						
					--relics
					-- need to re-enable and update this code if I want AI to use relics
--					if (relics > 0) then
--						if (Universe_GameTime() > relic_start + 10) then
--							for i = 1, relic_max, 1 do
--								local sobname = "Relic" .. i
--								if (SobGroup_Empty(sobname) == 0) then
--									if (SobGroup_AreAnyOfTheseTypes(sobname, "Meg_Relic_RUGenerator") == 1) then					
--										local relic_weight = 150
--										-- Don't need to clear this since FillProximitySobGroup will clear it
--										SobGroup_CreateIfNotExist("temp")
--										if (SobGroup_FillProximitySobGroup ("temp", "Player_Ships"..playerIndex, sobname, 50000) == 1) then
--											if (SobGroup_FillProximitySobGroup ("temp", "Player_Ships" .. playerIndex, sobname, 15000) == 1) then
--												relic_weight = relic_weight + 150
--											end
--											if ((playerIndex ~= SobGroup_OwnedBy(sobname)) and (SobGroup_OwnedBy(sobname) >= 0) and (AreAllied(playerIndex, SobGroup_OwnedBy(sobname)) == 0)) then
--												relic_weight = relic_weight + 150
--												if (Player_GetLevelOfDifficulty(SobGroup_OwnedBy(sobname)) > 0) then
--													relic_weight = relic_weight + 300
--												end
--											end
--											CPU_AddDefendSobGroup(playerIndex, sobname, relic_weight)
--										end
--									end
--								end
--							end
--						end
--					end

					--crates
					-- need to re-enable and update this code if I want AI to use crates
--					if (crates > 0) then
--						if (Universe_GameTime() > timer_interval * 46) then		-- need to replace this with correct crate timer value
--							for otherPlayerIndex = 0, Player_Count do
--								if (SobGroup_Empty("CrateSpawnGroup" .. otherPlayerIndex) == 0) then		-- make sure this is the correct sobgroup name
--									if (SobGroup_AreAnyOfTheseTypes("CrateSpawnGroup" .. otherPlayerIndex, "Meg_Crate_HW1Container") == 1) then		-- am I still using this ship type?
--										-- FillShipsByType does not clear out the destination sob group, so if we didn't create it then clear it
--										if (SobGroup_CreateIfNotExist("temp") == 0) then
--											SobGroup_Clear("temp")
--										end
--										-- FillProximitySobGroup clears the destination sob group, so we don't need to clear it if it already existed
--										SobGroup_CreateIfNotExist("temp1")
--										
--										local scout = PlayerRace_GetString(playerIndex, "def_type_scout", "hgn_scout")				-- I use tables instead of these strings
--										
--										SobGroup_FillShipsByType("temp", "Player_Ships" .. playerIndex, scout)
--											
--										if (SobGroup_FillProximitySobGroup("temp1", "temp", "CrateSpawnGroup" .. otherPlayerIndex, 25000) == 1) then
--											SobGroup_MoveToSobGroup("temp1", "CrateSpawnGroup" .. otherPlayerIndex)
--										end
--									end
--								end
--							end
--						end	
--					end
				end
			end
		end
	end	
	if (pass == 0) then
		Rule_Remove("cpuplayers_updating")
		Rule_AddInterval("cpuplayers_updating",12)
	end
	pass = pass + 1
end
