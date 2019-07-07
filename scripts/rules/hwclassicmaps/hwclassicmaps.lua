dofilepath("data:scripts/SCAR/SCAR_Util.lua")
dofilepath("data:scripts/scar/restrict.lua")
dofilepath("data:leveldata/multiplayer/lib/lib.lua")
dofilepath("data:leveldata/multiplayer/lib/crates.lua")
dofilepath("data:leveldata/multiplayer/lib/relics.lua")
dofilepath("data:leveldata/multiplayer/lib/challenges.lua")
dofilepath("data:leveldata/multiplayer/lib/norushtime.lua")
dofilepath("data:leveldata/multiplayer/lib/research.lua")
dofilepath("data:leveldata/multiplayer/lib/ruinjections.lua")
dofilepath("data:leveldata/multiplayer/lib/bounties.lua")
dofilepath("data:leveldata/multiplayer/lib/cpuplayers.lua")
dofilepath("data:leveldata/multiplayer/lib/ui.lua")
dofilepath("data:leveldata/multiplayer/lib/dev.lua")
dofilepath("data:leveldata/multiplayer/lib/main.lua")
dofilepath("data:leveldata/multiplayer/lib/carriersonly.lua")

function OnInit()
	Volume_AddSphere("centre", {-11111, 11111, 11111,}, 10)
	MPRestrict()
	cpuplayers = GetGameSettingAsNumber("cpuplayers")
	bounties = GetGameSettingAsNumber("bounties")
	research = GetGameSettingAsNumber("research")
	ruinjections = GetGameSettingAsNumber("ruinjections")
	challenges = GetGameSettingAsNumber("challenges")
	relics = GetGameSettingAsNumber("relics")
	crates = GetGameSettingAsNumber("crates")
	carriersonly = GetGameSettingAsNumber("carriersonly")
	norushtime = GetGameSettingAsNumber("norushtime")

	if carriersonly == 0 then
		SetStartFleetSuffix("")
		Rule_Add("DespawnPlayerFleetInHyperspaceRule")
	elseif carriersonly == 1 then
		SetStartFleetSuffix("carriersonly")
		Rule_AddInterval("carriersonly_init",2)
		Rule_Add("DespawnPlayerFleetInHyperspaceRule")
	elseif carriersonly == 2 then
		SetStartFleetSuffix("carriersonly1")
		Rule_AddInterval("carriersonly_init",2)
		Rule_Add("DespawnPlayerFleetInHyperspaceRule")
	elseif carriersonly == 3 then
		print("HWCM: Setting up HW1 map default battle.")
		SetStartFleetSuffix("_frommap")
		Rule_Add("SpawnPlayerFleetInHyperspaceRule")
	end

	UI_SetElementEnabled("NewTaskbar", "btnObjectives", 0)
	UI_SetElementEnabled("NewTaskbar", "btnRecall", 0)
	UI_SetElementEnabled("NewTaskbar", "btnBuild", 0)
	UI_SetElementEnabled("NewTaskbar", "btnResearch", 0)
	UI_SetElementEnabled("NewTaskbar", "btnLaunch", 0)

--	Rule_AddInterval("Subtitle_Rule", 10)
	Rule_AddInterval("timer_updating", 1.02)	--timed with doai
end

function Subtitle_Rule()
	Subtitle_Message("This text should not be visible normally. It is here for testing purposes.", 20)
	Rule_Remove("Subtitle_Rule")
end

--------------------------------------------------------------------------------
-- Spawns all ships placed in hyperspace by the level file.
--
function SpawnPlayerFleetInHyperspaceRule()
	print("HWCM: Spawning fleet in hyperspace.")
	local PlayerCount = Player_Count
	for playerIndex = 0, PlayerCount do
		local EH_SobName = "HE_Formation" .. (playerIndex + 1)
		local EH_SobEmpty = SobGroup_Empty(EH_SobName)
		if (EH_SobEmpty == 0) then
			SobGroup_Spawn(EH_SobName, "StartPos" .. playerIndex)
			SobGroup_ParadeSobGroup(EH_SobName, "Player_Ships" .. playerIndex, 0)
		end
	end
	Rule_Remove("SpawnPlayerFleetInHyperspaceRule")
end

--------------------------------------------------------------------------------
-- Kills all ships placed in hyperspace by the level file.
--
function DespawnPlayerFleetInHyperspaceRule()
	print("HWCM: Despawning fleet in hyperspace.")
	local PlayerCount = Player_Count
	for playerIndex = 0, PlayerCount do
		local EH_SobName = "HE_Formation" .. (playerIndex + 1)
		SobGroup_Create(EH_SobName)
		local EH_SobEmpty = SobGroup_Empty(EH_SobName)
		if (EH_SobEmpty == 0) then
			SobGroup_Move(playerIndex, EH_SobName, "PointOfNoReturn")
			SobGroup_SetHealth(EH_SobName, 0)
		end
	end
	Rule_Remove("DespawnPlayerFleetInHyperspaceRule")
end


timer_timing = 1
timer_interval = 5.1

function timer_updating()
	if timer_timing == 1 then
		for playerIndex = 0,Universe_PlayerCount()-1,1 do
			if Player_IsAlive(playerIndex) == 1 then
				if Player_HasShipWithBuildQueue(playerIndex) == 1 then
					Player_RestrictBuildOption(playerIndex, PlayerRace_GetString(playerIndex, "dm_build_restrict", ""))
				end
			end
		end
		Rule_AddInterval("sobgroups_init",1)
		--Rule_AddInterval("sobgroups_updating",1)
		Rule_AddInterval("UI_init",0.1)
		Rule_AddInterval("UI_updating",0.5)
		Rule_AddInterval("cpuplayers_updating",0.1)
		Rule_AddInterval("balancing_updating",0.25) --dev. to remove
		if research == 0 then
			Rule_AddInterval("research_init", timer_interval)
		end
		if bounties > 0 then
			Rule_AddInterval("bounties_updating", timer_interval*2)
		end
		if norushtime > 0 then
			Rule_AddInterval("norushtime_updating", timer_interval*2)
		end
		Rule_AddInterval("mainrule_updating", timer_interval*3)
	elseif timer_timing == 2 then
		if relics > 0 then
			relics_init()
			Rule_AddInterval("relics_updating", timer_interval*4)
		end	
	elseif timer_timing == 3 then
		if challenges > 0 then
			Rule_AddInterval("challenges_updating", timer_interval)
		end
	elseif timer_timing == 4 then				
		if crates > 0 then
			crates_init()
			Rule_AddInterval("CheckCratesRule", timer_interval)
			Rule_AddInterval("SpawnCratesRule", timer_interval*60)
		end
	elseif timer_timing == 5 then
		if ruinjections > 0 then
			Rule_AddInterval("ruinjections_updating", timer_interval*48)
		end
	elseif timer_timing == 6 then
		UI_SetElementEnabled("NewTaskbar", "btnObjectives", 1)
		UI_SetElementEnabled("NewTaskbar", "btnRecall", 1)
		UI_SetElementEnabled("NewTaskbar", "btnBuild", 1)
		if research == 1 then
			UI_SetElementEnabled("NewTaskbar", "btnResearch", 1)
		end
		UI_SetElementEnabled("NewTaskbar", "btnLaunch", 1)
	end
	timer_timing = timer_timing + 1
	if timer_timing > 6 then
		Rule_Remove("timer_updating")
	end
end

Events = {}
Events.endGame  =
{
	{
		{ "wID = Wait_Start(5)","Wait_End(wID)"},
	},
}
Events.startcinematic =
{
	{HW2_Letterbox(1),},
	{
		{ "Camera_AllowControl(0)", "", },
		{ "Universe_EnableSkip(0)", "", },
		{ "Universe_AllowPlayerOrders(0)", "", },
		{ "SobGroup_DeSelectAll()", "", },                
		{ "Sensors_Toggle(0)", "", },
	},
}
Events.startcinematic_focusrestore =
{
	{HW2_Letterbox(1),},
	{
		{ "Camera_AllowControl(0)", "", },
		{ "Universe_EnableSkip(0)", "", },
		{ "Universe_AllowPlayerOrders(0)", "", },
		{ "SobGroup_DeSelectAll()", "", },
		{ "Camera_FocusSave()", "", },
		{ "Sensors_Toggle(0)", "", },
	},
}
Events.stopcinematic =
{
	{HW2_Letterbox(0),},
	{
		{ "Universe_AllowPlayerOrders(1)", "", },
		{ "Camera_AllowControl(1)", "", },
	},
}
Events.stopcinematic_focusrestore =
{
	{HW2_Letterbox(0),},
	{
		{ "Universe_AllowPlayerOrders(1)", "", },
		{ "Camera_FocusRestore()", "", },
		{ "Camera_AllowControl(1)", "", },
	},
}
