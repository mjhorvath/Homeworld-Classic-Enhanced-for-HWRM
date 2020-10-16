-- updated for HWCE by Mikali
dofilepath("data:scripts/techfunc.lua")
dofilepath("data:scripts/rules/lib/objectlist_techvariants.lua")
dofilepath("data:scripts/playerspatch_ships_util.lua")

function Create_Hgn_Carrier(CustomGroup, playerIndex, shipID)  
	if Player_GetNumberOfVariantSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership") == 0 then
		if playerIndex == Universe_CurrentPlayer() then
			UI_SetElementVisible("NewResearchMenu", "NonCombat", 0);
		end	
	end	
end

function Update_Hgn_Carrier(CustomGroup, playerIndex, shipID)	  
	--SobGroup_CreateIfNotExist("hgn_carrier"..playerIndex)	
	--SobGroup_Clear("hgn_carrier"..playerIndex)
	--SobGroup_SobGroupAdd("hgn_carrier"..playerIndex, CustomGroup)	
	NoSalvageScuttle(CustomGroup, playerIndex, shipID)
end
