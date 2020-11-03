if hypBool == 1 then
	hyperspaceModule = "Vgr_C_Module_Hyperspace"
	if rchBool == 1 then
		hyperinhibitModule = "vgr_c_module_hyperspaceinhibitor_rch1"
	else
		hyperinhibitModule = "vgr_c_module_hyperspaceinhibitor_rch0"
	end
else
	hyperspaceModule = ""
	hyperinhibitModule = ""
end
if rchBool == 1 then
	firecontrolModule = "vgr_c_module_firecontrol_rch1"
	cloakgenModule = "vgr_c_module_cloakgenerator_rch1"
else
	firecontrolModule = "vgr_c_module_firecontrol_rch0"
	cloakgenModule = "vgr_c_module_cloakgenerator_rch0"
end

NewShipType = StartShipConfig()
NewShipType.displayedName="$1632"
NewShipType.sobDescription="$1633"
NewShipType.maxhealth=getShipNum(NewShipType, "maxhealth", 192000)
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
NewShipType.defaultROE="Defensive"
NewShipType.defaultStance="Neutral"
NewShipType.paradeData="vgr_carrier_parade"
NewShipType.mass=1000
NewShipType.collisionMultiplier=1
NewShipType.thrusterMaxSpeed=79
NewShipType.mainEngineMaxSpeed=79
NewShipType.rotationMaxSpeed=6
NewShipType.thrusterAccelTime=6
NewShipType.thrusterBrakeTime=2
NewShipType.mainEngineAccelTime=6
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
NewShipType.slideMoveRange=350
NewShipType.controllerType="Ship"
NewShipType.tumbleStaticX=2
NewShipType.tumbleStaticY=4
NewShipType.tumbleStaticZ=3
NewShipType.tumbleDynamicX=1
NewShipType.tumbleDynamicY=2
NewShipType.tumbleDynamicZ=2
NewShipType.tumbleSpecialDynamicX=1
NewShipType.tumbleSpecialDynamicY=2
NewShipType.tumbleSpecialDynamicZ=2
NewShipType.relativeMoveFactor=1
NewShipType.swayUpdateTime=2
NewShipType.swayOffsetRandomX=10
NewShipType.swayOffsetRandomY=10
NewShipType.swayOffsetRandomZ=10
NewShipType.swayBobbingFactor=0
NewShipType.swayRotateFactor=0
setTargetBox(NewShipType, 0, 0.15,-0.5,-0.88, 0.43,0.4,0.9)
NewShipType.useLayoutBounds=1
NewShipType.layoutBoundX=110
NewShipType.layoutBoundY=150
NewShipType.layoutBoundZ=575
NewShipType.layoutCenterX=-20
NewShipType.layoutCenterY=0
NewShipType.layoutCenterZ=25
NewShipType.dustCloudDamageTime=280
NewShipType.nebulaDamageTime=800
NewShipType.MinimalFamilyToFindPathAround="MotherShip"
NewShipType.BuildFamily="Battlecruiser_Vgr"
NewShipType.AttackFamily="BigCapitalShip"
NewShipType.DockFamily="BattleCruiser"
NewShipType.AvoidanceFamily="BattleCruiser"
NewShipType.DisplayFamily="Capital"
NewShipType.AutoFormationFamily="CapShip"
NewShipType.CollisionFamily="Big"
NewShipType.ArmourFamily=getShipStr(NewShipType, "ArmourFamily", "HeavyArmour")
setSupplyValue(NewShipType, "Capital", 1.0)
setSupplyValue(NewShipType, "Battlecruiser", 1.0)
setSupplyValue(NewShipType, "LayoutBattleCruiser", 1.0)
NewShipType.AttackPriorityMultiplier=0.94
NewShipType.fighterValue=0
NewShipType.corvetteValue=0
NewShipType.frigateValue=80
NewShipType.neutralValue=30
NewShipType.antiFighterValue=0
NewShipType.antiCorvetteValue=5
NewShipType.antiFrigateValue=60
NewShipType.totalValue=110
NewShipType.buildCost=4000
NewShipType.buildTime=280
NewShipType.buildPriorityOrder=40
NewShipType.retaliationRange=6500
NewShipType.retaliationDistanceFromGoal=160
NewShipType.visualRange=1000
NewShipType.prmSensorRange=7000
NewShipType.secSensorRange=8000
NewShipType.detectionStrength=1
NewShipType.TOIcon="Arrow"
NewShipType.TOScale=1
NewShipType.TODistanceFade0=14000
NewShipType.TODistanceDisappear0=12000
NewShipType.TODistanceFade1=5500
NewShipType.TODistanceDisappear1=5000
NewShipType.TODistanceFade2=12000
NewShipType.TODistanceDisappear2=35000
NewShipType.TOGroupScale=1
NewShipType.TOGroupMergeSize=0
NewShipType.mouseOverMinFadeSize=0.045
NewShipType.mouseOverMaxFadeSize=0.1
NewShipType.healthBarStyle=2
NewShipType.nlips=0
NewShipType.nlipsRange=75000
NewShipType.nlipsFar=0
NewShipType.nlipsFarRange=0
NewShipType.SMRepresentation="Mesh"
NewShipType.meshRenderLimit=21000
NewShipType.dotRenderLimit=10
NewShipType.visibleInSecondary=1
NewShipType.goblinsStartFade=3200
NewShipType.goblinsOff=3200
NewShipType.upLOD=6150
NewShipType.downLOD=6165
NewShipType.minimumZoomFactor=0.5
NewShipType.selectionLimit=150000
NewShipType.preciseSelectionLimit=7500
NewShipType.preciseATILimit=0
NewShipType.selectionPriority=75
NewShipType.militaryUnit=1
NewShipType.SMHighlightDistMin=20000
NewShipType.SMHighlightDistMax=25000
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
NewShipType.strikeGroupRadius=200
addAbility(NewShipType,"ShipHold",1,0,50,"rallypoint","Fighter, Corvette",25,{Fighter="2"},{Corvette="24"});
addAbility(NewShipType,"ParadeCommand",1);
addAbility(NewShipType,"WaypointMove");
if hypBool == 1 then
	addAbility(NewShipType,"HyperSpaceCommand",0,2,600,1200,0,3);
end
addAbility(NewShipType,"CanAttack",1,1,0,1,0.35,1.2,"Capturer,Frigate,SmallCapitalShip,BigCapitalShip,Mothership,Utility,,,,,Corvette, Corvette_hw1, Fighter, Fighter_hw1","Frontal",
{Fighter="MoveToTargetAndShoot"},
{Fighter_hw1="MoveToTargetAndShoot"},
{Corvette="MoveToTargetAndShoot"},
{Corvette_hw1="MoveToTargetAndShoot"},
{Frigate="Frontal"},
{Munition="MoveToTargetAndShoot"},
{SubSystem="FrontalVsSubSystem"});
addAbility(NewShipType,"GuardCommand",1,3000,1000);
addAbility(NewShipType,"CanBuildShips",1,"SubSystem_Vgr","SubSystemModule");
addAbility(NewShipType,"CanBeCaptured",160,0.1,"CapCap");
addAbility(NewShipType,"CanBeSalvageCaptured",0,1,0,0,1,"SalCap"); 
addAbility(NewShipType,"CanBeRepaired","RepCap");
addAbility(NewShipType,"CloakAbility",0,2,2000,4000,3,100,1,1000);
addAbility(NewShipType,"RetireAbility",1,1);
if hypBool == 1 then
	addAbility(NewShipType,"HyperspaceInhibitorAbility",0,10500);
end
LoadSharedModel(NewShipType,"Vgr_BattleCruiser");
StartShipWeaponConfig(NewShipType,"Vgr_BCForwardWeapon","Weapon_BCUberPulse","Weapon_BCUberPulse");
StartShipWeaponConfig(NewShipType,"Vgr_HullDefenseGun","Weapon_HullD1","Fire_Missile");
StartShipWeaponConfig(NewShipType,"Vgr_HullDefenseGun","Weapon_HullD2","Fire_Missile");
StartShipWeaponConfig(NewShipType,"Vgr_HullDefenseGun","Weapon_HullD3","Fire_Missile");
StartShipWeaponConfig(NewShipType,"Vgr_HullDefenseGun","Weapon_HullD4","Fire_Missile");
StartShipWeaponConfig(NewShipType,"Vgr_HullDefenseGun","Weapon_HullD5","Fire_Missile");
StartShipWeaponConfig(NewShipType,"Vgr_BCLaser","Weapon_BCHeavyLaser1","");
StartShipWeaponConfig(NewShipType,"Vgr_BCLaser","Weapon_BCHeavyLaser2","");
StartShipWeaponConfig(NewShipType,"Vgr_BCLaser","Weapon_BCHeavyLaser3","");
StartShipWeaponConfig(NewShipType,"Vgr_BCLaser","Weapon_BCHeavyLaser4","");
addShield(NewShipType,"EMP",10000,20);
StartShipHardPointConfig(NewShipType,"Engine","Hardpoint_Engine","System","Innate","Damageable","Vgr_BattleCruiserEngine","","","","","","","","");
StartShipHardPointConfig(NewShipType,"Heavy Fusion Missile Launcher","Weapon_MissileBattery","Weapon","Innate","Damageable","Vgr_HeavyFusionMissileLauncherBC","","","","","","","","");
StartShipHardPointConfig(NewShipType,"Generic 1","HardpointGeneric1","System","Generic","Destroyable","",hyperspaceModule,cloakgenModule,hyperinhibitModule,firecontrolModule,"","","","");
StartShipHardPointConfig(NewShipType,"Generic 2","HardpointGeneric2","System","Generic","Destroyable","",hyperspaceModule,cloakgenModule,hyperinhibitModule,firecontrolModule,"","","","");
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg03",1, 0.40,0,0,0, 0,0,0,50,0,0,0,200,0,0,0,50,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg02",1, 0.19,0,0,0, 30,-20,200,25,300,150,85,50,0,0,0,85,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg04",1, 0.13,0,0,0, 50,40,-150,50,65,25,5,25,0,0,0,95,0,0,0,50);
SpawnSalvageOnDeath(NewShipType,"Slv_Chunk_Lrg01",1, 0.10,0,0,0, 60,30,150,25,35,125,65,75,0,0,0,60,0,0,0,50);
NewShipType.battleScarCoverage=4
NewShipType.battleScarBudgetLow = 800
NewShipType.battleScarBudgetNext = 1200
NewShipType.sobDieTime=9.6
NewShipType.sobSpecialDieTime=1
NewShipType.specialDeathSpeed=40
NewShipType.chanceOfSpecialDeath=0
NewShipType.deadSobFadeTime=0.01
NewShipType.trailLinger=2
setEngineGlow(NewShipType,1,1,1.02,20,500,200,1,{0.92, 0.21, .09, 0.25});
loadShipPatchList(NewShipType,"data:sound/sfx/ship/Vaygr/Carrier/",0,"Engines/VDestroyerEng","",1,"Ambience/VBattleCrusierAmb","");
loadLatchPointList(NewShipType,"SalCap","SalvagePoint1","SalvagePoint2","SalvagePoint3","SalvagePoint4","SalvagePoint5","SalvagePoint6");	
loadLatchPointList(NewShipType,"CapCap","CapturePoint0","CapturePoint2","CapturePoint3","CapturePoint4");
loadLatchPointList(NewShipType,"RepCap","RepairPoint0","RepairPoint1","RepairPoint2","RepairPoint3","RepairPoint4");									 
NewShipType.minFalloffDamageDist=400
NewShipType.maxFalloffDamageDist=400*1.5
NewShipType.maxFalloffScuttleDamageDist=400*3
NewShipType.explosiveScuttleDamageOnDeath=3725
NewShipType.maxFalloffForce=500*10
NewShipType.explosiveDamageOnDeath=745
NewShipType.radiusDamageEvadeMod=1.1														 
NewShipType.canSurround=1
