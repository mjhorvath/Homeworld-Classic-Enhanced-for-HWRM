resourceModule = ""
capitalModule = "hw1_production_capital"

if resBool == 1 then
	resourceModule = "Tai_MothershipResource"
end
if carBool == 1 then
	capitalModule = ""
end

NewShipType = StartShipConfig()
NewShipType.displayedName="$1627"
NewShipType.sobDescription="$10043"
NewShipType.maxhealth=getShipNum(NewShipType, "maxhealth", 420000)
NewShipType.regentime=1400
NewShipType.minRegenTime=1400
NewShipType.sideArmourDamage=1.0
NewShipType.rearArmourDamage=1.0
setTacticsMults(NewShipType, "ENGINEACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "THRUSTERACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "ROTATION", 0.95, 1.05, 1.0)
setTacticsMults(NewShipType, "ROTATIONACCEL", 1.10, 0.90, 1.0)
setTacticsMults(NewShipType, "FIRERATE", 0.98, 1.02, 1.0)
NewShipType.isTransferable=0
NewShipType.addedUnitCaps=101
NewShipType.paradeData="tai_mothership_parade"
NewShipType.defaultROE="Defensive"
NewShipType.defaultStance="Neutral"
NewShipType.mass=2000
NewShipType.collisionMultiplier=1
NewShipType.thrusterMaxSpeed=48
NewShipType.mainEngineMaxSpeed=48
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
setTargetBox(NewShipType, 0, -0.88,-0.7,-0.75, 0.99,0.75,0.28)
NewShipType.useLayoutBounds=1
NewShipType.layoutBoundX=1150
NewShipType.layoutBoundY=200
NewShipType.layoutBoundZ=500
NewShipType.layoutCenterX=-280
NewShipType.layoutCenterY=-20
NewShipType.layoutCenterZ=-10
NewShipType.dustCloudDamageTime=280
NewShipType.nebulaDamageTime=800
NewShipType.MinimalFamilyToFindPathAround="MotherShip"
NewShipType.BuildFamily="Flagship_Tai"
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
NewShipType.buildTime=300
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
NewShipType.upLOD=14150
NewShipType.downLOD=14165
NewShipType.minimumZoomFactor=0.5
NewShipType.selectionLimit=150000
NewShipType.preciseSelectionLimit=15000
NewShipType.preciseATILimit=100000
NewShipType.selectionPriority=75
NewShipType.militaryUnit=0
NewShipType.blobName="$1575"
NewShipType.blobNamePriority=100
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
NewShipType.dontDockWithOtherRaceShips=0
NewShipType.ignoreRaceWhenDocking=0
NewShipType.canBeDockForSalvageCapture=1
addAbility(NewShipType,"CanLaunch");
NewShipType.launchTimeBetweenTwoFormations=1
NewShipType.launchTimeBeforeStart=2
NewShipType.launchNrOfShipsInDockFormation=1
NewShipType.launchFormation="delta"
NewShipType.canJoinStrikeGroup=0
addAbility(NewShipType,"ShipHold",1,250,200,"rallypoint","Fighter,Corvette,Utility",100,
{SuperCap="2000"},
{Frigate="800"},
{Fighter="36"},
{Corvette="340"},
{Utility="175"});
addAbility(NewShipType,"WaypointMove");
if hypBool == 1 then
	addAbility(NewShipType,"HyperSpaceCommand",1,1.1,1000,1500,0,4);
end
addAbility(NewShipType,"CanAttack",1,1,0,0,0.35,1,"Fighter_hw1, Fighter, Swarmer, Corvette_hw1, Corvette, Capturer, Frigate, SmallCapitalShip, BigCapitalShip, Utility, Mothership","JustShoot");
addAbility(NewShipType,"CanBuildShips",1,"Fighter_Tai, Corvette_Tai, Frigate_Tai, SuperCap_Tai, Resource_Tai, NonCombat_Tai","Fighter, Corvette, Frigate, Capital, Resource, NonCombat");
addAbility(NewShipType,"CanBeCaptured",300,0.5);
addAbility(NewShipType,"CanBeRepaired");
addCustomCode(NewShipType,"data:Ship/Tai_Mothership/Tai_Mothership.lua","Load_Tai_Mothership","Create_Tai_Mothership","Update_Tai_Mothership","Destroy_Tai_Mothership","Tai_Mothership",2)
LoadSharedModel(NewShipType,"Tai_Mothership");
addShield(NewShipType,"EMP",10000,20);
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense1","");
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense2","");
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense3","");
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense4","");
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense5","");
StartShipWeaponConfig(NewShipType,"HW1_MothershipGun","Weapon_HullDefense6","");
StartShipHardPointConfig(NewShipType,"Engine","Hardpoint_Engine","System","Innate","Damageable","Tai_MothershipEngine","","","","","","","","");
StartShipHardPointConfig(NewShipType,"Resource","Hardpoint_Resource","System","Innate","Damageable",resourceModule,"","","","","","","","");
StartShipHardPointConfig(NewShipType,"Fighter Production","Hardpoint_Resource","System","Production","Indestructible","","hw1_production_fighter","","","","","","","");
StartShipHardPointConfig(NewShipType,"Corvette Production","Hardpoint_Resource","System","Production","Indestructible","","hw1_production_corvette","","","","","","","");
StartShipHardPointConfig(NewShipType,"Frigate Production","Hardpoint_Resource","System","Production","Indestructible","","hw1_production_frigate","","","","","","","");
StartShipHardPointConfig(NewShipType,"CapShip Production","Hardpoint_Resource","System","Production","Indestructible","",capitalModule,"","","","","","","");
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
loadShipPatchList(NewShipType,"data:sound/sfx/ship/",0,"Hiigaran/MegaShip/Engines/HMothershipEng","",1,"Hiigaran/MegaShip/Ambience/HMotherShipAmb","",3,"Megaliths/RandomEmit/HANGAR_EMITTERS","marker3");
setConcurrentBuildLimit(NewShipType,0,2);
NewShipType.minFalloffDamageDist=1000
NewShipType.maxFalloffDamageDist=1000*1.5
NewShipType.maxFalloffScuttleDamageDist=1000*3
NewShipType.explosiveScuttleDamageOnDeath=3302*3
NewShipType.maxFalloffForce=500*10
NewShipType.explosiveDamageOnDeath=660*3													 
NewShipType.hideNormalAttackUICooldown=1
NewShipType.canSurround=1