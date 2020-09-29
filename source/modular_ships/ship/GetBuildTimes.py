'''
@caption: Get SHIP and SUBS Build Times Script
@created: 2020-08-18
@updated: 2020-09-26
@authors: Michael Horvath
@license: CC BY
@version: 1.0.2
@note: This Python script file needs to run from within the "data\ship" or "data\subsystem" directory.
@note: The script searches for the parameter "buildTime" in SHIP or SUBS files.
@note: The script will append the output data to the file "buildtimes.csv".
@note: You can import the exported file into a spreadsheet such as Excel.
@syntax: python.exe "GetBuildTimes.py" -ship "tur_standardcorvette_hyp1"
@syntax: python.exe "GetBuildTimes.py" -subs "vgr_c_production_fighter_car0"
'''

import sys
import os

__appname__ = "GetBuildTimes"
__version__ = "1.0.2"

INT_SUBSTRING = -1

STR_OBJNAME = ''
STR_OBJPATH = ''
STR_OBJTEXT = ''
STR_OBJTYPE = ''
OBJ_OBJTABLE = []
OBJ_OBJFILE = None

STR_OUTPATH = 'buildtimes.tsv'
STR_OUTTEXT = ''
OBJ_OUTFILE = None

STR_NOTFOUND_MSG = "FileNotFoundError: [Errno 2] No such file or directory: '%s'"
STR_INVALIDACCESS_MSG = "ImportError: Invalid access to %s."

if __name__ == '__main__':
    INT_ARGNUM = sys.argv.__len__()

    if INT_ARGNUM != 3:
        print("Invalid arguments")
        sys.exit(2)

    STR_OBJTYPE = sys.argv[1].lower()
    STR_OBJNAME = sys.argv[2]
    STR_OBJPATH = STR_OBJNAME + '/' + STR_OBJNAME + '.' + STR_OBJTYPE

    if os.path.isfile(STR_OBJPATH):
        try:
            OBJ_OBJFILE = open(STR_OBJPATH, 'r')
            OBJ_OBJTABLE = OBJ_OBJFILE.readlines()
            OBJ_OBJFILE.close()
        except:
            print(INVALIDACCESS_MSG % STR_OBJPATH)
            sys.exit(2)
    else:
        print(STR_NOTFOUND_MSG % STR_OBJPATH)
        sys.exit(2)

#    print(STR_OBJPATH)

    if STR_OBJTYPE == '-ship':
        paramTarget = 'buildTime'
    elif STR_OBJTYPE == '-subs':
        paramTarget = 'timeToBuild'

    for line in OBJ_OBJTABLE:
        paramLength = len(paramTarget)
        paramIndex = line.find(paramTarget)
        if paramIndex != -1:
            newIndex = paramIndex + paramLength + 1
            INT_SUBSTRING = line[newIndex:-1]
            break

    STR_OUTTEXT = STR_OBJNAME + '\t' + INT_SUBSTRING + '\n'

    if os.path.isfile(STR_OUTPATH):
        print('Appending to file ' + STR_OUTPATH)
    else:
        print('Creating file ' + STR_OUTPATH)

    try:
        OBJ_OUTFILE = open(STR_OUTPATH, 'a')
        OBJ_OUTFILE.write(STR_OUTTEXT)
        OBJ_OUTFILE.close()
    except:
        print(INVALIDACCESS_MSG % STR_OUTPATH)
        sys.exit(2)
