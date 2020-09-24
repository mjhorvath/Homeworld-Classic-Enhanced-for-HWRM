set ScrPath=D:\Google Drive\Working\Homeworld\HW2_MapConverter\HW2_MapConverter.js
set SrcPath=D:\Google Drive\Working\Homeworld\HWR_HWClassicMaps\HWR_HWClassicMaps_source\Source
set OutPath=D:\Google Drive\Working\Homeworld\HWR_HWClassicMaps\HWR_HWClassicMaps_source\temp
cscript "%ScrPath%" "%SrcPath%\one1\one1.level" "%OutPath%\HW1_one1.level" -rus 1 -peb 3/4 -game HW1
cscript "%ScrPath%" "%SrcPath%\Warburtons4\Warburtons4.level" "%OutPath%\HW1_Warburtons4.level" -rus 1 -peb 3/4 -game HW1
pause
