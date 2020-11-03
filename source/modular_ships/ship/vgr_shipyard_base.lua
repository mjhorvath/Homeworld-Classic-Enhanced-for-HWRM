if hypBool == 1 then
	hyperdetectModule = "Vgr_MS_Sensors_DetectHyperspace"
	hyperspaceModule = "Vgr_MS_Module_Hyperspace"
	if rchBool == 1 then
		hyperinhibitModule = "vgr_ms_module_hyperspaceinhibitor_rch1"
	else
		hyperinhibitModule = "vgr_ms_module_hyperspaceinhibitor_rch0"
	end
else
	hyperdetectModule = ""
	hyperspaceModule = ""
	hyperinhibitModule = ""
end
if resBool == 1 then
	resourceModule = "Vgr_MS_Innate_Resource"
	resourceRate = 40
else
	resourceModule = ""
	resourceRate = 0
end
if rchBool == 1 then
	researchModule = "Vgr_MS_Module_Research"
	firecontrolModule = "vgr_ms_module_firecontrol_rch1"
	cloakgenModule = "vgr_ms_module_cloakgenerator_rch1"
else
	researchModule = ""
	firecontrolModule = "vgr_ms_module_firecontrol_rch0"
	cloakgenModule = "vgr_ms_module_cloakgenerator_rch0"
end
if carBool == 0 then
	capitalModule = "Vgr_MS_Production_CapShip"
else
	capitalModule = ""
end

NewShipType = StartShipConfig()
NewShipType.displayedName="$1628"
NewShipType.sobDescription="$1629"
NewShipType.maxhealth=getShipNum(NewShipType, "maxhealth", 175000)
NewShipType.regentime=2000
NewShipType.minRegenTime=2000
NewShipType.sideArmourDamage = getShipNum(NewShipType, "sideArmourDamage", 1.0)
NewShipType.rearArmourDamage = getShipNum(NewShipType, "rearArmourDamage", 1.0)
setTacticsMults(NewShipType, "ENGINEACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "THRUSTERACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "ROTATION", 0.95, 1.05, 1.0)
setTacticsMults(NewShipType, "ROTATIONACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "FIRERATE", 0.98, 1.02, 1.0)
NewShipType.isTransferable=0
NewShipType.addedUnitCaps=101
NewShipType.paradeData="vgr_mothership_parade"
NewShipType.defaultROE="Defensive"
NewShipType.defaultStance="Neutral"
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
NewShipType.rotationBrakeTime=0.5
NewShipType.thrusterUsage=1
NewShipType.accelerationAngle=30
NewShipType.mirrorAngle=0
NewShipType.secondaryTurnAngle=0
NewShipType.maxBankingAmount=10
NewShipType.descendPitch=10
NewShipType.goalReachEpsilon=25
NewShipType.slideMoveRange=600
NewShipType.controllerType="Ship"
NewShipType.tumbleStaticX = 0.25
NewShipType.tumbleStaticY = 0.1
NewShipType.tumbleStaticZ = 0.25
NewShipType.tumbleDynamicX = 0
NewShipType.tumbleDynamicY = 0
NewShipType.tumbleDynamicZ = 0
NewShipType.tumbleSpecialDynamicX = 0.1
NewShipType.tumbleSpecialDynamicY = 0.1
NewShipType.tumbleSpecialDynamicZ = 0.1
NewShipType.relativeMoveFactor=1
setTargetBox(NewShipType, 0, -0.47,-0.39,-0.8, 0.6,0.48,0.8)
NewShipType.useLayoutBounds=1
NewShipType.layoutBoundX=300
NewShipType.layoutBoundY=500
NewShipType.layoutBoundZ=1300
NewShipType.dustCloudDamageTime=280
NewShipType.nebulaDamageTime=500
NewShipType.MinimalFamilyToFindPathAround="MotherShip"
NewShipType.BuildFamily="Shipyard_Vgr"
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
NewShipType.frigateValue=15
NewShipType.neutralValue=5
NewShipType.antiFighterValue=5
NewShipType.antiCorvetteValue=0
NewShipType.antiFrigateValue=0
NewShipType.totalValue=20
NewShipType.buildCost=4000
NewShipType.buildTime=85
NewShipType.buildPriorityOrder=20
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
NewShipType.upLOD=7000
NewShipType.downLOD=7015
NewShipType.minimumZoomFactor=0.5
NewShipType.selectionLimit=150000
NewShipType.preciseATILimit=0
NewShipType.preciseSelectionLimit=15000
NewShipType.selectionPriority=75
NewShipType.militaryUnit=0
NewShipType.blobName="$1676"
NewShipType.blobNamePriority=75
NewShipType.SMHighlightDistMin=20000
NewShipType.SMHighlightDistMax=30000
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
addAbility(NewShipType,"ShipHold",1,resourceRate,100,"rallypoint","Fighter, Corvette, Utility",35,{SuperCap="2000"},{Frigate="800"},{Fighter="2"},{Corvette="24"},{Utility="88"});
addAbility(NewShipType,"ParadeCommand",1);
addAbility(NewShipType,"WaypointMove");
if hypBool == 1 then
	addAbility(NewShipType,"HyperSpaceCommand",0,3,1200,2200,0,3);
end
addAbility(NewShipType,"CanAttack",1,1,0,0,0.35,1,"Fighter, Fighter_hw1, Corvette, Corvette_hw1, Frigate, SmallCapitalShip, BigCapitalShip, Utility","JustShoot");
addAbility(NewShipType,"GuardCommand",1,3000,1000);
addAbility(NewShipType,"CanBuildShips",1,"Fighter_Vgr, Corvette_Vgr, Frigate_Vgr, SuperCap_Vgr, Flagship_Vgr, Utility_Vgr, SubSystem_Vgr, SubSystemLarge_Vgr, Platform_Vgr, Shipyard_Vgr, Battlecruiser_Vgr, Probe_Vgr","Utility, Fighter, Corvette, Frigate, Platform, SubSystemModule, SubSystemSensors, Capital");
addAbility(NewShipType,"CanBeCaptured",300,0.1,"CapCap");
addAbility(NewShipType,"CanBeSalvageCaptured",0,1,0,0,1,"SalCap"); 
addAbility(NewShipType,"CanBeRepaired","RepCap");
addAbility(NewShipType,"CloakAbility",0,2,2000,4000,3,100,1,1000);
if hypBool == 1 then
	addAbility(NewShipType,"HyperspaceInhibitorAbility",0,10500);
end
LoadSharedModel(NewShipType,"vgr_shipyard");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense2","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense3","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense4","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense5","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense6","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense7","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense8","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense9","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense10","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense11","");
StartShipWeaponConfig(NewShipType,"Hgn_MSHullDefenseGun","Weapon_HullDefense12","");
addShield(NewShipType,"EMP",10000,20);
StartShipHardPointConfig(NewShipType,"Production 1","HardPoint_Production1","System","Production","Destroyable","","Vgr_MS_Production_Fighter","","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 2","HardPoint_Production2","System","Production","Destroyable","","Vgr_MS_Production_Corvette","","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 3","HardPoint_Production3","System","Production","Destroyable","","Vgr_MS_Production_Frigate","","","","","","","");
StartShipHardPointConfig(NewShipType,"Production 4","HardPoint_Production4","System","Production","Destroyable","",capitalModule,"","","","","","","");
StartShipHardPointConfig(NewShipType,"Generic 1","HardPoint_System1","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Generic 2","HardPoint_System2","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Generic 3","HardPoint_System3","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Generic 4","HardPoint_System4","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Generic 5","HardPoint_System5","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Generic 6","HardPoint_System6","System","Generic","Destroyable","",researchModule,cloakgenModule,"Vgr_MS_Module_PlatformControl",firecontrolModule,hyperinhibitModule,hyperspaceModule,"Vgr_MS_Module_BuildSpeed","");
StartShipHardPointConfig(NewShipType,"Sensors1","HardPoint_Sensors","System","Sensors","Destroyable","","Vgr_MS_Sensors_AdvancedArray",hyperdetectModule,"Vgr_MS_Sensors_DetectCloaked","","","","","");
StartShipHardPointConfig(NewShipType,"Engine","Hardpoint_Engine","System","Innate","Damageable","Vgr_SY_Innate_Engine","","","","","","","","");
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
NewShipType.sobDieTime=16
NewShipType.sobSpecialDieTime=1
NewShipType.specialDeathSpeed=40
NewShipType.chanceOfSpecialDeath=0
NewShipType.deadSobFadeTime=0.1
NewShipType.trailLinger=2
setEngineBurn(NewShipType,12,0.2,0.5,420,1.02,0.1,0.25,480);
setEngineGlow(NewShipType,1,1,1.02,20,300,50,1.5,{0.92, 0.21, .09, 0.25});
loadShipPatchList(NewShipType,"data:sound/sfx/ship/",0,"Vaygr/MegaShip/Engines/VShipYardEng","",1,"Vaygr/MegaShip/Ambience/VShipYardAmb","",3,"Megaliths/RandomEmit/HANGAR_EMITTERS","NavLight_Bay3");
loadLatchPointList(NewShipType,"SalCap","SalvagePoint1","SalvagePoint2","SalvagePoint3","SalvagePoint4","SalvagePoint5","SalvagePoint6","SalvagePoint7");	
loadLatchPointList(NewShipType,"CapCap","CapturePoint0","CapturePoint1","CapturePoint2","CapturePoint3","CapturePoint4");
loadLatchPointList(NewShipType,"RepCap","RepairPoint0","RepairPoint1","RepairPoint2","RepairPoint3","RepairPoint4","RepairPoint5","RepairPoint6");
NewShipType.minFalloffDamageDist=800
NewShipType.maxFalloffDamageDist=800*1.5
NewShipType.maxFalloffScuttleDamageDist=800*3
NewShipType.explosiveScuttleDamageOnDeath=2820
NewShipType.maxFalloffForce=500*10
NewShipType.explosiveDamageOnDeath=564		
NewShipType.hideNormalAttackUICooldown=1
NewShipType.canSurround=1
NewShipType.canRetireSubSystems=1
