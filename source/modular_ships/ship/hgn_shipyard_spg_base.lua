if hypBool == 1 then
	hyperdetectModule = "Hgn_MS_Sensors_DetectHyperspace"
	if rchBool == 1 then
		hyperspaceModule = "Hgn_MS_Module_Hyperspace_rch1"
		hyperinhibitModule = "Hgn_MS_Module_HyperspaceInhibitor_rch1"
	else
		hyperspaceModule = "Hgn_MS_Module_Hyperspace_rch0"
		hyperinhibitModule = "Hgn_MS_Module_HyperspaceInhibitor_rch0"
	end
else
	hyperdetectModule = ""
	hyperspaceModule = ""
	hyperinhibitModule = ""
end
if resBool == 1 then
	resourceModule = "Hgn_SY_Innate_Resource"
	resourceRate = 40
else
	resourceModule = ""
	resourceRate = 0
end
if rchBool == 1 then
	researchModule = "Hgn_MS_Module_Research"
	advancedresearchModule = "Hgn_MS_Module_ResearchAdvanced"
	corvetteprodModule = "hgn_ms_production_corvette_rch1"
	frigateprodModule = "hgn_ms_production_frigate_rch1"
	firecontrolModule = "Hgn_MS_Module_FireControl_rch1"
	cloakgenModule = "Hgn_MS_Module_CloakGenerator_rch1"
else
	researchModule = ""
	advancedresearchModule = ""
	corvetteprodModule = "hgn_ms_production_corvette_rch0"
	frigateprodModule = "hgn_ms_production_frigate_rch0"
	firecontrolModule = "Hgn_MS_Module_FireControl_rch0"
	cloakgenModule = "Hgn_MS_Module_CloakGenerator_rch0"
end
if carBool == 0 then
	capshipprodModule = "Hgn_SY_Production_CapShip"
else
	advancedresearchModule = ""
	capshipprodModule = ""
end

NewShipType = StartShipConfig()
NewShipType.displayedName="$1544"
NewShipType.sobDescription="$1545"
NewShipType.maxhealth=200000
NewShipType.regentime=1000
NewShipType.minRegenTime=1000
NewShipType.sideArmourDamage = getShipNum(NewShipType, "sideArmourDamage", 1.0)
NewShipType.rearArmourDamage = getShipNum(NewShipType, "rearArmourDamage", 1.0)
NewShipType.isTransferable=0
NewShipTypeuseEngagementRanges=1
NewShipType.addedUnitCaps=101
NewShipType.paradeData="hgn_mothership_parade"
NewShipType.mass=2000
NewShipType.collisionMultiplier=1
NewShipType.thrusterMaxSpeed=20
NewShipType.mainEngineMaxSpeed=20
NewShipType.rotationMaxSpeed=4
NewShipType.thrusterAccelTime=5
NewShipType.thrusterBrakeTime=2
NewShipType.mainEngineAccelTime=5
NewShipType.mainEngineBrakeTime=2
NewShipType.rotationAccelTime=0.7
NewShipType.rotationBrakeTime=0.3
NewShipType.thrusterUsage=1
NewShipType.accelerationAngle=30
NewShipType.mirrorAngle=0
NewShipType.secondaryTurnAngle=0
NewShipType.maxBankingAmount=10
NewShipType.descendPitch=10
NewShipType.goalReachEpsilon=25
NewShipType.slideMoveRange=350
NewShipType.controllerType="Ship"
NewShipType.tumbleStaticX=0
NewShipType.tumbleStaticY=0
NewShipType.tumbleStaticZ=0
NewShipType.tumbleDynamicX=0
NewShipType.tumbleDynamicY=0
NewShipType.tumbleDynamicZ=0
NewShipType.tumbleSpecialDynamicX=0
NewShipType.tumbleSpecialDynamicY=0
NewShipType.tumbleSpecialDynamicZ=0
NewShipType.relativeMoveFactor=1
NewShipType.swayUpdateTime=10
NewShipType.swayOffsetRandomX=10
NewShipType.swayOffsetRandomY=10
NewShipType.swayOffsetRandomZ=10
NewShipType.swayBobbingFactor=0
NewShipType.swayRotateFactor=0
setTargetBox(NewShipType, 0, -0.1,-0.7,-0.9, 0.7,0.6,0.88)
NewShipType.useLayoutBounds=1
NewShipType.layoutBoundX=400
NewShipType.layoutBoundY=90
NewShipType.layoutBoundZ=1000
NewShipType.layoutCenterX=-20
NewShipType.layoutCenterY=0
NewShipType.layoutCenterZ=50
NewShipType.dustCloudDamageTime=280
NewShipType.nebulaDamageTime=500
NewShipType.MinimalFamilyToFindPathAround="MotherShip"
NewShipType.BuildFamily="Shipyard_Hgn"
NewShipType.AttackFamily="BigCapitalShip"
NewShipType.DockFamily="Shipyard"
NewShipType.AvoidanceFamily="MotherShip"
NewShipType.DisplayFamily="Capital"
NewShipType.AutoFormationFamily="SuperCap"
NewShipType.CollisionFamily="Big"
NewShipType.ArmourFamily=getShipStr(NewShipType, "ArmourFamily", "HeavyArmour")
setSupplyValue(NewShipType, "Capital", 1.0)
setSupplyValue(NewShipType, "Shipyard", 1.0)
NewShipType.AttackPriorityMultiplier=0.96
NewShipType.fighterValue=0
NewShipType.corvetteValue=0
NewShipType.frigateValue=20
NewShipType.neutralValue=5
NewShipType.antiFighterValue=5
NewShipType.antiCorvetteValue=0
NewShipType.antiFrigateValue=0
NewShipType.totalValue=25
NewShipType.buildCost=3200
NewShipType.buildTime=70
NewShipType.buildPriorityOrder=21
NewShipType.retaliationRange=6500
NewShipType.retaliationDistanceFromGoal=160
NewShipType.visualRange=1000
NewShipType.prmSensorRange=5000
NewShipType.secSensorRange=6000
NewShipType.detectionStrength=1
NewShipType.TOScale=1
NewShipType.TOGroupScale=1
NewShipType.TOGroupMergeSize=0
NewShipType.mouseOverMinFadeSize=0.085
NewShipType.mouseOverMaxFadeSize=0.15
NewShipType.healthBarStyle=2
NewShipType.nlips=0
NewShipType.nlipsRange=10000
NewShipType.nlipsFar=0
NewShipType.nlipsFarRange=0
NewShipType.SMRepresentation="Mesh"
NewShipType.meshRenderLimit=35000
NewShipType.dotRenderLimit=10
NewShipType.visibleInSecondary=1
NewShipType.goblinsStartFade=3200
NewShipType.goblinsOff=3200
NewShipType.upLOD=6150
NewShipType.downLOD=6165
NewShipType.minimumZoomFactor=0.75
NewShipType.selectionLimit=150000
NewShipType.preciseSelectionLimit=15000
NewShipType.preciseATILimit=0
NewShipType.selectionPriority=75
NewShipType.militaryUnit=0
NewShipType.alternativeHyperspaceTime = 9.5
NewShipType.SMHighlightDistMin=30000
NewShipType.SMHighlightDistMax=50000
addAbility(NewShipType,"MoveCommand",1,0);
addAbility(NewShipType,"CanDock",1,0);
NewShipType.dockTimeBetweenTwoFormations=1
NewShipType.dockTimeBeforeStart=2
NewShipType.dockNrOfShipsInDockFormation=1
NewShipType.dockFormation="delta"
NewShipType.queueFormation="dockline"
NewShipType.dontDockWithOtherRaceShips=1
NewShipType.ignoreRaceWhenDocking=0
addAbility(NewShipType,"CanLaunch");
NewShipType.launchTimeBetweenTwoFormations=1
NewShipType.launchTimeBeforeStart=2
NewShipType.launchNrOfShipsInDockFormation=1
NewShipType.launchFormation="delta"
NewShipType.canJoinStrikeGroup=0
addAbility(NewShipType,"ShipHold",1,resourceRate,100,"rallypoint","Fighter,Corvette,Utility",25,{SuperCap="2000"},{Frigate="800"},{Fighter="36"},{Corvette="75"});
addAbility(NewShipType,"ParadeCommand",1);
addAbility(NewShipType,"WaypointMove");
if hypBool == 1 then
	addAbility(NewShipType,"HyperSpaceCommand",0,5,1000,3200,0,3);
end
addAbility(NewShipType,"CanAttack",1,1,0,0,0.35,1,"Fighter, Fighter_hw1, Corvette, Corvette_hw1, Frigate, SmallCapitalShip, BigCapitalShip, Utility","JustShoot");
addAbility(NewShipType,"GuardCommand",1,3000,1000);
addAbility(NewShipType,"CanBuildShips",1,"Fighter_Hgn, Corvette_Hgn, Frigate_Hgn, SuperCap_Hgn, Utility_Hgn, Platform_Hgn, SubSystem_Hgn, SubSystemLarge_Hgn, Battlecruiser_Hgn, Shipyard_Hgn, Probe_Hgn","Utility, Fighter, Corvette, Frigate, Capital, Platform, SubSystemModule, SubSystemSensors");
addAbility(NewShipType,"CanBeCaptured",300,0.1);
addAbility(NewShipType,"CanBeRepaired");
addAbility(NewShipType,"CloakAbility",0,2,2000,4000,3,100,1,1000);
if hypBool == 1 then
	addAbility(NewShipType,"HyperspaceInhibitorAbility",0,12000);
end
LoadSharedModel(NewShipType,"Hgn_Shipyard");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense1","Weapon_HullDefense1");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense2","Weapon_HullDefense2");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense3","Weapon_HullDefense3");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense4","Weapon_HullDefense4");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense5","Weapon_HullDefense5");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense6","Weapon_HullDefense6");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense7","Weapon_HullDefense7");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense8","Weapon_HullDefense8");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense9","Weapon_HullDefense9");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense10","Weapon_HullDefense10");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense11","Weapon_HullDefense11");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGunSide","Weapon_HullDefense12","Weapon_HullDefense12");
addShield(NewShipType,"EMP",10000,20);
StartShipHardPointConfig(NewShipType,"Production 1","HardpointProduction1","System","Production","Destroyable","","Hgn_MS_Production_Fighter","","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 2","HardpointProduction2","System","Production","Destroyable","",corvetteprodModule,"","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 3","HardpointProduction3","System","Production","Destroyable","",frigateprodModule,"Hgn_MS_Production_FrigateAdvanced","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 4","HardpointProduction4","System","Production","Destroyable","",capshipprodModule,"","","","","","","");
StartShipHardPointConfig(NewShipType,"Generic 1","HardpointGeneric1","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 2","HardpointGeneric2","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 3","HardpointGeneric3","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 4","HardpointGeneric4","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 5","HardpointGeneric5","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 6","HardpointGeneric6","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Sensors 1","HardpointSensors1","System","Sensors","Destroyable","",hyperdetectModule,"Hgn_MS_Sensors_AdvancedArray","Hgn_MS_Sensors_DetectCloaked","","","","","");
StartShipHardPointConfig(NewShipType,"Engine","Hardpoint_Engine","System","Innate","Damageable","Hgn_SY_Innate_Engine","","","","","","","","");
StartShipHardPointConfig(NewShipType,"Resource","Hardpoint_Resource","System","Innate","Damageable",resourceModule,"","","","","","","","");
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg03",1, 0.75,0,0,0, 0,0,0,50,0,0,0,200,0,0,0,50,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg02",1, 0.05,0,0,0, 30,-20,200,25,300,150,85,50,0,0,0,85,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg04",1, 0.05,0,0,0, 50,40,-150,50,65,25,5,25,0,0,0,95,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg05",1, 0.05,0,0,0, 25,10,-100,30,35,75,62,75,0,0,0,80,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg01",1, 0.05,0,0,0, 60,30,150,25,35,125,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml01",1, 0.01,0,0,0, 80,125,60,75,125,80,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml02",1, 0.01,0,0,0, 25,0,-125,50,80,35,120,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml03",1, 0.01,0,0,0, 60,95,200,50,15,200,20,125,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml04",1, 0.01,0,0,0, 10,60,-300,25,35,80,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml05",1, 0.01,0,0,0, 60,10,30,75,35,25,65,75,0,0,0,60,0,0,0,50);
NewShipType.battleScarCoverage=4
NewShipType.battleScarBudgetLow = 1200
NewShipType.battleScarBudgetNext = 1800
NewShipType.sobDieTime=8
NewShipType.sobSpecialDieTime=1
NewShipType.specialDeathSpeed=40
NewShipType.chanceOfSpecialDeath=0
NewShipType.deadSobFadeTime=0.1
NewShipType.trailLinger=2
NewShipType.canJoinStrikeGroup=0
setEngineBurn(NewShipType,9,0.2,0.5,300,1.02,0.1,0.25,380);
loadShipPatchList(NewShipType,"data:sound/sfx/ship/Hiigaran/Megaship/",0,"Engines/HShipYardEng","",1,"Ambience/HShipYardAmb","");
NewShipType.canSurround=1
