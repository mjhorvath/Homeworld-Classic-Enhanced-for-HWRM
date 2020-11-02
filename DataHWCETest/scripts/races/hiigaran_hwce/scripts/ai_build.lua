AI_trace("LOADING HIIGARAN BUILD INFO")

kCollector		= "hgn_resourcecollector"
kRefinery		= "hgn_resourcecontroller"
kScout			= "hgn_scout"
kInterceptor	= "hgn_interceptor"
kBomber			= "hgn_attackbomber"
kCarrier		= "hgn_carrier"
kShipYard		= "hgn_shipyard"
kDestroyer		= "hgn_destroyer"
kBattleCruiser	= "hgn_battlecruiser"

function DetermineDemandWithNoCounterInfo_Hiigaran()
	if (sg_randFavorShipType < 55) then
		ShipDemandAddByClass( eFighter, 1 )
	elseif (sg_randFavorShipType < 85) then
		ShipDemandAddByClass( eCorvette, 1 )
	elseif (g_LOD < 2 and sg_randFavorShipType < 95) then
		ShipDemandAddByClass( eFrigate, 1 )
	else
		ShipVariantDemandAdd( kDestroyer, 1.0 )
	end
end

function DetermineSpecialDemand_Hiigaran()


	if (gameTime() < 2*60)  then
		ShipVariantDemandSet( kDestroyer, 0)
		ShipVariantDemandSet( kBattleCruiser, 0)		
	end
		local numResourcers = NumVariantSquadrons(kCollector) + NumVariantSquadronsQ(kCollector)
		if (numResourcers > 9 ) then
		ShipVariantDemandAdd( kRefinery, 0.5 )
	end

	local numCarriers = numActiveOfClass( s_enemyIndex, eBuilder )
	if (s_selfTotalValue > 75) and (numCarriers > 2 ) then
		ShipDemandAddByClass( eBuilder, 8.5 )
		end

	local torpedoDemand = -0.5		
	if (IsVariantResearchDone("hgn_improvedtorpedo") == 1 or s_militaryStrength > 40 or GetRU() > 2500) then
		torpedoDemand = 0
	end
	ShipVariantDemandAdd( "hgn_torpedofrigate", torpedoDemand )
	
	local numShipyards = NumVariantSquadrons( kShipYard ) + NumVariantSquadronsQ( kShipYard )
	if (numShipyards == 0 and UnderAttackThreat() < -75) then
		local bcDemand = ShipVariantDemandGet( kBattleCruiser )
		if (bcDemand >= 0.5) then
			ShipVariantDemandAdd( kShipYard, bcDemand-0.5 )
		end
	end
	if (s_militaryStrength > 25*sg_moreEnemies) then
		ShipDemandAddByClass( ePlatform, -2 )
	end
end

Proc_DetermineDemandWithNoCounterInfo = DetermineDemandWithNoCounterInfo_Hiigaran
Proc_DetermineSpecialDemand = DetermineSpecialDemand_Hiigaran
