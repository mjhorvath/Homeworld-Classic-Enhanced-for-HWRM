d:
cd "D:\GitHub\Homeworld-Classic-Enhanced-for-HWRM\source\build_research"
::python.exe "BuildResearchGenerator.py" -source "org_hgn_bld_tsv.txt" -output tsv -destination "out_hgn_bld_tsv.txt" -mode build
::python.exe "BuildResearchGenerator.py" -source "org_hgn_res_tsv.txt" -output tsv -destination "out_hgn_res_tsv.txt" -mode research
::python.exe "BuildResearchGenerator.py" -source "org_vgr_bld_tsv.txt" -output tsv -destination "out_vgr_bld_tsv.txt" -mode build
::python.exe "BuildResearchGenerator.py" -source "org_vgr_res_tsv.txt" -output tsv -destination "out_vgr_res_tsv.txt" -mode research
::python.exe "BuildResearchGenerator.py" -source "org_kus_bld_tsv.txt" -output tsv -destination "out_kus_bld_tsv.txt" -mode build
::python.exe "BuildResearchGenerator.py" -source "org_kus_res_tsv.txt" -output tsv -destination "out_kus_res_tsv.txt" -mode research
::python.exe "BuildResearchGenerator.py" -source "org_tai_bld_tsv.txt" -output tsv -destination "out_tai_bld_tsv.txt" -mode build
::python.exe "BuildResearchGenerator.py" -source "org_tai_res_tsv.txt" -output tsv -destination "out_tai_res_tsv.txt" -mode research
python.exe "BuildResearchGenerator.py" -source "mod_hgn_bld_tsv.txt" -output lua -destination "out_hgn_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "mod_hgn_res_tsv.txt" -output lua -destination "out_hgn_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "mod_vgr_bld_tsv.txt" -output lua -destination "out_vgr_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "mod_vgr_res_tsv.txt" -output lua -destination "out_vgr_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "mod_kus_bld_tsv.txt" -output lua -destination "out_kus_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "mod_kus_res_tsv.txt" -output lua -destination "out_kus_res.lua" -mode research
python.exe "BuildResearchGenerator.py" -source "mod_tai_bld_tsv.txt" -output lua -destination "out_tai_bld.lua" -mode build
python.exe "BuildResearchGenerator.py" -source "mod_tai_res_tsv.txt" -output lua -destination "out_tai_res.lua" -mode research
pause
