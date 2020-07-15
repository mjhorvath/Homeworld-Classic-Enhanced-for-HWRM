function Create_Vgr_Carrier_CarrierOnly1(CustomGroup, playerIndex, shipID)  
	if (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership") == 0) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership_makaan") == 0) then
		if playerIndex == Universe_CurrentPlayer() then
			UI_SetElementSize("NewResearchMenu", "NonCombat", 0, 0);
		end	
	end	
end

function Update_Vgr_Carrier_CarrierOnly1(CustomGroup, playerIndex, shipID)	  
	--SobGroup_CreateIfNotExist("hgn_carrier_carrieronly1"..playerIndex)	
	--SobGroup_Clear("hgn_carrier_carrieronly1"..playerIndex)
	--SobGroup_SobGroupAdd("hgn_carrier_carrieronly1"..playerIndex, CustomGroup)	
end
