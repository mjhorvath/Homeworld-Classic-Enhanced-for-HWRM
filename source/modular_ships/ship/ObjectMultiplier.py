'''
@caption: Object Multiplier
@created: 2020-08-18
@updated: 2020-09-17
@authors: Michael Horvath
@license: CC BY
@version: 1.1.2
@note: Creates multiple versions of a ship based on several gamerule parameters.
@note: This Python script needs to run from within the "data\ship" directory.
@note: The "base" Lua files for each ship must also be located in the "data\ship" directory.
@note: The script will overwrite existing files without asking permission first.
@syntax: python.exe "ObjectMultiplier.py" ship "hgn_carrier"  -car 0 -rch 1 -res 0 -hyp 1
'''

import sys
import os

__appname__ = 'Object Multiplier'
__version__ = '1.1.2'

STR_PARAMS = []
STR_VALUES = []
STR_SHIPNAME = ''
STR_BASENAME = ''
STR_OUTPATH = ''
STR_BASETEXT = ''
STR_OUTTEXT = ''
STR_OUTEXTN = ''
OBJ_BASEFILE = None
OBJ_OUTFILE = None

STR_NOTFOUND_MSG = 'FileNotFoundError: [Errno 2] No such file or directory: "%s"'
STR_INVALIDACCESS_MSG = 'ImportError: Invalid access to %s.'

if __name__ == '__main__':
    INT_ARGNUM = sys.argv.__len__()
    INT_ARGGAP = 3

    if INT_ARGNUM < 3 or INT_ARGNUM % 2 == 0:
        print('Invalid arguments')
        sys.exit(2)

    for INT_I in range(INT_ARGGAP, INT_ARGNUM):
        STR_ARGTEXT = sys.argv[INT_I]
        if INT_I % 2 == 1:
            if STR_ARGTEXT[0:1] != '-':
                print('Invalid arguments: missing hyphen')
                sys.exit(2)
            STR_PARAMS.append(STR_ARGTEXT[1:])
        else:
            if STR_ARGTEXT != '0' and STR_ARGTEXT != '1':
                print('Invalid arguments: incorrect value')
                sys.exit(2)
            STR_VALUES.append(STR_ARGTEXT)

    STR_OUTEXTN = sys.argv[1]
    STR_SHIPNAME = sys.argv[2]
    STR_BASENAME = STR_SHIPNAME + '_base.lua'

    if os.path.isfile(STR_BASENAME):
        try:
            OBJ_BASEFILE = open(STR_BASENAME,'r')
            STR_BASETEXT = OBJ_BASEFILE.read()
            OBJ_BASEFILE.close()
        except:
            print(INVALIDACCESS_MSG % STR_BASENAME)
            sys.exit(2)
    else:
        print('File "' + STR_BASENAME + '" not found.')
        sys.exit(2)

    STR_OUTNAME = STR_SHIPNAME
    for INT_I in range(len(STR_PARAMS)):
        STR_PARAM = STR_PARAMS[INT_I]
        STR_VALUE = STR_VALUES[INT_I]
        STR_OUTNAME += '_' + STR_PARAM + STR_VALUE
        STR_OUTTEXT += STR_PARAM + 'Bool = ' + STR_VALUE + '\n'

    STR_OUTTEXT += '\n' + STR_BASETEXT + '\n'
    STR_OUTPATH = STR_OUTNAME + '/' + STR_OUTNAME + '.' + STR_OUTEXTN

    if not os.path.isdir(STR_OUTNAME):
        os.mkdir(STR_OUTNAME)
    try:
        OBJ_OUTFILE = open(STR_OUTPATH,mode='w',newline='\r\n') 
        OBJ_OUTFILE.write(STR_OUTTEXT)
        OBJ_OUTFILE.close()
    except:
        print(INVALIDACCESS_MSG % STR_BASENAME)
        sys.exit(2)
