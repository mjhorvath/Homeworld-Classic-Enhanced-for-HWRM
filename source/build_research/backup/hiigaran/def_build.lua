--Type => SubSystem
--ThingToBuild => name of subsystem to build
--RequiredResearch => global research dependencies
--RequiredShipSubSystems => subsystems dependencies for local to the ship
--RequiredFleetSubSystems => Fleet wide subsystem dependencies
--DisplayPriority => Order in UI lists
--DisplayedName => Localized name for UI
--Description => Description for UI

Ship = 0
SubSystem = 1

--Ship = "Ship"
--SubSystem = "SubSystem"

build = {}
bld_index = 1

dofilepath("data:scripts/utilfunc.lua")
dofilepath("data:scripts/techfunc.lua")
doscanpath("data:Scripts/Races/Hiigaran/Scripts/Build", "*.lua")
doscanpath("data:Scripts/Productiontimes", "applybuildtimes.lua")

print("HWCE: Hiigaran bld_index = " .. bld_index)

PrintBuild()
