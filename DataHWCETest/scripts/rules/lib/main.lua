--------------------------------------------------------------------------------
-- Ends the game if there are no more live opponents.
--
function MainRule()
	local numAlive, numEnemies, gameOver = 0, 0, 1
	-- for each player...
	for playerIndex = 0, Player_Count do
		-- if the player is alive...
		if (Player_IsAlive(playerIndex) == 1) then
			-- compare the player against all other players
			for otherPlayerIndex = 0, Player_Count do
				-- check to see if the players are enemies
				if (AreAllied(playerIndex, otherPlayerIndex) == 0) then
					-- check to see if the other player is still alive, else the game is over
					if (Player_IsAlive(otherPlayerIndex) == 1) then
						gameOver = 0
					else
						numEnemies = numEnemies + 1
					end
				end
			end
			numAlive = numAlive + 1
		end
	end
	-- special case - if there are no enemies then never end
	-- don't see why this is necessary
--	if ((numEnemies == 0) and (numAlive > 0)) then
--		gameOver = 0
--	end
	-- if gameOver flag is still set then the game is OVER
	if (gameOver == 1) then
		Rule_Add("WriteStats")		-- temp disable
		Rule_Add("waitForEnd")
		Event_Start("endGame")
		Rule_Remove("MainRule")
	end
end


--------------------------------------------------------------------------------
--
--
function waitForEnd()
	if (Event_IsDone("endGame")) then
		setGameOver()
		Rule_Remove("waitForEnd")
	end
end


--==============================================================================
-- Create the Events table. The name of this table must always be Events (this is what the game looks for).
-- Need to update the events/cinematics code to the new stuff GearBox invented.

Events = {}
Events.endGame  =
{
	{
--		{"dofilepath(\"data:scripts/HW2_ThoughtDump_b.lua\")", ""},
		{ "wID = Wait_Start(5)","Wait_End(wID)"},
	},
}
