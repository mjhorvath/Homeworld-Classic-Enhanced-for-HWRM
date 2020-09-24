d:
cd "D:\GitHub\Homeworld-Classic-Enhanced-for-HWRM\source\build_research"
python.exe "BuildResearchGenerator.py" -source "hgn_bld_tsv.txt" -output lua -destination "i_want_out_lua.txt" -mode build
python.exe "BuildResearchGenerator.py" -source "hgn_res_tsv.txt" -output tsv -destination "i_want_out_tsv.txt" -mode research
pause
