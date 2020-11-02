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
			if tParams[j] ~= ModeSuffixTable[j] then
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

-- used in build and research scripts
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

-- used in build and research scripts
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

-- used in build and research scripts
function PrintBuildNames()
	print("build start:")
	for i, v in build do
		local line = ""
		for j, w in v do
			if j == "ThingToBuild" then
				print(w)
				break
			end
		end
	end
end

-- used in build and research scripts
function PrintResearchNames()
	print("research start:")
	for i, v in research do
		local line = ""
		for j, w in v do
			if j == "Name" then
				print(w)
				break
			end
		end
	end
end

-- used in build and research scripts
function CountBuildItems()
	local icount = 0
	for i, v in build do
		local line = ""
		for j, w in v do
			if j == "ThingToBuild" then
				icount = icount + 1
				break
			end
		end
	end
	print("build total: " .. icount)
end

-- used in build and research scripts
function CountResearchItems()
	local icount = 0
	for i, v in research do
		local line = ""
		for j, w in v do
			if j == "Name" then
				icount = icount + 1
				break
			end
		end
	end
	print("research total: " .. icount)
end

-- used in several ship Lua files
function Player_GetNumberOfVariantSquadronsOfTypeAwakeOrSleeping(playerIndex, shipType)
	local tempCount = 0
	local tempBits = VariantBuildBool[shipType]
	local tempVariants = GetVariantsAll(shipType, tempBits)
	for i, v in tempVariants do
		tempCount = tempCount + Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, v)
	end
	return tempCount
end

-- used in several ship Lua files
function SobGroup_FillVariantShipsByType(groupName, playerIndex, shipType)
	local tempBits = VariantBuildBool[shipType]
	local tempVariants = GetVariantsAll(shipType, tempBits)
	for i, v in tempVariants do
		SobGroup_FillShipsByType(groupName, playerIndex, v)
	end
end

-- used in kus_gravwellgenerator.lua, tai_gravwellgenerator.lua
function FillVariantsFromTable(shipList)
	local tempTable = {}
	for i, v in shipList do
		local tempBits = VariantBuildBool[v]
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

-- used in AI scripts
function ResearchVariantDemandSet(shipType, demValue)
	local varTable = VariantResearchInt[lower(shipType)]
	for i, k in varTable do
		ResearchDemandSet(k, demValue)
	end
end

-- used in AI scripts
function ResearchVariantDemandAdd(shipType, demValue)
	local varTable = VariantResearchInt[lower(shipType)]
	for i, k in varTable do
		ResearchDemandAdd(k, demValue)
	end
end

-- used in AI scripts
function NumVariantSquadrons(shipType)
	local varTable = VariantResearchInt[lower(shipType)]
	local outNum = 0
	for i, k in varTable do
		outNum = outNum + NumSquadrons(k)
	end
	return outNum
end

-- used in AI scripts
function NumVariantSquadronsQ(shipType)
	local varTable = VariantResearchInt[lower(shipType)]
	local outNum = 0
	for i, k in varTable do
		outNum = outNum + NumSquadronsQ(k)
	end
	return outNum
end

-- used in AI scripts
function ShipVariantDemandGet(shipType)
	local varTable = VariantResearchInt[lower(shipType)]
	local demVal = 0
	for i, k in varTable do
		demVal = max(demVal, ShipDemandGet(k))
	end
	return demVal
end

-- used in AI scripts
function ShipVariantDemandAdd(shipType, demValue)
	local varTable = VariantBuildInt[lower(shipType)]
	for i, k in varTable do
		ShipDemandAdd(k, demValue)
	end
end

-- used in AI scripts
function Util_CheckVariantResearch(shipType)
	local varTable = VariantResearchInt[lower(shipType)]
	local boolVal = 0
	for i, k in varTable do
		boolVal = Util_CheckResearch(k)
		if boolVal == 1 then
			break
		end
	end
	return boolVal
end

-- used in AI scripts
function IsVariantResearchDone(techType)
	local varTable = VariantResearchInt[lower(shipType)]
	local boolVal = 0
	for i, k in varTable do
		boolVal = IsResearchDone(k)
		if boolVal == 1 then
			break
		end
	end
	return boolVal
end
