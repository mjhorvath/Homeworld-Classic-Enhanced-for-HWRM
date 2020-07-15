TEA_ColourNorm = "FFFFFF"
TEA_ColourEnemy = "FF0000"
TEA_ColourAlly = "FFFF00"
TEA_ColourSelf = "00FF00"

function GUI_init()
	Rule_AddInterval("DisableButtons_Rule", 0.1)
	Rule_AddInterval("IntroSubtitle_Rule", 1)
	Rule_AddInterval("DisplayDynamicGUIMessages", 1)
	Rule_AddInterval("DisplayStaticGUIMessages", 1)
	Rule_Remove("GUI_init")
end

function GUI_Hide_BountiesScreen()
	UI_HideScreen("BountiesScreen")
end
function GUI_Hide_BentusiScreen()
	UI_HideScreen("BentusiScreen")
end
function GUI_Hide_ProgressScreen()
	UI_HideScreen("ProgressScreen")
end
function GUI_Hide_MusicScreen()
	UI_HideScreen("MusicScreen")
end
function GUI_Hide_RulesScreen()
	UI_HideScreen("RulesScreen")
end

function DisableButtons_Rule()
	if (BountiesMode == 0) then
		UI_SetElementVisible("NewTaskbar", "btnBounties", 0)
--		UI_BindKeyEvent(PKEY, "GUI_Hide_BountiesScreen")		-- works fine, UI_BindKeyEvent() may be deprecated in the future
	end
	if (BentusiRouletteMode == 0) then
		UI_SetElementVisible("NewTaskbar", "btnBentusi", 0)
--		UI_BindKeyEvent(186, "GUI_Hide_BentusiScreen")		-- doesn't work
	end
	if (BackgroundMusic == -1) then
		UI_SetElementVisible("NewTaskbar", "btnMusic", 0)
--		UI_BindKeyEvent(MINUSKEY, "GUI_Hide_MusicScreen")		-- doesn't work
	end
	Rule_Remove("DisableButtons_Rule")
end

function IntroSubtitle_Rule()
	if (BountiesMode > 0) then
		starting_message = starting_message .. "GUI: You can view the Bounties screen by pressing P.\n"
	end
	if (BentusiRouletteMode > 0) then
		starting_message = starting_message .. "GUI: You can view the Bentusi Roulette screen by pressing SEMICOLON.\n"
	end
	starting_message = starting_message .. "GUI: You can view the Team Progress screen by pressing COMMA.\n"
	if (BackgroundMusic > -1) then
		starting_message = starting_message .. "GUI: You can view the Audio Track History screen by pressing MINUS.\n"
	end
	starting_message = starting_message .. "GUI: You can view the Game Rule List screen by pressing EQUALS.\n"
	Subtitle_Message(starting_message, 15)
	Rule_Remove("IntroSubtitle_Rule")
end

-- These need to be refreshed periodically.
function DisplayDynamicGUIMessages()
	local CurrentPlayer = FE_GetCurrentPlayerIndex()
	if (BountiesMode > 0) then
		BOU_GUI_display()
	end
	TEA_GUI_display(CurrentPlayer)
end

-- These only need to be refreshed once.
function DisplayStaticGUIMessages()
	local CurrentPlayer = FE_GetCurrentPlayerIndex()
	-- disabled
--	if (SpecialFleetsMode == 1) then
--		FLT_ATI_display(CurrentPlayer)
--	end
	if (BentusiRouletteMode > 0) then
		BEN_GUI_display(CurrentPlayer)
	end
	RUL_GUI_display()
	Rule_Remove("DisplayStaticGUIMessages")
end

-------------------------------------------------------------------------------
-- Bentusi Roulette

function BEN_GUI_display(playerIndex)
	UI_SetTextLabelText("BentusiScreen", "lblBentusiA0", "RESEARCH GRANTS:")
	UI_SetTextLabelText("BentusiScreen", "lblBentusiB0", "RESEARCH RESTRICTIONS:")
	local BEN_GrantTable = BEN_GrantStrings[playerIndex + 1]
	local BEN_RestrictTable = BEN_RestrictStrings[playerIndex + 1]
	GUI_trace("BEN_GUI_display: Player " .. playerIndex .. " has " .. getn(BEN_GrantTable) .. " research grants.")
	GUI_trace("BEN_GUI_display: Player " .. playerIndex .. " has " .. getn(BEN_RestrictTable) .. " research restrictions.")
	for i = 1, BentusiRouletteMode do
		UI_SetTextLabelText("BentusiScreen", "lblBentusiA" .. i, BEN_GrantTable[i])
		UI_SetTextLabelText("BentusiScreen", "lblBentusiB" .. i, BEN_RestrictTable[i])
	end
end

-------------------------------------------------------------------------------
-- Game Rules List

function RUL_GUI_display(playerIndex)
	UI_SetTextLabelText("RulesScreen", "lblRulesA0", "GAME RULE:")
	UI_SetTextLabelText("RulesScreen", "lblRulesB0", "SETTING:")
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
		UI_SetTextLabelText("RulesScreen", "lblRulesA" .. i, thisRuleName)
		UI_SetTextLabelText("RulesScreen", "lblRulesB" .. i, thisRuleSettingLabel)
	end
end

-------------------------------------------------------------------------------
-- Special Fleets - disabled permanently, needs to be updated to GUI system instead of ATI

function FLT_ATI_display(playerIndex)
	-- rect to left just above taskbar
	local FLT_Rectangle = {0.99, 0.1725, 0.3, 0.02}
	for i = 1, getn(FLT_PlayerStrings[playerIndex + 1]) do
		local FLT_ThisString = FLT_PlayerStrings[playerIndex + 1][i]
		ATI_AddString(FLT_PlayerItem, FLT_ThisString)
		ATI_Display2D("FLT_Template", FLT_Rectangle, 0)
		FLT_Rectangle[2] = FLT_Rectangle[2] + 0.02
	end
end

-------------------------------------------------------------------------------
-- Team Progress

function TEA_GUI_display(playerIndex)
	UI_SetTextLabelText("ProgressScreen", "lblProgressA0", "PLAYER:")
	UI_SetTextLabelText("ProgressScreen", "lblProgressB0", "RACE:")
	UI_SetTextLabelText("ProgressScreen", "lblProgressC0", "ROLE:")
	UI_SetTextLabelText("ProgressScreen", "lblProgressD0", "RUs:")
	UI_SetTextLabelText("ProgressScreen", "lblProgressE0", "SHIPS:")
	UI_SetTextLabelText("ProgressScreen", "lblProgressF0", "RESEARCHING:")
	-- for every other player...
	for otherPlayerIndex = 0, Player_Count do
		local sPlayerName = Player_GetName(otherPlayerIndex)
		-- if the other player is alive...
		if (Player_IsAlive(otherPlayerIndex) == 1) then
			local sRace = Player_Races[otherPlayerIndex + 1]
			-- if the other player is your ally...
			if (AreAllied(playerIndex, otherPlayerIndex) == 1) then
				local iRUs = Player_GetRU(otherPlayerIndex)
				local aResearchList = TechList[sRace].research
				local aSubsystemList = TechList[sRace].subsystems
				local aShipList = TechList[sRace].ships
				local sResearch = "(nothing)"
				local sBuild = "(nothing)"
				local iShipsNum = Player_NumberOfAwakeShips(otherPlayerIndex)
				local hasResearched = 0
				local hasBuilt = 0
				local sRole = "-"
				if (DefinedRolesMode == 1) then
					-- doesn't fit in the space provided
--					sRole = RolesTable[JOB_PlayerRoles[otherPlayerIndex + 1]].label
					sRole = tostring(JOB_PlayerRoles[otherPlayerIndex + 1])
				end

				if (otherPlayerIndex == playerIndex) then
					local TEA_ColourHex = TEA_ColourSelf
				elseif (AreAllied(playerIndex, otherPlayerIndex) == 1) then
					local TEA_ColourHex = TEA_ColourAlly
				else
					local TEA_ColourHex = TEA_ColourEnemy
				end

				-- for every research class...
				for l = 1, getn(aResearchList) do
					local lItems = aResearchList[l].items
					-- for every research item belonging to that class...
					for m = 1, getn(lItems) do
						local mTypes = lItems[m].types
						local mName = lItems[m].name
						-- for every sub-type created as a result of rule restrictions...
						for n = 1, getn(mTypes) do
							local nType = mTypes[n]
							-- if the other player is researching that item...
							if (Player_HasQueuedResearch(otherPlayerIndex, nType) == 1) then
								if (hasResearched == 0) then
									sResearch = mName
									hasResearched = 1
								else
									sResearch = sResearch .. ", " .. mName
								end
								break
							end
						end
					end
				end
				-- I have disabled listing the build queue too until I can come up with a better solution since there is simply too little space on the
				-- screen and I figured showing research was more important anyway. Note that the code below is missing the extra nType loop. Also, 
				-- don't forget the additional break that is needed in that loop.
				-- for every subsystem class...
				--for l = 1, getn(aSubsystemList) do
				--	local lCount = aSubsystemList[l]
				--	-- for every subsystem type belonging to that class...
				--	for m = 1, getn(lCount.items) do
				--		local mCount = lCount.items[m]
				--		-- if the other player is building that item...
				--		if (Player_HasQueuedBuild(otherPlayerIndex, mCount.type) == 1) then
				--			if (hasBuilt == 0) then
				--				sBuild = mCount.name
				--				hasBuilt = 1
				--			else
				--				sBuild = sBuild .. ", " .. mCount.name
				--			end
				--		end
				--	end
				--end
				-- for every ship class...
				--for l = 1, getn(aShipList) do
				--	local lCount = aShipList[l]
				--	-- for every ship type belonging to that class...
				--	for m = 1, getn(lCount.items) do
				--		local mCount = lCount.items[m]
				--		-- if the other player is building that item...
				--		if (Player_HasQueuedBuild(otherPlayerIndex, mCount.type) == 1) then
				--			if (hasBuilt == 0) then
				--				sBuild = mCount.name
				--				hasBuilt = 1
				--			else
				--				sBuild = sBuild .. ", " .. mCount.name
				--			end
				--		end
				--	end
				--end
--				UI_SetTextLabelTextW("ProgressScreen", "lblProgressA" .. (otherPlayerIndex + 1), "<c " .. TEA_ColourHex .. ">" .. sPlayerName .. "</c>")		-- can't concatenate regular text with wide text
				UI_SetTextLabelTextW("ProgressScreen", "lblProgressA" .. (otherPlayerIndex + 1), sPlayerName)
				 UI_SetTextLabelText("ProgressScreen", "lblProgressB" .. (otherPlayerIndex + 1), sRace)
				 UI_SetTextLabelText("ProgressScreen", "lblProgressC" .. (otherPlayerIndex + 1), sRole)
				 UI_SetTextLabelText("ProgressScreen", "lblProgressD" .. (otherPlayerIndex + 1), iRUs)
				 UI_SetTextLabelText("ProgressScreen", "lblProgressE" .. (otherPlayerIndex + 1), iShipsNum)
				 UI_SetTextLabelText("ProgressScreen", "lblProgressF" .. (otherPlayerIndex + 1), sResearch)
			else
				-- I would enabled all this, but there's no way to color wide characters AFAIK.
--				local iRUs = "---"
--				local sResearch = "---"
--				local sBuild = "---"
--				local iShipsNum = "---"
--				UI_SetTextLabelTextW("ProgressScreen", "lblProgressA" .. (otherPlayerIndex + 1), "<c " .. TEA_ColourHex .. ">" .. sPlayerName .. "</c>")		-- can't concatenate regular text with wide text
--				UI_SetTextLabelTextW("ProgressScreen", "lblProgressA" .. (otherPlayerIndex + 1), sPlayerName)
--				 UI_SetTextLabelText("ProgressScreen", "lblProgressB" .. (otherPlayerIndex + 1), sRace)
--				 UI_SetTextLabelText("ProgressScreen", "lblProgressC" .. (otherPlayerIndex + 1), iRUs)
--				 UI_SetTextLabelText("ProgressScreen", "lblProgressD" .. (otherPlayerIndex + 1), iShipsNum)
--				 UI_SetTextLabelText("ProgressScreen", "lblProgressE" .. (otherPlayerIndex + 1), sResearch)
			end
		else
			UI_SetTextLabelTextW("ProgressScreen", "lblProgressA" .. (otherPlayerIndex + 1), sPlayerName)
			 UI_SetTextLabelText("ProgressScreen", "lblProgressB" .. (otherPlayerIndex + 1), "-")
			 UI_SetTextLabelText("ProgressScreen", "lblProgressC" .. (otherPlayerIndex + 1), "-")
			 UI_SetTextLabelText("ProgressScreen", "lblProgressD" .. (otherPlayerIndex + 1), "-")
			 UI_SetTextLabelText("ProgressScreen", "lblProgressE" .. (otherPlayerIndex + 1), "-")
			 UI_SetTextLabelText("ProgressScreen", "lblProgressF" .. (otherPlayerIndex + 1), "-")
		end
	end
end

-------------------------------------------------------------------------------
-- Bounties

function BOU_GUI_display()
	UI_SetTextLabelText("BountiesScreen", "lblBountyA0", "PLAYER:")
	UI_SetTextLabelText("BountiesScreen", "lblBountyB0", "BTY:")
	for otherPlayerIndex = 0, Player_Count do
		local sPlayerName = Player_GetName(otherPlayerIndex)
		-- if the player is alive...
		if (Player_IsAlive(otherPlayerIndex) == 1) then
			local BOU_BountyNumber = BOUNTY_PlayerBounties[otherPlayerIndex + 1]
			local BOU_BountyRatio = BOU_BountyNumber / BOUNTY_MaxPossible
			local BOU_BountyColorR = format("%02X", (1 - BOU_BountyRatio) * 255)
			local BOU_BountyColorG = format("%02X", BOU_BountyRatio * 255)
			local BOU_BountyColorHex = BOU_BountyColorR .. BOU_BountyColorG .. "00"
			local BOU_BountyString = "<c " .. BOU_BountyColorHex .. ">" .. round(BOU_BountyNumber) .. "</c>"
			UI_SetTextLabelTextW("BountiesScreen", "lblBountyA" .. (otherPlayerIndex + 1), sPlayerName)
			 UI_SetTextLabelText("BountiesScreen", "lblBountyB" .. (otherPlayerIndex + 1), BOU_BountyString)
		else
			UI_SetTextLabelTextW("BountiesScreen", "lblBountyA" .. (otherPlayerIndex + 1), sPlayerName)
			 UI_SetTextLabelText("BountiesScreen", "lblBountyB" .. (otherPlayerIndex + 1), "-")
		end
	end
end

-------------------------------------------------------------------------------
-- Background Music

function MUS_GUI_display()
	for i = 0, 9 do
		local latestTrackNumber = getn(MUS_playedTxt) - i
		local latestTrackText = MUS_playedTxt[latestTrackNumber]
		if (i == 0) then
			latestTrackText = "Now playing: " .. latestTrackText
		end
		if (MUS_playedTxt[latestTrackNumber] ~= nil) then
			UI_SetTextLabelText("MusicScreen", "lblMusicA" .. i, latestTrackNumber .. ". ")
			UI_SetTextLabelText("MusicScreen", "lblMusicB" .. i, latestTrackText)
		end
	end
end

-------------------------------------------------------------------------------
-- Timer & Clock - disabled permanently

function TIM_ATI_display()
	local TIM_Rectangle = {0.99, 0.95, 0.3, 0.02}
	local world_time = date("%X")
	ATI_AddString(TIM_GameTime, world_time)
	ATI_Display2D("TIM_Template", TIM_Rectangle, 0)
	TIM_Rectangle[2] = TIM_Rectangle[2] - 0.02
	local game_time = Universe_GameTime()
	local game_h = floor(game_time/3600)
	local game_m = floor(game_time/60 - game_h*60)
	local game_s = game_time - game_m * 60 - game_h * 3600
	local game_str = format("%2.0fh %2.0fm %3.1fs",game_h, game_m, game_s)
	ATI_AddString(TIM_GameTime, game_str)
	ATI_Display2D("TIM_Template", TIM_Rectangle, 0)
	TIM_Rectangle[2] = TIM_Rectangle[2] - 0.02
end
