

-------------------------------------------------------------------------------
-- Plays a random music track for a while, then plays another random music track, etc.
-- Time is measured in game time, which is not the same if the player pauses the game a lot. Need to fix this.
--
function RandomMusicRule()
	-- function created by Mikail, EvilleJedi
	local passBool = 1
	local musicPath = [[data:sound\music\]]
	local listLen = getn(TracksList)
	local binLen = getn(MUS_playedBin)
	local track_number = srandom(MUS_Seed, listLen)
	local track_title = TracksList[track_number][1]
	local track_file = musicPath .. TracksList[track_number][2]
	local track_length = TracksList[track_number][3]
	local track_m = floor(track_length / 60)
	local track_s = track_length - track_m * 60
	local track_string = "GPE: Now playing (" .. track_number .. "/" .. listLen .. "): " .. track_title .. " (" .. track_m .. "m " .. track_s .. "s)"
	local track_listtxt = track_title .. " (" .. track_m .. "m " .. track_s .. "s)"
	for k = 1, binLen do
--		print("MUS_playedBin[" .. k .. "] = " .. MUS_playedBin[k])
		-- don't play the same track twice
		if (MUS_playedBin[k] == track_number) then
			-- if the end of the list has been reached, start over
			if (k == listLen) then
				MUS_playedBin = {}
			end
			passBool = 0
			break
		end
	end
	if (passBool == 1) then
		Sound_MusicPlay(track_file)
		if (MUS_firstRun == 1) then
			StartingMessage = StartingMessage .. track_string .. "\n"
			MUS_firstRun = 0
		else
			Subtitle_Message(track_string, 10)
		end
		print(track_string)
		tinsert(MUS_playedBin, track_number)
		tinsert(MUS_playedTxt, track_listtxt)
		MUS_GUI_display()
		UI_FlashButton("NewTaskbar", "btnMusic", 1)
		Rule_AddInterval("RandomMusicRule", track_length)
		Rule_Remove("RandomMusicRule")
	else
--		print("Track has already been played.")
		RandomMusicRule()
	end
end

-------------------------------------------------------------------------------
-- Plays the selected music track forever.
--
function StaticMusicRule()
	local musicPath = [[data:sound\music\]]
	local listLen = getn(TracksList)
	local binLen = getn(MUS_playedBin)
	local track_number = BackgroundMusic
	local track_title = TracksList[track_number][1]
	local track_file = musicPath .. TracksList[track_number][2]
	local track_length = TracksList[track_number][3]
	local track_m = floor(track_length / 60)
	local track_s = track_length - track_m * 60
	local track_string = "GPE: Now playing (" .. track_number .. "/" .. listLen .. "): " .. track_title .. " (" .. track_m .. "m " .. track_s .. "s)"
	local track_listtxt = track_title .. " (" .. track_m .. "m " .. track_s .. "s)"
	Sound_MusicPlay(track_file)
	StartingMessage = StartingMessage .. track_string .. "\n"
	print(track_string)
	tinsert(MUS_playedBin, track_number)
	tinsert(MUS_playedTxt, track_listtxt)
	MUS_GUI_display()
	UI_FlashButton("NewTaskbar", "btnMusic", 1)
	Rule_Remove("PlayMusicRule")
end
