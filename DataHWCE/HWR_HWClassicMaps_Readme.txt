Title:		Homeworld Classic Maps
Version:	1.8.5
Authors:	Mikali and many, many individual map authors
Created:	2006/01/24
Updated:	2016/07/11
Homepage:	http://isometricland.net/homeworld/homeworld.php
ModDB:		http://www.moddb.com/mods/homeworld-classic-maps
Steam:		http://steamcommunity.com/sharedfiles/filedetails/?id=401926364
Discussion:	http://forums.relicnews.com/showthread.php?134875


================================================================================

DESCRIPTION
A collection of almost 1500 Homeworld and Homeworld: Cataclysm maps converted 
to work with Homeworld Remastered. Older versions of these maps are also in-
cluded in my Homeworld Classic Enhanced mod for Homeworld 2 Classic.

INSTALLATION
Installation is done by subscribing to the mod on Steam Workshop if you have 
the Steam version of the game. For the GOG.com/ModDB version, extract the ZIP  
archive and copy the "DataHWClassicMaps" folder to your "Homeworld Remastered" 
directory, then add "-moddatapath DataHWClassicMaps -overrideBigFile -luatrace 
-traceHODs" to your desktop shortcut's "Target" field.

INSTRUCTIONS
When playing using the "Start With" option set to "HW1 Map Default", make sure 
to select the same race as is set for your position within the level file. You 
can see which race is set for your position by looking along the bottom row of 
the thumbnail image in game setup. The player races are listed in order from 
left to right. When you see "Kus" it means you should pick the Kushan race. 
When you see "Tai" it means you should pick the Taiidan race. "Som" means 
Somtaaw, but in this case pick the Hiigaran race instead. Note that player 
order is determined by the "Slot" option in the game setup screen, not by the 
order in which people appear in the lobby.


================================================================================

CREDITS

• All the dozens of HW1 and HWC map makers whose maps I converted. Credits for 
  each individual person can be found in the level files themselves.
• Scottismo for compiling all the maps and hosting them on Jst-Online.net.
• EatThePath for helping me get the mod working with GearBox's August 2015 HWRM 
  update.
• pandorazero for converting crystals to the new HOD format per Patch 2.0.


================================================================================

TO DO

• There may be performance issues with some maps due to too many asteroids, or 
  overlapping resource pockets.
• Slipgates are not currently supported.
• Since the HWRM 2.0 patch, formations are supported by HWRM. But can they be 
  set within level files?
• Since the HWRM 2.0 patch, ships within a squadron are sometimes counted 
  individually. Or something like that.
• The number cloud HODs have not been updated to HWRM Patch 2.0 format.
• The map "HW1_Scout MadnessII8.level" does not use start points currently, and 
  causes the match to end right away when selected. Instead of start points, it 
  uses the "useasmothership" formation which is unsupported at this time by my 
  map converter.
• Level converter prints the wrong function help text to level files.
• FYI, the map ECLOSION (2-6) has non-player squadrons located in the middle of 
  the map.


================================================================================

CHANGE LOG

1.8.5 --- 2016/07/11
• Changed to a different PRNG. Updated all scripts accordingly.

1.8.4 --- 2016/07/10
• Debug text changed slightly.
• Disabled "meg_kharak" and "meg_kharakburned" since they were removed from the 
  game by GearBox.

1.8.3 --- 2016/06/28
• Non-player squadrons are once again spawned on the map according to the 
  original map author's specifications. However, this happens only when 
  selecting the "HW1C Map Default" START WITH or similar setting. 
  Unfortunately, these non-player ships are totally non-interactive, unlike 
  their counterparts in HW1C and HW Cataclysm which would fight you.
• Tweaks to how map objects are counted for debug purposes.
• Multiple non-player ships are no longer spawned at the same coordinates in 
  the level file since formations remain unsupported, and the inert non-player 
  ships cannot move apart from each other.

1.8.2 --- 2016/06/25
• Made some tiny tweaks here and there. Added some extra comments in the code.
• Changed blob radius and RU value of the smallest asteroid type to zero.
• Moved all the "Homeworld Classic Maps" mod files into the "Homeworld Classic 
  Enhanced" mod. They are now combined as one, and the old "Maps" mod can now 
  be deprecated.
• Slight tweaks to some level debug messages.
• Fixed the bug where level names were being displayed inconsitently in the 
  game setup screen. Level names are now no longer prefixed with "HW1" or "HWC" 
  depending on the origin of the map.
• Changed MapScale in level files slightly.

1.8.1 --- 2016/06/20
• Added project source code to the archive.

1.8.0 --- 2016/06/18
• Updated scripts to work with the HWRM 2.0 patch.
• Rounded object positions and angles to the nearest integer.
• Set RUScale to equal 1, which is much lower than it was before, and means 
  that it is now at HW1C levels.
• Combined the RUTable and CloudScale tables into a single new table called 
  ResourceTable in "levelfunc.lua".
• Copied resource files from "HW1Campaign.big" instead of "Homeworld2.big".
• Crystal HODs have been converted to the new Patch 2.0 HOD format thanks to 
  pandorazero!

1.7.2 --- 2015/10/01
• Tried to make the smaller asteroids more visible by coloring them yellow 
  instead of gray.

1.7.1 --- 2015/10/01
• Updated the gametype script to match GearBox's August 2015 HWRM update.

1.7.0 --- 2015/09/18
• Updated the mod to work properly with the GearBox's August 2015 HWRM update.
• Lowered the version number from 2.0.0 down to 1.7.0.

1.6.2 --- 2015/03/17
• Fixed some map thumbnails that were in the wrong order.

1.6.1 --- 2015/03/17
• Fixed the bug where 8 player maps would not load correctly.
• Kushan and Taiidan research ships are causing my maps to crash or hang when 
  placed onto a level. Until I figure out what exactly is going on, I am 
  replacing them with assault frigates.

1.6.0 --- 2015/03/17
• Fixed a bug in the vsubtractV function in "utilfunc.lua".
• Added more debugging code to "levelfunc.lua".
• Added support for harvestable dust clouds. Thanks GearBox!
• Added support for harvestable nebula chunks. Thanks GearBox!
• Switched to GearBox's asteroids, and changed some of them to show up as 
  meshes in Sensors Manager.
• Increased pixel size of asteroids and pebbles so that they are more visible.
• Fixed a bug where some asteroids were not clickable using the mouse.
• New thumbnails and loading screens for each of the maps.
• Added support for my new number clouds.
• Added the Start With game rule.
• Increased the draw distance so that big maps are (slightly) more visible.
• Added the NebRatio variable to all the maps so that nebulae can be tweaked 
  independently of the other parameters.
• Included a number of scripts that were used to generate the level thumbnails.

1.5.2 --- 2015/03/07
• Added the remainder of the stock maps created by Relic and Barking Dog, as 
  well as a few stragglers that didn't get converted properly. This brings the 
  total to over 1400 maps!

1.5.1 --- 2015/03/06
• Fixed several maps that were not converting properly.
• Updated the ship, music and background conversion tables to reflect the new 
  races in Homeworld Remastered.

1.5.0 --- 2015/03/06
• Reconverted all the maps so that all of their 2, 4, 6 and 8 player variations 
  are included in the collection. That brings the total up to almost 1400 maps!
• Maps are now color coded based on the number of players in order to make 
  selecting them easier.

1.4.1 --- 2015/03/04
• Improved level thumbnails.
• Homeworld 2 Classic is no longer supported. If you want to play these maps in 
  HW2, then download my Homeworld Classic Enhanced mod instead. Homeworld 
  Classic Enhanced includes older versions of these maps. Once I convert my 
  Gameplay Enhanced mod over to HWRM I will merge these maps back into it. For 
  the time being, I just wanted to get the maps out there so people can play 
  using them.

1.4.0
• Tweaked the level thumbnails to fit in Homeworld Remastered UI screen.
• Temporarily disabled HW1-style map starting fleets. All this temporary stuff 
  will be reverted once/if I get my Gameplay Enhanced or Homeworld Classic 
  Enhanced mods ported to Homeworld Remastered. In the meantime the maps now 
  require the "Homeworld Classic Maps" gamerule in order to function. This is 
  because the maps require custom asteroid resources not provided by the base 
  game.

1.3.1
• Tweaked asteroid numbers so that hopefully there aren't any more maps with 
  too few (slow resourcing) or too many (lag and stuck collectors).
• Derelicts and non-player ships are now stored in separate tables.
• Level descriptions are now stored in a table.
• Non-player AI-owned ships contained in maps are no longer spawned. In HW1 
  these ships would respond intelligently to your presence by turning around 
  and attacking you. In HW2 all they do is sit there and cause additional lag.
• Squadron formation settings are now exported, though I haven't taken 
  advantage of them yet.

1.3.0
• Added 250 new maps!
• Some changes to map variables, meaning the previous version is no longer 
  compatible with HWC 1.6.0.
• Added support for Cata crystals.
• Fixed typos in background and music file names. Level script now also 
  recognizes Cata backgrounds and music.

1.2.0
• Updated all maps to use the latest versions of my map functions. Some 
  internal paths have also changed, but you won't notice this. Maps should be 
  compatible with version 1.6.0 of Homeworld Classic Rebalance. (They will as a 
  result no longer function with older versions of the mod.)

1.1.1
• I forgot. Re-converted all the maps using a later version of my map converter 
  most likely.

1.0.2
• All level files must now be located in the 
  "Data\LevelData\Multiplayer\HomeworldClassic\" folder.

1.0.1
• Renamed "HW1_CalculationError3.level" to "HW1_CalculationError4.level".
• Renamed "HW1_Front2.level" to "HW1_Frontier2.level".
• Removed "HW1_2DHelo2.level".
• Listed the default player races for each map in the level thumbnails.
• Included the default player race reference HTML file.
• Edited "BungleintheJungle2" to use R2 instead of R1.
• Edited "DRUNKEN PIRATES2" to use R2 instead of R1.
• Edited "EvolvedProteus4" to use R2 instead of R1.
• Edited "KadeshDuel2" to use R1 instead of R2.
• Edited "VortexBattle5" to use R2 instead of R1.

1.0.0
• Added 17 new maps that I had missed earlier.
• Reoved "Coliseum of the Ancients" and added it to the HW Classic Mod 
  Rebalance.
• Level thumbnails! With descriptions!

0.9.0
• All maps have been tested and are working (except for two, which will be 
  updated at some point in the future).
• Laggy maps and maps with overlapping resources have been tweaked so that this 
  does not occur any longer.
• Increased the default value of RUsRatio from 4 to 8.
• PebMulti is now set to RUsRatio / 4 by default.

0.8.2
• Removed ampersands from level names and descriptions.
• The archive now contains a "data" directory which must be copied into the 
  "Homeworld2" directory. This directory now contains the files 
  "IncFunctions.lua" and "IncVariables.lua" that were causing the game to crash 
  due to their being missing.

0.8.1
• "DragonDenII4", "Starpoint6", "Teelan's Ghost6" called for too many players.

0.8.0
• Initial release.
