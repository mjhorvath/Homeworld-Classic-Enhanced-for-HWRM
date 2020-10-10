Caption:    Homeworld Classic Enhanced for Homeworld Remastered
Version:    2.4.1
Authors:    Mikali, Luke Moloney (original version of HWC mod) and many, many 
            individual map authors
Created:    2011/11/18
Updated:    2020/10/10
Website:    http://isometricland.net/homeworld/homeworld.php

Steam:      For HWRM
              http://steamcommunity.com/sharedfiles/filedetails/?id=707870413
            For HW2C
              http://steamcommunity.com/sharedfiles/filedetails/?id=401858560
GitHub:     For HWRM
              https://github.com/mjhorvath/Homeworld-Classic-Enhanced-for-HWRM
			For HW2C
              https://github.com/mjhorvath/Homeworld-Classic-Enhanced-for-HW2C
ModDB:      For HWRM
              http://www.moddb.com/mods/homeworld-classic-enhanced-for-hwrm
            For HW2C
              http://www.moddb.com/mods/homeworld-classic-enhanced
Discussion:
            Homeworld Classic Enhanced for HWRM by Mikali
              https://forums.gearboxsoftware.com/t/1525115
            Homeworld Classic Enhanced for HW2C by Mikali
              http://forums.relicnews.com/showthread.php?263886
            Homeworld Classic Rebalance by Mikali
              http://forums.relicnews.com/showthread.php?t=22972
            Converted HW1 maps by Mikali
              http://forums.relicnews.com/showthread.php?t=81821
            Gameplay Enhanced by Mikali
              http://forums.relicnews.com/showthread.php?t=111559
            Homeworld Classic by Luke Moloney
              http://forums.relicnews.com/showthread.php?t=22748


================================================================================


DESCRIPTION
This mod is a port of my Homeworld Classic Enhanced mod for Homeworld 2 
Classic. It combines my HW Classic Rebalance and Gameplay Enhanced HW2C mods 
into a single collection, providing you with a greater number of gameplay 
options than can be found in either of the other mods alone. Development of 
those earlier mods has stopped in favor of this one. This mod also includes a 
collection of almost 1500 Homeworld and Homeworld: Cataclysm maps converted to 
work with Homeworld Remastered.

INSTALLATION
Installation is done by subscribing to the mod on Steam Workshop if you have 
the Steam version of the game. For the GOG.com or other version, extract this 
ZIP archive and copy the "DataHWCE" folder to your "Homeworld Remastered" 
directory, adding "-moddatapath DataHWCE -overrideBigFile -luatrace -traceHODs" 
to your desktop shortcut's "Target" field. I recommend also installing the 2.3 
Players Patch mod beforehand. The installation method for the 2.3 Players Patch 
mod depends on the version of the mod. (E.g. the Steam version, the BIG file 
version, or loose files and folders.)

DOCUMENTATION
An extended online version of this documentation (as well as the mod's source 
code) can be found on GitHub at the following address if the text does not 
already appear below.

https://github.com/mjhorvath/Homeworld-Classic-Enhanced-for-HWRM


================================================================================


START WITH/MULTIPLAYER MAPS
Start with either:

1) A mothership and carrier (as per normal HWRM)
2) Just a carrier (as per HW1C's "Carrier Only" rule)
3) The "HW1C Map Default" setting

This last setting grants you the selection of ships designed into the level by 
the original HW1C level author. When playing with the "HW1C Map Default" 
setting, make sure to select the same race as is set for your position within 
the level file. You can see which race is set for your position by looking 
along the bottom row of the thumbnail image in game setup. The player races are 
listed in order from left to right. When you see "Kus" it means you should pick 
the Kushan race. When you see "Tai" it means you should pick the Taiidan race. 
"Som" means Somtaaw, but in this case pick the Hiigaran race instead. Note that 
player order is determined by the "Slot" option in the game setup screen, not 
by the order in which people appear in the lobby. Lastly, the SPECIAL FLEETS 
mode supercedes the START WITH setting. So, enabling SPECIAL FLEETS mode will 
automatically override anything you set here.

You can find a reference sheet listing all of the maps, as well as my personal 
recommendations, at the following URL:

http://isometricland.net/homeworld/HWR_HWClassicMaps_Reference.html

There is also a spreadsheet you can look at within the archive itself. Further, 
cleaned-up and "fixed" versions (e.g. so they can pass through my converter) of 
the original HW1C maps are also contained within the game files; and a HW1C-to-
HWRM map conversion tool is available for download on my personal website:

http://isometricland.net/homeworld/homeworld.php

These maps have their own readme file and change log contained within the game 
files. Older versions of these maps can be found in the Homeworld 2 Classic 
version of this mod.

STARTING RESOURCES
This option can be set to Low (1000RUs), Medium (3000RUs) and High (10000RUs). 
Resourcing can also be completely disabled using the last setting, in which 
case even your resource collectors will be removed.

RESOURCE INJECTIONS
Select whether RUs are injected into your coffers every x number of seconds, or 
at the beginning of play, as per HW1C.

BOUNTIES
Receive a certain number of RUs for every ship you kill as per HW1C. Bigger 
ships mean more RUs. If you're losing you'll get more RUs too. Press the "P" 
key to see the current bounty levels.

RESEARCH
Turn research on/off as per HW1C. With research turned off you have all tech-
nologies at your disposal at the start of play without having to research them. 
Note that the Hiigaran Advanced Research Module has been eliminated in this 
mode in order to balance the various races. You also no longer need an Advanced 
Research Module in order to build a Fire Control Tower.

NOTE THAT TURNING RESEARCH OFF ALSO TURNS BENTUSI ROULETTE OFF.

CRATES
As per HW1C, every x number of seconds a magical crate will appear containing 
either a ship that you get to keep, some RUs that you get to spend, or some 
technological advancement that makes you more powerful.

HYPERSPACE
This mode enables/disables hyperspace technologies for all players as per HW1C. 
Note that this mode produces a lot of slowdown until I can get it fixed, so you 
may need a beefy CPU in order to play with this setting turned on. In order to 
balance the various races, I made it possible for Hiigaran and Vaygr shipyards 
to be built without a hyperspace module when this mode is turned on.

WIN CONDITION
1) HWRM Normal: The default setting used in HWRM. A player is killed if he/she 
   has no more production ships left. I call this mode Kill Player Production.
2) Kill Team Production: All players on a team are killed if there are no team 
   members with production ships left.
3) Kill All Enemy Ships: All players on a team are killed if there are no team 
   members with any ships of any kind left.
4) Destroy Mothership: A player is killed if his/her mothership is destroyed. 
5) Capture Capship: A player is killed if one of his/her capital ships is 
   captured.
6) Quit Manually: The game doesn't end until everyone decides to quit and leave 
   the game.

Note that the "Destroy Mothership" rule obviously won't work well with the 
"carrier only" start condition.

DEFINED ROLES
In this game-mode, one player controls production, capital ships and probes; 
another player controls fighters and corvettes; and another player controls 
resourcing, frigates and platforms. Only one player on each team can choose the 
"Production/Capital" role at a time. The remaining roles can be freely divided 
among the remaining players on the team. Also, if DEFINED ROLES is enabled, 
then the "Kill Player Production" WIN CONDITION reverts to "Kill Team 
Production", instead. Note that it's a really good idea to choose the same race 
for everyone on the same team.

CURRENTLY THE AI DOES NOT KNOW HOW TO DEAL WITH THE DEFINED ROLES SETTING. IT 
CAN FIGHT, BUT IT IS UNABLE TO BUILD OR RESEARCH PROPERLY. THUS, THIS MODE IS 
ONLY SUITABLE FOR MATCHES WHERE, AT THE VERY LEAST, THE "PRODUCTION/CAPITAL" 
ROLES ARE ASSIGNED TO HUMAN PLAYERS AND NOT THE AI.

DEFINED ROLES MODE HAS BEEN DISABLED BECAUSE THERE ARE NO LONGER ENOUGH 
GAMETYPE MENU OPTIONS TO SUPPORT THIS MODE. THERE IS A HARDCODED CAP OF 32 
SETTINGS IN THE GAMETYPE MENU, AND THE DEFINED ROLES MODE PUTS THIS MOD OVER 
THAT LIMIT. MAYBE GEARBOX WILL FIX THE HARDCODED CAP IN THE FUTURE.

BENTUSI ROULETTE
In this game-mode a selectable number of research options (up to seven) are 
randomly granted and restricted to each player at the beginning of play. Press 
the semi-colon ";" key to see which items have been granted and restricted. 

NOTE THAT TURNING RESEARCH OFF ALSO TURNS BENTUSI ROULETTE OFF.

SPECIAL FLEETS
This mode gives the player extended starting fleet options. You can choose from 
several different fleet makeups, each composed of a different assortment of 
starting ships, subsystems and research.

SPECIAL FLEETS MODE CURRENTLY IGNORES/OVERRIDES THE START WITH, RESOURCING OFF, 
RESEARCH OFF AND HYPERSPACE OFF SETTINGS UNTIL I CAN THINK OF A BETTER SOLUTION 
TO A PROBLEM WITH THE MOD. [NEED TO DESCRIBE PROBLEM HERE.]

GAME SPEED
This setting allows the host to slow the game down to a fraction of its default 
speed. The available options are 1, 3/4, 1/2 and 1/4 times the normal speed.

BACKGROUND MUSIC
Here you can select which background audio track to play during a battle. The 
default setting is "Map Default", which plays whatever music the original HW1C 
map developer intended for the map. There's also a "Shuffle" option to randomly 
switch between different songs. Or you can select songs individually. Press the 
minus "-" key to see a list of recently played audio tracks.

TEAM PROGRESS SCREEN
Pressing the comma "," key enables an on-screen display showing you and your 
teammates' current RUs, production and research.

ADVANCED STATS
This setting causes additional end-of-game stats to be generated in your 
profile folder at the end of each match. It is enabled by default. However, the 
stats are only generated if you are present at the end of the game. If you 
leave the game for any reason (such as when you are asked to continue watching 
after you get killed, but choose "No") the stats file will not be generated.

CUSTOM GUI SCREENS
1) You can view the Bounties screen by pressing "P".
2) You can view the Bentusi Roulette screen by pressing "SEMICOLON".
3) You can view the Team Progress screen by pressing "COMMA".
4) You can view the Audio Track History screen by pressing "MINUS".
5) You can view the Game Rule List screen by pressing "EQUALS".


================================================================================


LICENSE
You're free to use this code in any way as long as proper credit is given for 
the work that I, Luke Moloney and the many map authors have done. See the 
section titled "Modding Instructions" for instructions on how to reconfigure 
the scripts to work with your mod.

MODDING INSTRUCTIONS
The files in the "data\scripts\rules\lib\" folder beginning with "objectlist" 
can be reconfigured to make the game rules work with your own mods. Simply add 
or remove items to and from the tables as needed, and the gamerules will auto-
matically adjust to the new objects. The tables themselves, however, should not 
be removed, or the game will break. Minimal instructions on modifying the 
tables can be found within the "objectlist" files themselves.


================================================================================


CREDITS
• Luke "B1FF" Moloney for the HW Classic mod in its original state.
• Deionerra for dockpath info.
• LeviathanChiken for the crystals, as well as for taking interest in the mod 
  and furthering HWU! :)
• All the dozens of HW1 and HWC map makers whose maps I converted. Credits for 
  each individual person can be found in the level files and loading screens 
  themselves.
• Scottismo for compiling all the maps and hosting them on Jst-Online.net.
• The Complex Team for their idea of using libraries to store the code for each 
  game-mode separately.
• Tamerlane for his "HW2Path" function.
• evillejedi for the beginnings of the random music track script.
• EatThePath for helping me get the mod working with GearBox's August 2015 HWRM 
  update, as well as showing me how to run two instances of the game at once to 
  do multiplayer testing.
• Dwarfinator for much help with GUI screens and button graphics.
• pandorazero for converting crystals to the new HOD format per Patch 2.0.
• radar3301 for lots of help with the "WriteStats()" function.
• Relic and GearBox of course.


================================================================================


TO DO
• SPECIAL FLEETS mode causes the starting ships to all point in the same 
  direction. It would be better to retain their original facing. [Maybe 
  impossible. Regardless, SPECIAL FLEETS mode is disabled completely for the 
  time being, so the problem is moot.]
• Rename all functions by adding a prefix that matches the game rule they 
  belong to. I've already done this with global variables.
• Need to reduce JOB_DutiesList and JOB_TeamsList to a single table named 
  JOB_PlayersList. This table should store each player's team and job info.
• In the level files, make sure the algorithms used to produce the spherical, 
  cylindrical, etc. shapes produce volumes with even distributions. I had to 
  disable the existing code because it was causing some problems, and haven't 
  replaced it with something new yet. [This problem may have been resolved in 
  recent versions of the mod. At the very least, I think spheres, cubes and 
  cylinders are okay.]
• Crates currently don't award subsystems. [Maybe impossible to accomplish.]
• Map thumbnails or names should show the four-star ratings I gave each map in 
  the HTML reference sheet that is included with the mod.
• TEAM PROGRESS screen should maybe display a longer list of build and research 
  items. The current list may be too short to be very useful.
• The number cloud HODs have not been updated to HWRM Patch 2.0 format yet.
• Should capital ships need research modules when research is turned off? Need 
  to think this through. [The Hiigaran Advanced Research Module is currently 
  disabled when the RESEARCH OFF mode is turned on.]
• How does the HYPERSPACE OFF rule affect Kushan and Taiidan ships? Do ships 
  from these races have an innate hyperspace ability? Need to check to be sure. 
  [Kushan and Taiidan capital ships seem to have an innate hyperspace ability. 
  I would have to duplicate these ships and then turn the ability off 
  permanently in the .ship files if I wanted a thorough solution. Currently, a 
  game rule script disables the hyperspace ability every few seconds, but this 
  script is slow and makes the game choppy.]
• Currently in the DEFINED ROLES mode, if no players on a team choose the 
  "Production/Capital" role, then all players on the team retain their capital 
  ship production/research capability. Further, if two players on the team 
  choose the "Production/Capital" role, then both players with that role retain 
  their capital ship build capabilities. This is unfair to teams who have only 
  one player with this role, since their effective unit cap for capital ships 
  is lower than the other team's. This needs to be fixed! Ideally, no players 
  on a team should not share roles. [Update: As of version 2.0.1, DEFINED ROLES 
  is automatically turned off if more or less than exactly one player has the 
  "Production/Capital" role on each team. I still need to think this through, 
  though - especially since HWRM now supports 8 players instead of just 6, and 
  there are only 3 roles for players to choose from.]
• Explore different options for using a single CPU player as the enemy in the 
  DEFINED ROLES mode instead of multiple CPU players. Getting all three CPU 
  players to cooperate with each other by modifying their AI scripts will 
  probably never work. However, I have made some attempts in the past, and 
  there is still some (currently disabled) experimental AI code in the mod 
  files from this period. The best solution IMO would be to use a single CPU 
  player, and for GearBox to implement per-player starting fleets and per-
  player unitcaps. But they have expressed trepidation about implementing this 
  and are unlikely to ever do so.
• To simulate per-player starting fleets, I could simply spawn all three CPU 
  players' ships, and then transfer them to the 'lead' player, leaving the 
  other CPU players in stasis. To simulate per-player unitcaps, I could create 
  four new CPU-only races with their own versions of all the ships, and alter 
  the unitcaps for those races. It could work, but would be a lot of effort to 
  set up, and a PITA to manage over time if GearBox decides to make additional 
  balancing changes to ships and races in the future.
• In the TEAM PROGRESS screen, maybe enemy players should also be listed, but 
  in red and minus the corresponding stats. [I've investigated this, and color 
  coding of player names is not possible since they use 2 byte wide characters 
  instead of normal 1 byte characters, and there is no way to modify the color 
  of a wide character string in HWRM, AFAIK.]
• The unit cap for non-capital ships in the DEFINED ROLES mode is effectively 
  unlimited because the routine that trades ships between players does not 
  understand unit caps. This is unfair, and means that large numbers of small 
  ships may always be superior to small numbers of capital ships.
• Make doubly sure that the "doscanpath()" function works for research and 
  build lists when some files are in the mod, and other files are in GearBox's 
  .BIG file.
• CPU players should hunt for crates, too. [May not be possible.]
• CRATES rule actually needs bounty values to work properly. Need to enable 
  BOUNTIES code when crates are enabled, but not actually *award* or *display* 
  the bounties to players unless the BOUNTIES mode is turned on by the host.
• Should crates only award ships belonging to the player's own race? What about 
  ships from other races?
• Gravwell and cloak generators are not platforms. However, my tech list treats 
  them as such. Not sure if this is good or bad.
• I compared Luke Moloney's HW1C-to-HW2C RU conversion formula based on the 
  relative costs of frigates in HW2C and HW1C (700 and 575 RUs respectively) to 
  HWRM's current ship costs. It turns out that HW2C frigates cost the same as 
  they did when HW2C was released, but that HW1 frigates are now actually more 
  expensive than HW2C frigates rather than less! How should this affect the RU 
  conversion formula I am using for the HW1C maps? Should I just leave it 
  alone?
• The HYPERSPACE OFF rule was disabled at some point in time. Why? My notes say 
  there were performance issues. Need to test this further.
• There's a similar performance issue with the RESOURCING DISABLED rule that 
  could be solved by using modified starting fleets, maybe. [Update: The 
  RESOURCING DISABLED rule is now handled via starting fleet files rather than 
  a recurring script. So this issue is fixed I think.]
• The HW1C maps are often pretty scarce on resources. Unfortunately, CPU 
  players stop playing when resources are depleted. They just sit there doing 
  nothing. I'm not sure what to do about this.
• I need to compare the HW1C and HWRM assault frigate speeds again. Luke 
  Moloney devised a method of determining map scale adjustments when converting 
  HW1C maps to HW2C by comparing the speeds of HW1C and HW2C frigates. Since 
  frigate speeds have changed yet again in HWRM, I may need to look and see if 
  the conversion ratio needs another adjustment as well. On the other hand, 
  maybe I should stick with the meters/feet conversion ratio that I have been 
  using up until now. (E.g. instead of Luke's formula.) [Update: I am currently 
  using a ratio of 1/3, which lies somewhere between the meter/feet ratio and 
  the 1/3.5 ratio I was told by a forum user GearBox was using when porting the 
  HW1C ships to HWRM.]
• Some HW1C levels specify multiple ships in the same location and in a 
  formation. I need to find some away to put these ships into formation from 
  within the level files.
• Cataclysm slipgates, meteor showers, etc. are not currently supported by my 
  mod. Slipgates might be doable, but I have no clue about meteor showers.
• The map "HW1_Scout MadnessII8.level" does not use start points currently, and 
  causes the match to end right away when used. Instead of starting points, the
  map uses the "useasmothership" formation, which is unsupported at this time 
  by the map converter and this mod.
• Try and get Cataclysm ships into this mod, maybe.
• I could maybe disable the button hiding that goes on at the beginning of each 
  match. I could show all buttons regardless of which game rules are enabled or 
  disabled.
• Did HW1C place a limit on the number of collectors that could harvest a dust 
  cloud at one time? How many latch points do dust clouds have in HWRM? This 
  may be worth investigating. [Update: I was told that at least two collectors 
  could harvest a cloud at once in HW1C.]
• Being able to apply research items like "CarrierHealthUpgrade1_carrieronly1" 
  to multiple ships at once instead of having to duplicate the research items 
  would make the mod simpler to maintain. [Update: someone on the GearBox forum 
  showed me how to use loops and/or custom functions to populate the "research" 
  table. But this method required just as much work.]
• Likewise, it would be nice if the build list had a "Name" flag so I could 
  have multiple build options with different requirements, but with the same 
  target ship or sybsystem.
• There are so many combinations of settings affecting the names of build and 
  research items, that I might as well rename the original build and research 
  items to fit the new naming scheme. For instance, "Hgn_Shipyard" could be 
  renamed to "Hgn_Shipyard_research1_hyperspace1" going by this naming scheme.
• There are still many mod-specific texts that need to be localized for other 
  languages. For instance the GUI buttons and screens, and the subtitle texts. 
  I would need to find someone to translate these texts for me, however.
• Create an in-game screen just for documentation.
• The random audio track script switches songs based on the progress of game 
  time. However, when the game is paused the music continues to play, but game 
  time does not progress. Thus, music time and game time are no longer in sync.
• Maybe CRATES should not award capital ships when the CARRIER ONLY mode is 
  also enabled. [I have been told by a few people that crates used to award 
  capital ships in HW1C in carrer only battles.]
• Maybe insert all the game rule settings into a second smaller table. Then I 
  wouldn't need to parse the GameSetupOptions table a second time.
• Encountered an issue where crates weren't spawning while the DEFINED ROLES 
  mode was enabled due to {0,0,0} coordinates and divide by zero issue. Haven't 
  been able to reproduce this since then, so maybe it's fixed.
• "ChooseCrateRewardShip()", "ChooseCrateRewardSubsystem()" and 
  "ChooseCrateRewardTech()" are now very similar to each other. However, they 
  are different enough that I don't think I can consolidate them into a single 
  function.
• Currently, enabling the RESEARCH OFF rule automatically turns the BENTUSI 
  ROULETTE mode off as well. This is because there is no point in the BENTUSI 
  ROULETTE mode granting additional research when the RESEARCH OFF mode already 
  has granted all there is to grant. It may be possible to *restrict* some 
  research if I move the BENTUSI ROULETTE code before the RESEARCH OFF code. 
  But, it seems that a few of the other rules require that they come before 
  BENTUSI ROULETTE but after some of the other code... And thus an endless loop 
  is formed.
• The added production systems on "vgr_carrier_carrieronly1" are misaligned. 
  Supposedly the next GearBox patch will fix this.
• Should write the game type settings to the ADVANCED STATS files too.
• Need to test this mod in multiplayer against human players, not just in 
  skirmish battles. This can be done on one computer by running multiple 
  instances of HWRM, apparently.
• "HW1_Empty Sphere4.level" has a problem with "nan" values. Some sort of math 
  error was made during conversion.
• Not sure if "Universe_RandomPlayerList()" is really necessary. Is it really 
  more fair than simply iterating from 0 to Player_Count?
• Harvestable dust clouds should be working properly now as of the latest patch 
  but they are not being used in any of the mod's maps.
• Pixel representations of asteroids look ugly. Ugly color, and slightly too 
  large.
• Re-release "Defined Roles" as its own separate mod maybe compatible with this 
  one.
• Make sure the correct numbered research ships are being granted to Kushan and 
  Taiidan in "Special Fleets", "Crates", etc.
• Make sure "Special Fleets" doesn't grant restricted items.
• Make sure "research0" versions of Hiigaran capital ships are referenced 
  properly in other ships' .lua scripts where needed. Ship names are often hard-
  coded in these files.
• "Research Off" rule tries to grant researches located in "ai_properties.lua" 
  and fails with script errors.
• The race-specific AI scripts in "Data\scripts\races\<race>\scripts" does not 
  cope well with multiple versions of a ship, for instance the Hiigaran super 
  capital ships with the missing advanced research modules.


================================================================================


CHANGE LOG

2.4.1 --- 2020/10/10
• Move motherships list from "objectlist_rulerestrictions.lua" to 
  "objectlist_misc.lua".
• Added hyperspace researches for Kushan and Taiidan to "HyperspaceOff" section 
  of "objectlist_rulerestrictions.lua". Unfortunately, capital ships of those 
  races have the hyperspace capability that cannot be turned off using build or 
  research grants or restrictions.
• Fixed game crashing when playing as Hiigaran or Vaygr under certain combin-
  ations of game rules.

2.4.0 --- 2020/10/09
• Created many scripts and a spreadsheet for a planned "modular ships" version 
  of this mod. These files exist in the GitHub repository only as of now. This 
  code will form the basis of version 3.0.0 of the mod once completed.
• Moved some miscellaneous as-of-yet non-functional "Defined Roles"-related AI 
  scripts to the "source" folder.
• Disabled "Defined Roles" mode and re-enabled "Special Fleets" mode. The AI 
  has no idea how to deal with the former, but is able to deal with the latter 
  much better. Updated docs to reflect this.
• "Special Fleets" mode now spawns the correct research ships for the Kushan 
  and Taiidan races. These ships are now instantly spawned in formation with 
  the mothership instead of made to exit out of the shiphold.
• Removed hyperspace-less shipyards as there was no point to having them. Fixed 
  ship names to reflect this.

2.3.1 --- 2020/07/15
• Moved data files into a subfolder of the game's GitHub directory. This means 
  these files will longer be packaged in the BIG file along with the rest of 
  the mod via Steam, and will exist only in the GitHub repository.

2.3.0 --- 2016/08/15
• Switched to a newer and better PRNG.
• Fixed a bug in "writestats.lua".
• Discovered that I had to implement GearBox's "cpuplayers" rules in order for 
  the AI to build anything. Did this, and implemented the "norushtime" scripts 
  in the process.

2.2.0 --- 2016/07/10
• Fixes to some game type menu option texts.
• "CheckCaptureStatusRule()" now cycles through players using the 
  "WIN_AnyPlayerIndex" variable and the "CyclePlayers()" function instead of 
  picking a player at random, just like the other WIN CONDITION rules. I hope I 
  didn't break anything.
• Other minor tweaks to "CheckCaptureStatusRule()".
• Total overhaul of the "WriteStats()" script. The ADVANCED STATS now contain 
  time and date info, a list of game rule settings chosen by the host, and 
  lists of ships, subsystems and research. The output now also contains nearly 
  all the info that the vanilla stats the game normally writes to the profile 
  "stats" folder have. Thanks to Dwarfinator and radar3301!
• "WriteStats()" is also a rule now instead of just a regular function. This 
  apparently is necessary for the "Your fleet is victorious" and "Your fleet 
  has been defeated" messages to appear at the end of each battle. Not sure 
  why.
• The starting objective message text is now customized based on the current 
  WIN CONDITION. Unfortunately, I do not have audio files for each of the WIN 
  CONDITION settings.
• Modified "levelfunc.lua" to remove "meg_kharak" and "meg_kharakburned", which 
  were removed from the game by GearBox apparently.
• Fixed the ship "tur_ionarrayfrigate" since it had a bug in it that caused the 
  game to crash. The ship "der_lifeboat" also crashes the game, but I haven't 
  figured out why.
• Edited "data\ui\newui\ingamemenu.lua" to add the "BTN_EXITTOMAINMENU" button, 
  since exiting all the way to Windows makes testing the mod in multiplayer 
  difficult.
• Replaced instances of "Universe_PlayerCount() - 1" with a new global variable 
  "Player_Count".
• Fixed a bug in "CheckTeamProductionShipsLeftRule()" and 
  "CheckTeamAnyShipsLeftRule()" where the game continued to try to kill players 
  even when they were already dead.
• The "CheckMothershipDeadRule()" function now uses the "WIN_AnyPlayerIndex" 
  global variable to iterate through players just like the other WIN CONDITION 
  functions.
• Moved the "Player_Team()" and "Player_NumberOfShips()" functions to 
  "common.lua" from "wincondition.lua".
• Renamed "SetStartObjective()" to "SetWinObjective()".
• The BACKGROUND MUSIC rule now has a "Map Default" option that reverts to 
  playing whatever background music is specified in the level file.
• Replaced calls to the "CPU_Exist()" function with calls to the 
  "Player_GetLevelOfDifficulty" function since the former were causing desyncs.
• HWCM debug text changed slightly.
• Overhauled how seeds for my PRNG work. Before, each seed was generated using 
  the native Lua "random()" function. This caused desyncs however, which I did 
  not realize until I did some multiplayer testing over a LAN connection in the 
  last few days. Now, the seeds are generated by performing operations on game 
  setup options, and then summing the results. While the seed values are not as 
  "unique" as before, they will not cause desyncs. Thus, the mod can finally be 
  played against other human players over the Internet.

2.1.2 --- 2016/07/05
• Fixed some issues related to counting research grants and restrictions in 
  "BentusiRoulette_Init()". The BENTUSI ROULETTE mode works properly with the 
  DEFINED ROLES mode once again.
• The DEFINED ROLES and CRATES modes now work with each other again as well.
• Added a "Misc" category to "objectlist_rulerestrictions.lua".
• Disabled the "MPRestrict" category in "objectlist_rulerestrictions.lua" since 
  all the researches listed there are now located in "HW2Campaign.big" instead 
  of "Homeworld2.big", and thus no longer affect this mod.
• "BentusiRoulette_Init()" now fills in blank lines in the GUI display text if 
  it turns out there are too few available researches to grant or restrict.
• "BentusiRoulette_Init()" now counts the number of researches in 
  "def_research.lua" instead of the "TechList" table to determine a total.
• Made the last field in the TEAM PROGRESS screen a little wider to show more 
  info.
• Crate code now once again checks for ALL of a player's ships as a last resort 
  when determining the mothership position. I disabled this at some point in 
  the past for reasons I don't remember.
• Added the "viszero()" function to "utilfunc.lua". It checks whether a vector 
  has a length of zero.
• Made a few tweaks to "GetBestCrateLocation()".
• The TEAM PROGRESS screen now shows each player's DEFINED ROLES role if the 
  mode is enabled.
• Moved all the "MainRule()" stuff to its own file in the "lib" directory.

2.1.1 --- 2016/07/04
• Renamed the "type" parameter to "types" in the TechList table and related 
  scripts to avoid confusion with the Lua command of the same name.
• Disabled some lines in "DisableHyperspaceRule()" as the performance was poor 
  and the code may have been technically unnecessary.
• Merged "GetResearchGrant()" and "GetResearchRestriction()" into a single 
  function called "GetFreeResearchItem()".
• Removed "default.lua" from the AI scripts since the same functionality is 
  already provided in the DEFINED ROLES code.
• Re-used the "PlayerHasMothership()" function inside "GetBestCrateLocation()".
• The "PlayerHasMothership()" function now returns the mothership type and name 
  as well as true or false.
• Removed the "GetValidMothership()" function since it no longer serves a 
  purpose.
• Miscellaneous optimizations to loops.
• Split CRATES and BOUNTIES code into individual files separate from 
  "homeworldclassic.lua".
• In the "GrantAllResearchRule()" rule, I stopped using 
  "Player_GrantAllResearch()" and rolled my own routine that parses 
  "def_research.lua" and logs all grants to the "Player_GrantedResearch" table.
• Renamed all instances of "iPlayerIndex" to "playerIndex" to be consistent.
• The "GrantAllResearchRule()" function now checks whether the player is a CPU 
  or human before granting some items. Not sure it has any effect, though.
• Fixed the bug where frigates were immediately disappearing after being built 
  by carriers when playing with the RESEARCH OFF and CARRIER ONLY settings.
• Fixed the bug where the custom GUI displays crash when the local player dies.
• The custom GUI displays now show dashes instead of values when a player dies.
• Research meant for AI players only are now restricted for human players. They 
  were also removed from the "TechList" table.
• Research never meant to be used in multiplayer matches are now restricted.
• RESEARCH OFF rule now overrides and disables BENTUSI ROULETTE since RESEARCH 
  OFF already grants every type of research it can grant.
• Added a GAME RULES screen so players can double-check and see what settings 
  the host chose for the match.
• Fixed some mistakes in game rule tooltips.
• Reverted to Luke Moloney's original and much simpler method of determining 
  "ChooseCrateRewardShip" using "while" loops instead of "for" loops.
• Research wasn't being chosen randomly by CRATES mode. It is now.
• Copied some code from GearBox's "mainrule_updating()" function that plays 
  some speech files and displays some text at the beginning of each match and 
  when a player dies. Not sure if it's working properly.

2.1.0 --- 2016/07/01
• Fixed a bug in Vaygr research script that was also preventing the game from 
  ending and the ADVANCED stats from being written to the profile directory.
• Removed the "Map Default" STARTING RESOURCES option since RU values have 
  never been stored in the HW1C level files, anyway.
• Minor tweaks to game rule tooltips.
• Changed the way starting fleet suffixes are handled in the code. The strings 
  are are now built up over time as the game rule steps through each setting. A 
  starting fleet suffix might now look like 
  "_carrieronly1_research0_resource0_hyperspace1" depending on the final 
  combination of settings that the host chose.
• The tech items in the "TechList" table now have multiple sub-types depending 
  on which of the game rules are enabled or disabled. This required substantial 
  changes to the loop structure of CRATE and BENTUSI ROULETTE functions, for 
  instance.
• SPECIAL FLEETS now overrides the START WITH, RESOURCING OFF, RESEARCH OFF AND 
  HYPERSPACE OFF settings if turned on. This is until I can think of a better 
  solution to a problem. However, the SPECIAL FLEETS mode itself remains hidden 
  and disabled, so the change makes very little practical difference currently.
• Renamed the "_noresearch" ship/subsytem suffix to "_research0", and the 
  "_carrieronly" suffix to "_carrieronly1" in order to be consistent, and to 
  make way for the new "_resource0" and "_hyperspace0" suffixes.
• Forgot to add the Kushan and Taiidan motherships to the motherships table in 
  the rule restrictions object list.
• CARRIER ONLY research items are now applied properly when RESEARCH OFF mode 
  is enabled as well.
• Fixed a bug in the "UpdateBountyStats()" function that was preventing 
  bounties from working in 7 and 8 player battles.
• CRATES and BENTUSI ROULETTE are now automatically disabled when DEFINED ROLES 
  is turned on. I will need to work on getting them compatible again.
• Hiigaran and Vaygr shipyards no longer require a hyperspace module in order 
  to get built when the HYPERSPACE OFF rule is enabled. This is in order to 
  balance the four races.
• DUE TO THE LENGTHY OVERHAUL OF THE MOD'S INTERNALS IN THIS RELEASE, THERE IS 
  A GOOD CHANCE THAT MANY NEW BUGS MAY HAVE BEEN INTRODUCED!
• In the next release I am going to focus on optimizations. I noticed a number 
  of areas where things could be done more efficiently. (Especially with regard 
  to assigning and retrieving values from variables inside loops.)

2.0.4 --- 2016/06/28
• A "Crate detected" message is now also sent to the Events screen when a crate 
  is detected.
• Non-player squadrons are once again spawned on the map according to the 
  original map author's specifications. However, this happens only when 
  selecting the "HW1C Map Default" START WITH or similar setting in a game 
  rule. Unfortunately, these non-player ships are totally non-interactive, 
  unlike their counterparts in HW1C and HW Cataclysm. Also, formations are not 
  supported in level files, so I had to limit spawned ships to 1 ship per map 
  coordinate.
• Tweaks to how map objects are counted for debug purposes.
• Added resourcing related items to the research restriction list when STARTING
  RESOURCES is set to DISABLED.
• Starting music track is once again displayed on the screen when a battle 
  starts.
• Custom GUI screens are now split into "Static" and "Dynamic" categories based 
  on how often they need to be updated.
• Added a new AUDIO TRACK HISTORY screen that lists the last ten battle and 
  ambient music tracks that have been played.
• Increased the duration of the opening text message display from 10 to 15 
  seconds.
• The random background music script now uses an explicitly declared seed value 
  to hopefully prevent the potential for further desyncs.
• Sobgroups are no longer moved to a distant radiation field first before being 
  killed due to the START WITH rule. Now they are being despawned right where 
  they are instead. Hopefully this remains a good solution.
• Changed ship and subsystem label "_nores" to "_noresearch" to be clearer.
• Extended the delay before granting all research in the RESEARCH OFF setting 
  back to 15 seconds. A too short delay was causing the game to crash.
• Multiple non-player ships are no longer spawned at the same coordinates in 
  the level file since formations remain unsupported in level files, and the 
  inert non-player ships cannot move apart from each other.
• CPU players are now able to at least fight when DEFINED ROLES is enabled. 
  They can't build or research. But they are able to engage in combat at least. 
  This means that large DEFINED ROLES battles are viable as long as the 
  CAPITAL/PRODUCTION roles are assigned to human players.

2.0.3 --- 2016/06/25
• When DEFINED ROLES is enabled, the Kill Player Production WIN CONDITION will 
  now default to Kill Team Production WIN CONDITION instead.
• Fixed a bug in DEFINED ROLES that caused the script to fail if all members of 
  a team died.
• Fixed a bug in CRATES mode preventing players from being granted with 
  research technologies.
• Fixed the paths to the HW1 battle music files in BACKGROUND MUSIC script.
• Updated song titles in BACKGROUND MUSIC script.
• Updated CrateExclusions table in "objectlist_misc.lua".
• Fixed the issue preventing the Kushan mothership from using the move ability.
• The "Research" button is now disabled when the RESEARCH mode is turned off. 
  Thanks GearBox!
• Included the now deprecated "Homeworld Classic Maps" game type in case people 
  want to play on the old maps but with GearBox's new game rules. THIS FILE HAS 
  BEEN DISABLED.
• The smallest asteroids, despite having zero resources, were still selectable 
  using the mouse, thereby fooling the player. This has been fixed.
• Increased RU values of asteroids a little more. They were simply too small!
• Changed the pixel sizes of the two smallest asteroids. Before this, asteroid0 
  actually looked larger than asteroid1.
• TEAM PROGRESS screen now shows the size of your teammates' fleets.
• Added some debugging functions to the WriteStats script.
• A message indicating that additional stats have been written to each player's 
  profile directory is now displayed at the end of a match.
• Slight tweak to some level debug messages.
• Fixed the bug where level names were being displayed inconsitently in the 
  game setup screen. Level names are now no longer prefixed with "HW1" or "HWC" 
  depending on the origin of the map.
• Changed MapScale in level files slightly.

2.0.2 --- 2016/06/24
• Increased RU values of asteroids back to Luke Moloney's original numbers. 
  Hopefully they will not be too few.
• Fixed the bug where the correct mothership position was not calculated when 
  determining crate spawn coordinates.
• Fixed the bug where crates were being expired/despawned in the wrong order.
  I.e. the newest crates were getting despawned first instead of last.
• Added an audio clip for when crates are spawned. Thanks GearBox!
• Added debug messages for both enabled and disabled states of game rules.
• Fixed an occasional divide-by-zero error that was preventing crates from 
  spawning.
• ADVANCED STATS should be printing properly to the profile directory at the 
  end of each match now.
• Lots of tweaks to CRATES debug messages.
• Included everything from my HWC Maps mod, and deprecated that mod in favor of 
  just having this one.
• Re-enabled the custom "classdef.lua" and updated it to Patch 2.0 specs. (The 
  stuff I made specifically for DEFINED ROLES is still disabled however.)
• Slight tweaks to map code.

2.0.1 --- 2016/06/21
• Forgot to upgrade the level functions to the latest version. This was causing 
  crashes.
• Updated items in tech list to reflect the changes made in GearBox's Patch 
  2.0.
• DEFINED ROLES mode now is automatically disabled if any team has more or less 
  than exactly one player with the Capital/Production role.
• Tweaked the subtitle message at the start of play a bit.
• Fixed an error in BENTUSI ROULETTE that was keeping some items from being 
  added to the research restrictions list.
• Fixed a bug preventing crates from spawning.
• A sensors ping now appears at the correct location when a crate is spawned.

2.0.0 --- 2016/06/21
• Ported the mod from Homeworld 2 to Homeworld Remastered.
• Disabled SPECIAL FLEETS mode since there are not enough drop-down menus to 
  accomadate every gametype setting. Maybe GearBox will fix this in the future.
• Disabled the in-game timer code since HWRM aldeady has an in-game timer.
• Slight tweak to how the mod detects whether the IN-GAME TIMER and TEAM 
  PROGRESS METER settings are enabled or disabled.
• Replaced the ATI text infos with standard UI screens. Each mode now has its 
  own screen and hotkey.
• The name of the currently playing music track is no longer displayed to the 
  player. Instead, there is a new message at the beginning of each match 
  telling the player how to access the new UI screens.
• Removed some of the customized ships, including Keeper ships. I don't recall 
  what changes I made to them, or why I made them. Also, since this mod mostly 
  only spawns Kushan and Taiidan ships in the HW1C maps, the old method of re-
  placing them with extra Keeper and Vaygr ships doesn't really make sense any 
  more.
• Updated scripts to work with the HWRM 2.0 patch.
• Rounded map object positions and angles to the nearest integer.
• Set RUScale to equal 1, which is much lower than it was before, and means 
  that it is now at HW1C levels.
• Combined the RUTable and CloudScale tables into a single new table called 
  ResourceTable in "levelfunc.lua".
• Copied resource files from "HW1Campaign.big" instead of "Homeworld2.big".
• Crystal HODs have been converted to the new Patch 2.0 HOD format thanks to 
  pandorazero!
• Switched to a different crate model.
• Removed cloud number models since they're already available in my Homeworld
  Classic Maps mod.
• Gave up and disabled the custom AI code for DEFINED ROLES mode. It's a pretty 
  hopeless situation getting the AI to work in this mode.

FOR EARLIER CHANGES, REFER TO THE HELP FILES INCLUDED WITH THE HOMEWORLD 2 
CLASSIC VERSION OF THIS MOD, AS WELL AS THE GAMEPLAY ENHANCED AND HOMEWORLD 
CLASSIC REBALANCE MODS FOR HOMEWORLD 2 CLASSIC.
