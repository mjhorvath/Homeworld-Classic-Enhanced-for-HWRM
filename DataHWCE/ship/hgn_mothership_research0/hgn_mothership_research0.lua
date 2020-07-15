function Create_Hgn_Mothership_Research0(CustomGroup, playerIndex, shipID) 	
	if playerIndex == Universe_CurrentPlayer() then
		UI_SetElementSize("NewResearchMenu", "NonCombat", 0, 0);
	end
end

function Update_Hgn_Mothership_Research0(CustomGroup, playerIndex, shipID)	
	--SobGroup_CreateIfNotExist("hgn_mothership_research0"..playerIndex)
	--SobGroup_Clear("hgn_mothership_research0"..playerIndex)
	--SobGroup_SobGroupAdd("hgn_mothership_research0"..playerIndex, CustomGroup)	
end
