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
	resourceModule = "Hgn_MS_Innate_Resource"
	resourceRate = 250
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
	capshipprodModule = "Hgn_MS_Production_CapShip"
else
	capshipprodModule = ""
	advancedresearchModule = ""
end

NewShipType = StartShipConfig()
NewShipType.displayedName="$1536"
NewShipType.sobDescription="$1537"
NewShipType.maxhealth=getShipNum(NewShipType, "maxhealth", 240000)
NewShipType.regentime=2100
NewShipType.minRegenTime=2100
NewShipType.sideArmourDamage = getShipNum(NewShipType, "sideArmourDamage", 1.0)
NewShipType.rearArmourDamage = getShipNum(NewShipType, "rearArmourDamage", 1.0)
setTacticsMults(NewShipType, "ENGINEACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "THRUSTERACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "ROTATION", 0.95, 1.05, 1.0)
setTacticsMults(NewShipType, "ROTATIONACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "FIRERATE", 0.98, 1.02, 1.0)
NewShipType.isTransferable=0
NewShipType.addedUnitCaps=101
NewShipType.paradeData="hgn_mothership_parade"
NewShipType.defaultROE="Defensive"
NewShipType.defaultStance="Neutral"
NewShipType.mass=2000
NewShipType.collisionMultiplier=1
NewShipType.thrusterMaxSpeed=40
NewShipType.mainEngineMaxSpeed=40
NewShipType.rotationMaxSpeed=8
NewShipType.thrusterAccelTime=6
NewShipType.thrusterBrakeTime=2
NewShipType.mainEngineAccelTime=6
NewShipType.mainEngineBrakeTime=2
NewShipType.rotationAccelTime=1
NewShipType.rotationBrakeTime=0.2
NewShipType.thrusterUsage=1
NewShipType.accelerationAngle=30
NewShipType.mirrorAngle=0
NewShipType.secondaryTurnAngle=0
NewShipType.maxBankingAmount=2
NewShipType.descendPitch=0.1
NewShipType.goalReachEpsilon=25
NewShipType.slideMoveRange=400
NewShipType.controllerType="Ship"
NewShipType.tumbleStaticX = 2
NewShipType.tumbleStaticY = 3
NewShipType.tumbleStaticZ = 2
NewShipType.tumbleDynamicX = 2
NewShipType.tumbleDynamicY = 2
NewShipType.tumbleDynamicZ = 2
NewShipType.tumbleSpecialDynamicX = 2
NewShipType.tumbleSpecialDynamicY = 2
NewShipType.tumbleSpecialDynamicZ = 2
NewShipType.relativeMoveFactor=1
NewShipType.swayUpdateTime=10
NewShipType.swayOffsetRandomX=10
NewShipType.swayOffsetRandomY=10
NewShipType.swayOffsetRandomZ=10
NewShipType.swayBobbingFactor=0
NewShipType.swayRotateFactor=0
setTargetBox(NewShipType, 0, -0.4,-0.7,-0.7, 0.4,0.7,0.4)
NewShipType.useLayoutBounds=1
NewShipType.layoutBoundX=200
NewShipType.layoutBoundY=1250
NewShipType.layoutBoundZ=330
NewShipType.layoutCenterX=0
NewShipType.layoutCenterY=15
NewShipType.layoutCenterZ=20
NewShipType.dustCloudDamageTime=280
NewShipType.nebulaDamageTime=800
NewShipType.MinimalFamilyToFindPathAround="MotherShip"
NewShipType.BuildFamily="Flagship_Hgn"
NewShipType.AttackFamily="Mothership"
NewShipType.DockFamily="Flagship"
NewShipType.AvoidanceFamily="MotherShip"
NewShipType.DisplayFamily="Capital"
NewShipType.AutoFormationFamily="SuperCap"
NewShipType.CollisionFamily="Big"
NewShipType.ArmourFamily=getShipStr(NewShipType, "ArmourFamily", "HeavyArmour")
setSupplyValue(NewShipType, "Mothership", 1.0)
NewShipType.AttackPriorityMultiplier=0.96
NewShipType.fighterValue=0
NewShipType.corvetteValue=0
NewShipType.frigateValue=30
NewShipType.neutralValue=10
NewShipType.antiFighterValue=0
NewShipType.antiCorvetteValue=0
NewShipType.antiFrigateValue=0
NewShipType.totalValue=40
NewShipType.buildCost=8000
NewShipType.buildTime=1
NewShipType.buildPriorityOrder=10
NewShipType.retaliationRange=6500
NewShipType.retaliationDistanceFromGoal=160
NewShipType.visualRange=1000
NewShipType.prmSensorRange=6500
NewShipType.secSensorRange=8500
NewShipType.detectionStrength=1
NewShipType.TOScale=1
NewShipType.TOGroupScale=1
NewShipType.TOGroupMergeSize=0
NewShipType.mouseOverMinFadeSize=0.15
NewShipType.mouseOverMaxFadeSize=0.25
NewShipType.healthBarStyle=2
NewShipType.nlips=0
NewShipType.nlipsRange=75000
NewShipType.nlipsFar=0
NewShipType.nlipsFarRange=0
NewShipType.SMRepresentation="Mesh"
NewShipType.meshRenderLimit=35000
NewShipType.dotRenderLimit=10
NewShipType.visibleInSecondary=1
NewShipType.goblinsStartFade=3200
NewShipType.goblinsOff=3200
NewShipType.upLOD=7000
NewShipType.downLOD=6500
NewShipType.minimumZoomFactor=0.5
NewShipType.selectionLimit=150000
NewShipType.preciseSelectionLimit=15000
NewShipType.preciseATILimit=100000
NewShipType.selectionPriority=75
NewShipType.militaryUnit=0
NewShipType.blobName="$1575"
NewShipType.blobNamePriority=100
NewShipType.alternativeHyperspaceTime = 9.5
NewShipType.alternativeHyperspaceA="/etg/special/SPECIAL_ABILITIES_HYPERSPACE_IN_MS"
NewShipType.SMHighlightDistMin=20000
NewShipType.SMHighlightDistMax=30000
NewShipType.nbRestrictedHardpoints=1
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
addAbility(NewShipType,"ShipHold",1,resourceRate,200,"rallypoint","Fighter, Corvette, Utility",35,{SuperCap="2000"},{Frigate="800"},{Fighter="3"},{Corvette="32"},{Utility="88"});
addAbility(NewShipType,"WaypointMove");
if hypBool == 1 then
	addAbility(NewShipType,"HyperSpaceCommand",0,1,500,1000,0,3);
end
addAbility(NewShipType,"CanAttack",1,1,0,0,0.35,1,"Fighter, Fighter_hw1, Corvette, Corvette_hw1, Capturer, Frigate, SmallCapitalShip, BigCapitalShip, Utility, Mothership","JustShoot");
addAbility(NewShipType,"CanBuildShips",1,"Fighter_Hgn, Corvette_Hgn, Frigate_Hgn, SuperCap_Hgn, Utility_Hgn, Platform_Hgn, SubSystem_Hgn, SubSystemLarge_Hgn, Shipyard_Hgn, Mover_Hgn, Probe_Hgn","Utility, Fighter, Corvette, Frigate, Capital, Platform, SubSystemModule, SubSystemSensors");
addAbility(NewShipType,"CanBeCaptured",300,0.5);
addAbility(NewShipType,"CanBeRepaired");
addAbility(NewShipType,"CloakAbility",0,2,2000,4000,3,100,1,1000);
if hypBool == 1 then
	addAbility(NewShipType,"HyperspaceInhibitorAbility",0,10500);
end
addCustomCode(NewShipType,"data:Ship/Hgn_Mothership/Hgn_Mothership.lua","","Create_Hgn_Mothership","Update_Hgn_Mothership","","Hgn_Mothership",4)
LoadSharedModel(NewShipType,"Hgn_Mothership");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense1","Weapon_HullDefense1");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense2","Weapon_HullDefense2");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense3","Weapon_HullDefense3");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense4","Weapon_HullDefense4");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense5","Weapon_HullDefense5");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense6","Weapon_HullDefense6");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense7","Weapon_HullDefense7");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense8","Weapon_HullDefense8");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense9","Weapon_HullDefense9");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense10","Weapon_HullDefense10");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense11","Weapon_HullDefense11");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense12","Weapon_HullDefense12");
addShield(NewShipType,"EMP",10000,20);
StartShipHardPointConfig(NewShipType,"Production 1","HardpointProduction1","System","Production","Destroyable","","Hgn_MS_Production_Fighter","","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 2","HardpointProduction2","System","Production","Destroyable","",corvetteprodModule,"","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 3","HardpointProduction3","System","Production","Destroyable","",frigateprodModule,"Hgn_MS_Production_FrigateAdvanced","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 4","HardpointProduction4","System","Production","Destroyable","",capshipprodModule,"Hgn_MS_Production_CapShipAdvanced","","","","","","");
StartShipHardPointConfig(NewShipType,"Generic 1","HardpointGeneric1","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 2","HardpointGeneric2","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 3","HardpointGeneric3","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Generic 4","HardpointGeneric4","System","Generic","Destroyable","",researchModule,hyperspaceModule,"Hgn_MS_Module_PlatformControl",cloakgenModule,hyperinhibitModule,firecontrolModule,advancedresearchModule,"Hgn_MS_Module_BuildSpeed");
StartShipHardPointConfig(NewShipType,"Sensors 1","HardpointSensors1","System","Sensors","Destroyable","",hyperdetectModule,"Hgn_MS_Sensors_AdvancedArray","Hgn_MS_Sensors_DetectCloaked","","","","","");
StartShipHardPointConfig(NewShipType,"MoverConstruction 1","HardpointMover1","System","Generic","Destroyable","","Hgn_MS_Production_CorvetteMover","","","","","","","");
StartShipHardPointConfig(NewShipType,"Engine","Hardpoint_Engine","System","Innate","Damageable","Hgn_MS_Innate_Engine","","","","","","","","");
StartShipHardPointConfig(NewShipType,"Resource","Hardpoint_Resource","System","Innate","Damageable",resourceModule,"","","","","","","","");
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg03",1, 0.34,0,0,0, 0,0,0,50,0,0,0,200,0,0,0,50,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg02",1, 0.13,0,0,0, 30,-20,200,25,300,150,85,50,0,0,0,85,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg04",1, 0.12,0,0,0, 50,40,-150,50,65,25,5,25,0,0,0,95,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg05",1, 0.11,0,0,0, 25,10,-100,30,35,75,62,75,0,0,0,80,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg01",1, 0.10,0,0,0, 60,30,150,25,35,125,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml01",1, 0.06,0,0,0, 80,125,60,75,125,80,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml02",1, 0.05,0,0,0, 25,0,-125,50,80,35,120,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml03",1, 0.04,0,0,0, 60,95,200,50,15,200,20,125,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml04",1, 0.03,0,0,0, 10,60,-300,25,35,80,65,75,0,0,0,60,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Sml05",1, 0.02,0,0,0, 60,10,30,75,35,25,65,75,0,0,0,60,0,0,0,50);
NewShipType.battleScarCoverage=4
NewShipType.battleScarBudgetLow = 1200
NewShipType.battleScarBudgetNext = 1800
NewShipType.sobDieTime=18.17
NewShipType.sobSpecialDieTime=1
NewShipType.specialDeathSpeed=40
NewShipType.chanceOfSpecialDeath=0
NewShipType.deadSobFadeTime=0.01
NewShipType.trailLinger=2
setEngineBurn(NewShipType,9,0.2,0.5,300,1.02,0.1,0.25,380);
setEngineGlow(NewShipType,1,1,1.02,20,450,200,2,{0.27, 0.47, .69, 0.25});
loadShipPatchList(NewShipType,"data:sound/sfx/ship/",0,"Hiigaran/MegaShip/Engines/HMothershipEng","",1,"Hiigaran/MegaShip/Ambience/HMotherShipAmb","",3,"Kushan/MegaShip/Ambience/MotherShip","marker3");
NewShipType.minFalloffDamageDist=1000
NewShipType.maxFalloffDamageDist=1000*1.5
NewShipType.maxFalloffScuttleDamageDist=1000*3
NewShipType.explosiveScuttleDamageOnDeath=3302*3
NewShipType.maxFalloffForce=500*10
NewShipType.explosiveDamageOnDeath=660*3													 
NewShipType.hideNormalAttackUICooldown=1
NewShipType.canSurround=1
NewShipType.canRetireSubSystems=1
