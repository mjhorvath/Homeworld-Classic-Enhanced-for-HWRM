::Place the Python script into the SHIP or SUBSYSTEM directory.
copy NUL buildtimes.tsv
python.exe "GetBuildTimes.py" subs "vgr_c_production_corvette_car0"
python.exe "GetBuildTimes.py" subs "vgr_c_production_corvette_car1"
python.exe "GetBuildTimes.py" subs "vgr_c_production_fighter_car0"
python.exe "GetBuildTimes.py" subs "vgr_c_production_fighter_car1"
pause
