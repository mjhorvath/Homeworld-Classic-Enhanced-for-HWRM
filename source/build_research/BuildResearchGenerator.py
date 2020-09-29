'''
@caption: Build Research Generator
@created: 2020-09-22
@updated: 2020-09-26
@authors: Michael Horvath
@license: CC BY
@version: 1.0.1
@note: Generates Lua build and research scripts from TSV (tab-separated value) files exported from Excel.
@note: 
@note: 
@note: 
@syntax: python.exe "BuildResearchSpawner.py" -source "hgn_bld.txt" -destination "i_want_out_lua.txt" -output lua -mode build
@syntax: python.exe "BuildResearchSpawner.py" -source "hgn_res.txt" -destination "i_want_out_tsv.txt" -output tsv -mode research
@todo: Possibly edit required subsystems depending on what is needed by game rule.
@todo: Possibly make sorting optional.
'''

import sys
import os
import csv
import copy

__appname__ = 'Build Research Generator'
__version__ = '1.0.1'

INPPATH = ''
OUTPATH = ''
OUTFORM = ''
INPMODE = ''

STR_INVALIDACCESS_MSG = 'ImportError: Invalid access to %s.'

def list_sort_func(e):
  return e[0]

def num_to_bits(num, bits):
    t = []
    for b in range(bits, 0, -1):
        rest = num % 2
        t.insert(b, int(rest))
        num = (num - rest)/2
    if num == 0:
        return t
    else:
        print("Not enough bits to represent this number: num = " + str(num))
        return None

def format_param_list(t):
    out = ''
    length = len(t)
    count = 1
    for i in t:
        out += i
        if count < length:
            out += ','
        count += 1
    return out

# removes subsystem requirements when dictated by gamerule
# only used for builds at the moment
def fix_subsys_reqs(dict_val, param_list, tmp_bits):
    subs = {
        'car':[],                                       # tempted to add CapShipProduction, not sure
        'rch':['AdvancedResearch','Research'],          # potential false match if Research appears before AdvancedResearch
        'res':[],
        'hyp':['Hyperspace'],
    }
    if dict_val != '':
        for i in range(len(param_list)):
            this_para = param_list[i]
            this_subs = subs[this_para]
            this_bits = tmp_bits[i]
            if this_bits == 0:
                for j in this_subs:
                    str_start = dict_val.find(j)
                    str_length = len(j)
                    if j == dict_val:
                        dict_val = ''
                        break
                    elif str_start != -1:
                        if str_start == 0:
                            dict_val = dict_val[str_length + 3:]
                        else:
                            dict_val = dict_val[:str_start] + dict_val[str_start + str_length + 3:]
    return dict_val

# reads and processes input tab-deliminated text and outputs Python list and dictionaries
def process_input():
    BIGLIST = []
    with open(INPPATH) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter = '\t')
        row_count = 0
        for row in csv_reader:
            BIGLIST.append({})
            if row[0] == '':
                row_param = []
            else:
                row_param = row[0].split(',')
            row_desti = row[1]
            BIGLIST[row_count]['row_param'] = row_param
            BIGLIST[row_count]['row_desti'] = row_desti
            cell_count = 0
            for cell in row:
                if cell_count >= 2 and (cell_count-2) % 3 == 2:
                    dict_key = row[cell_count-2]
                    dict_val = row[cell_count-1]
                    dict_typ = row[cell_count]
                    if dict_key != '':
                        BIGLIST[row_count][dict_key] = [dict_val, dict_typ]
                cell_count += 1
            row_count += 1
    return BIGLIST

# outputs tab-separated values formatted the same as the spreadsheet, sorted
def out_tsv(BIGLIST):
    OUTTEXT = ''
    for i in BIGLIST:
        # param list first
        for j in i:
            if j == 'row_param':
                OUTTEXT += format_param_list(i[j]) + '\t'
                break
        # file name second
        for j in i:
            if j == 'row_desti':
                OUTTEXT += i[j] + '\t'
                break
        # then all the other fields
        for j in sorted(i):
            if j != 'row_param' and j != 'row_desti':
                OUTTEXT += j + '\t' + i[j][0] + '\t' + i[j][1] + '\t'
        OUTTEXT += '\n'
    return OUTTEXT

# outputs Lua table, one entry per each ship variation, sorted
def res_lua(BIGLIST):
    OUTTEXT = INPMODE + ' =\n{\n'
    row_count = 0
    for i in BIGLIST:
        print('row_count = ' + str(row_count + 1))

        # param list
        param_list = None
        for j in i:
            if j == 'row_param':
                param_list = i[j]
                break
        num_bits = len(param_list)
        num_digi = 2 ** num_bits

        # pass 1
        # file name as part of a leading comment
        for j in i:
            if j == 'row_desti':
                OUTTEXT += '\t-- #' + str(row_count + 1) + '.0, ' + i[j] + '\n'
                break

        # then the actual table
        OUTTEXT += '\t{\n'
        for j in sorted(i):
            if j != 'row_param' and j != 'row_desti':
                dict_key = j
                dict_val = i[j][0]
                dict_typ = i[j][1]
                OUTTEXT += '\t\t' + dict_key + ' = '
                if dict_typ == 'string':
                    OUTTEXT += '"' + dict_val + '"'
                else:
                    OUTTEXT += dict_val
                OUTTEXT += ',\n'
        OUTTEXT += '\t},\n'

        if num_bits > 0:
            for k in range(num_digi):
                #print('k = ' + str(k) + '; num_bits = ' + str(num_bits))
                tmp_bits = num_to_bits(k, num_bits)

                name_suffix = ''
                for j in range(num_bits):
                    name_suffix += '_' + param_list[j] + str(int(tmp_bits[j]))

                new_i = copy.deepcopy(i)
                new_i['Name'][0]                = i['Name'][0] + name_suffix
                new_i['RequiredResearch'][0]    = i['Name'][0]
                new_i['RequiredSubSystems'][0]  = ''
                new_i['Cost'][0]				= '0'
                new_i['Time'][0]				= '0'
                new_i['DisplayedName'][0]		= ''
                new_i['DisplayPriority'][0]	    = '0'               # will a zero here mess things up?
                new_i['Description'][0]		    = 'Instant Tech'    # to localize?
                if new_i['TargetType'][0] == 'Ship':
                    new_i['TargetName'][0]			= i['TargetName'][0] + name_suffix

                # pass 2
                # file name as part of a leading comment
                for j in new_i:
                    if j == 'row_desti':
                        OUTTEXT += '\t-- #' + str(row_count + 1) + '.' + str(k + 1) + ', ' + i[j] + '\n'
                        break

                # then the actual table
                OUTTEXT += '\t{\n'
                for j in sorted(new_i):
                    if j != 'row_param' and j != 'row_desti':
                        dict_key = j
                        dict_val = new_i[j][0]
                        dict_typ = new_i[j][1]
                        OUTTEXT += '\t\t' + dict_key + ' = '
                        if dict_typ == 'string':
                            OUTTEXT += '"' + dict_val + '"'
                        else:
                            OUTTEXT += dict_val
                        OUTTEXT += ',\n'
                OUTTEXT += '\t},\n'

        row_count += 1
    OUTTEXT += '}\n'
    return OUTTEXT

# outputs Lua table, one entry per each ship variation, sorted
def bld_lua(BIGLIST):
    OUTTEXT = INPMODE + ' =\n{\n'
    row_count = 0
    for i in BIGLIST:
        print('row_count = ' + str(row_count + 1))

        # param list
        param_list = None
        for j in i:
            if j == 'row_param':
                param_list = i[j]
                break
        num_bits = len(param_list)
        num_digi = 2 ** num_bits

        if num_bits > 0:
            for k in range(num_digi):
                tmp_bits = num_to_bits(k, num_bits)

                name_suffix = ''
                for j in range(num_bits):
                    name_suffix += '_' + param_list[j] + str(tmp_bits[j])

                new_i = copy.deepcopy(i)
                new_i['ThingToBuild'][0]        = i['ThingToBuild'][0] + name_suffix

                # file name as part of a leading comment
                for j in new_i:
                    if j == 'row_desti':
                        OUTTEXT += '\t-- #' + str(row_count + 1) + '.' + str(k + 1) + ', ' + i[j] + '\n'
                        break

                # then the actual table
                OUTTEXT += '\t{\n'
                for j in sorted(new_i):
                    if j != 'row_param' and j != 'row_desti':
                        dict_key = j
                        dict_val = new_i[j][0]
                        dict_typ = new_i[j][1]
                        if dict_key == 'RequiredFleetSubSystems' or dict_key == 'RequiredShipSubSystems':
                            dict_val = fix_subsys_reqs(dict_val, param_list, tmp_bits)
                        OUTTEXT += '\t\t' + dict_key + ' = '
                        if dict_typ == 'string':
                            OUTTEXT += '"' + dict_val + '"'
                        else:
                            OUTTEXT += dict_val
                        OUTTEXT += ',\n'
                OUTTEXT += '\t},\n'
        else:
            new_i = copy.deepcopy(i)

            # file name as part of a leading comment
            for j in new_i:
                if j == 'row_desti':
                    OUTTEXT += '\t-- #' + str(row_count + 1) + '.0, ' + i[j] + '\n'
                    break

            # then the actual table
            OUTTEXT += '\t{\n'
            for j in sorted(new_i):
                if j != 'row_param' and j != 'row_desti':
                    dict_key = j
                    dict_val = new_i[j][0]
                    dict_typ = new_i[j][1]
                    if dict_key == 'RequiredFleetSubSystems' or dict_key == 'RequiredShipSubSystems':
                        dict_val = fix_subsys_reqs(dict_val, param_list, tmp_bits)
                    OUTTEXT += '\t\t' + dict_key + ' = '
                    if dict_typ == 'string':
                        OUTTEXT += '"' + dict_val + '"'
                    else:
                        OUTTEXT += dict_val
                    OUTTEXT += ',\n'
            OUTTEXT += '\t},\n'

        row_count += 1
    OUTTEXT += '}\n'
    return OUTTEXT

if __name__ == '__main__':

    # process command line

    INT_ARGNUM = sys.argv.__len__() - 1
    INT_ARGGAP = 1

    if INT_ARGNUM != (9 - 1):
        print('Invalid number of arguments.')
        sys.exit(2)

    for INT_I in range(INT_ARGGAP, INT_ARGNUM):
        STR_ARGPARAM = sys.argv[INT_I].lower()
        STR_ARGVALUE = sys.argv[INT_I+1].lower()
        if STR_ARGPARAM == '-source':
            INPPATH = STR_ARGVALUE
        elif STR_ARGPARAM == '-destination':
            OUTPATH = STR_ARGVALUE
        elif STR_ARGPARAM == '-output':
            OUTFORM = STR_ARGVALUE
        elif STR_ARGPARAM == '-mode':
            INPMODE = STR_ARGVALUE

    if INPMODE != 'research' and INPMODE != 'build':
        print('Needs to specify -research or -build in command line.')
        sys.exit(2)
    if OUTFORM != 'lua' and OUTFORM != 'tsv':
        print('Need to specify lua or tsv as -mode.')
        sys.exit(2)

    # start doing stuff here

    BIGLIST = process_input()

    if OUTFORM == 'tsv':
        STR_OUTTEXT = out_tsv(BIGLIST)
    elif OUTFORM == 'lua':
        if INPMODE == 'research':
            STR_OUTTEXT = res_lua(BIGLIST)
        elif INPMODE == 'build':
            STR_OUTTEXT = bld_lua(BIGLIST)

    STR_OUTPATH = OUTPATH
    try:
        OBJ_OUTFILE = open(STR_OUTPATH, mode='w', newline='\r\n') 
        OBJ_OUTFILE.write(STR_OUTTEXT)
        OBJ_OUTFILE.close()
    except:
        print(INVALIDACCESS_MSG % STR_OUTPATH)
        sys.exit(2)
