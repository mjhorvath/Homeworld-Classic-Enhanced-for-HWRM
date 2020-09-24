for %%f in (..\tga\*.tga) do (
    "C:\Program Files\NVIDIA Corporation\NVIDIA Texture Tools 2\bin\nvcompress.exe" -color -rgb -bc1 "..\tga\%%~nf.tga" "..\dds\%%~nf.dds"
)
pause
