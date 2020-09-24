Icon_Speed = "data:ui/newui/research/icons/speed.mres"
Icon_Health = "data:ui/newui/research/icons/health.mres"
Icon_Tech = "data:ui/newui/research/icons/tech.mres"
Icon_Ability = "data:ui/newui/research/icons/ability.mres"
Icon_Build = "data:ui/newui/research/icons/build.mres"

Modifier = 0
Ability = 1
AllShips = 0
Family = 1
Ship = 2

--Icon_Speed = "Icon_Speed"
--Icon_Health = "Icon_Health"
--Icon_Tech = "Icon_Tech"
--Icon_Ability = "Icon_Ability"
--Icon_Build = "Icon_Build"

--Modifier = "Modifier"
--Ability = "Ability"
--AllShips = "AllShips"
--Family = "Family"
--Ship = "Ship"

research = {}
res_index = 1

dofilepath("data:scripts/utilfunc.lua")
dofilepath("data:scripts/techfunc.lua")
-- not sure what to do with the items in "hyperspace_upgrades.lua", read the notes there
-- possible similar issue with "InstaAdvancedFrigateTech" in "default.lua"
doscanpath("data:Scripts/Races/Hiigaran/Scripts/Research", "*.lua")

print("HWCE: Hiigaran res_index = " .. res_index)

PrintResearch()
