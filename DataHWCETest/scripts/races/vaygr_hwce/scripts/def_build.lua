--Type => SubSystem
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

dofilepath("data:scripts/races/vaygr_hwce/scripts/out_vgr_bld.lua")
dofilepath("data:scripts/techfunc.lua")

PrintBuildNames()
