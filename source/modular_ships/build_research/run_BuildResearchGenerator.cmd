d:
cd "D:\GitHub\Homeworld-Classic-Enhanced-for-HWRM\source\modular_ships\build_research"
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_bld.tsv" -output tsv -destination "out_hgn_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_hgn_res.tsv" -output tsv -destination "out_hgn_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_bld.tsv" -output tsv -destination "out_vgr_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_vgr_res.tsv" -output tsv -destination "out_vgr_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_kus_bld.tsv" -output tsv -destination "out_kus_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_kus_res.tsv" -output tsv -destination "out_kus_res.tsv" -mode research
::python.exe "BuildResearchGenerator.py" -source "inp_tai_bld.tsv" -output tsv -destination "out_tai_bld.tsv" -mode build
::python.exe "BuildResearchGenerator.py" -source "inp_tai_res.tsv" -output tsv -destination "out_tai_res.tsv" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_hgn_bld.tsv" -output simlua -destination "out_hgn_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_hgn_res.tsv" -output simlua -destination "out_hgn_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_vgr_bld.tsv" -output simlua -destination "out_vgr_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_vgr_res.tsv" -output simlua -destination "out_vgr_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_kus_bld.tsv" -output simlua -destination "out_kus_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_kus_res.tsv" -output simlua -destination "out_kus_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "inp_tai_bld.tsv" -output simlua -destination "out_tai_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "inp_tai_res.tsv" -output simlua -destination "out_tai_res.lua" -mode research
pause
