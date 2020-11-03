d:
cd "D:\GitHub\Homeworld-Classic-Enhanced-for-HWRM\source\modular_ships\build_research"
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_bld.txt" -output tsv -destination "inp04_hgn_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_res.txt" -output tsv -destination "inp04_hgn_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_bld.txt" -output tsv -destination "inp04_vgr_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_res.txt" -output tsv -destination "inp04_vgr_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_kus_bld.txt" -output tsv -destination "inp04_kus_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_kus_res.txt" -output tsv -destination "inp04_kus_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_tai_bld.txt" -output tsv -destination "inp04_tai_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_tai_res.txt" -output tsv -destination "inp04_tai_res.tsv" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_hgn_bld.txt" -output simlua -destination "out_hgn_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_hgn_res.txt" -output simlua -destination "out_hgn_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_vgr_bld.txt" -output simlua -destination "out_vgr_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_vgr_res.txt" -output simlua -destination "out_vgr_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_kus_bld.txt" -output simlua -destination "out_kus_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_kus_res.txt" -output simlua -destination "out_kus_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_tai_bld.txt" -output simlua -destination "out_tai_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_tai_res.txt" -output simlua -destination "out_tai_res.lua" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_bld.txt" -output pip -destination "pip_hgn_bld.lua" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_res.txt" -output pip -destination "pip_hgn_res.lua" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_bld.txt" -output pip -destination "pip_vgr_bld.lua" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_res.txt" -output pip -destination "pip_vgr_res.lua" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_kus_bld.txt" -output pip -destination "pip_kus_bld.lua" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_kus_res.txt" -output pip -destination "pip_kus_res.lua" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_tai_bld.txt" -output pip -destination "pip_tai_bld.lua" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_tai_res.txt" -output pip -destination "pip_tai_res.lua" -mode research
pause
