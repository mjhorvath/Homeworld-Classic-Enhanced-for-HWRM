function MultiBuild(inTable, tParams)
	local numBits = getn(tParams)
	for i = 1, 2^numBits do
		local shipName = inTable.ThingToBuild
		local tempBits = NumToBits(i-1, numBits)
		local researchMode = 1
		local hyperspaceMode = 1
		for j = 1, numBits do
			shipName = shipName .. "_" .. tParams[j] .. tempBits[j]
			if tParams[j] == "rch" and tempBits[j] == 0 then
				researchMode = 0
			end
			if tParams[j] == "hyp" and tempBits[j] == 0 then
				hyperspaceMode = 0
			end
		end
		local outTable = dumbshallowcopy(inTable)
		outTable.ThingToBuild = shipName
		tinsert(base_build, outTable)
	end
end

function MultiResearch(inTable, tParams)
	local numBits = getn(tParams)
	for i = 1, 2^numBits do
		local researchName = inTable.Name
		local targetName = inTable.TargetName
		local tempBits = NumToBits(i-1, numBits)
		local researchMode = 1
		local hyperspaceMode = 1
		for j = 1, numBits do
			researchName = researchName .. "_" .. tParams[j] .. tempBits[j]
			targetName = targetName .. "_" .. tParams[j] .. tempBits[j]
			if tParams[j] == "rch" and tempBits[j] == 0 then
				researchMode = 0
			end
			if tParams[j] == "hyp" and tempBits[j] == 0 then
				hyperspaceMode = 0
			end
		end
		local outTable = dumbshallowcopy(inTable)
		outTable.Name				= researchName
		outTable.RequiredResearch	= inTable.Name
		outTable.RequiredSubSystems	= ""
		outTable.Cost				= 0
		outTable.Time				= 0
		outTable.DisplayedName		= ""
		outTable.DisplayPriority	= 0					-- will a zero here mess things up?
		outTable.Description		= "Instant Tech"	-- to localize?
		outTable.TargetName			= targetName
		tinsert(base_research, outTable)
	end
end

-- results in an error because the standard string library is unavailable
function RemoveSubsysReq(inCommand, inSubSystem)
--	local iStartIndex = strfind(inCommand, inSubSystem)
--	print("iStartIndex = " .. iStartIndex)
--	print(strlower(inCommand))
	exit()
end

function PrintBuildList()
	local icount = 0
	for i, v in build do
		local line = ""
		for j, w in v do
			line = line .. j .. "\t" .. w .. "\t"
		end
		print(line)
		icount = icount + 1
	end
	print("total: " .. icount)
end

function PrintResearchList()
	local icount = 0
	for i, v in research do
		local line = ""
		for j, w in v do
			line = line .. j .. "\t" .. w .. "\t"
		end
		print(line)
		icount = icount + 1
	end
	print("total: " .. icount)
end

function PrintBuildNames()
--	print("build start:")
--	local icount = 0
--	for i, v in build do
--		local line = ""
--		for j, w in v do
--			if j == "ThingToBuild" then
--				print(w)
--				icount = icount + 1
--				break
--			end
--		end
--	end
--	print("total: " .. icount)
end

function PrintResearchNames()
--	print("research start:")
--	local icount = 0
--	for i, v in research do
--		local line = ""
--		for j, w in v do
--			if j == "Name" then
--				print(w)
--				icount = icount + 1
--				break
--			end
--		end
--	end
--	print("total: " .. icount)
end
