function GetVariantsMatch(shipName, tParams)
	local tempTable = {}
	local numParams = getn(tParams)
	local numBits = 0
	for i = 1, numParams do
		if tParams[i] == 1 then
			tinsert(tempTable, VariantLabels[i])
			numBits = numBits + 1
		end
	end
	for i = 1, 2^numBits do
		local tempBits = NumToBits(i-1, numBits)
		local bPass = 1
		for j = 1, numParams do
			if tParams[j] ~= ModeSuffixes[j] then
				bPass = 0
				break
			end
		end
		if bPass == 1 then
			for j = 1, numBits do
				shipName = shipName .. "_" .. tempTable[j] .. tempBits[j]
			end
		end
	end
	return shipName
end

function GetVariantsAll(shipName, tParams)
	local outTable = {}
	local tempTable = {}
	local numParams = getn(tParams)
	local numBits = 0
	for i = 1, numParams do
		if tParams[i] == 1 then
			tinsert(tempTable, VariantLabels[i])
			numBits = numBits + 1
		end
	end
	for i = 1, 2^numBits do
		local tempBits = NumToBits(i-1, numBits)
		for j = 1, numBits do
			shipName = shipName .. "_" .. tempTable[j] .. tempBits[j]
		end
		tinsert(outTable, shipName)
	end
	return outTable
end

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

-- results in an error because the standard string library is unavailable in some scopes
function RemoveSubsysReq(inCommand, inSubSystem)
--	local iStartIndex = strfind(inCommand, inSubSystem)
--	print("iStartIndex = " .. iStartIndex)
--	print(strlower(inCommand))
--	exit()
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

-- used in some ship Lua files
function Player_GetNumberOfVariantSquadronsOfTypeAwakeOrSleeping(playerIndex, shipType)
	local tempCount = 0
	local tempBits = VariantBuilds[shipType]
	local tempVariants = GetVariantsAll(shipType, tempBits)
	for i, v in tempVariants do
		tempCount = tempCount + Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, v)
	end
	return tempCount
end

-- used in some ship Lua files
function SobGroup_FillVariantShipsByType(groupName, playerIndex, shipType)
	local tempBits = VariantBuilds[shipType]
	local tempVariants = GetVariantsAll(shipType, tempBits)
	for i, v in tempVariants do
		SobGroup_FillShipsByType(groupName, playerIndex, v)
	end
end

-- used in kus_gravwellgenerator.lua, tai_gravwellgenerator.lua
function FillVariantsFromTable(shipList)
	local tempTable = {}
	for i, v in shipList do
		local tempBits = VariantBuilds[v]
		local tempVariants = GetVariantsAll(v, tempBits)
		for j, w in tempVariants do
			tinsert(tempTable, w)
		end
	end
	return tempTable
end

-- used in kus_gravwellgenerator.lua, tai_gravwellgenerator.lua
function ConvertTableToList(tempTable)
	local tempList = ""
	local tableLength = getn(tempTable)
	for i, v in tempTable do
		tempList = tempList + v
		if i < tableLength then
			tempList = tempList + ","
		end
	end
	return tempList
end
