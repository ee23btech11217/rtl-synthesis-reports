import re

naming_conv = {
"1": "slow-100MHz",
"2": "fast-100MHz",
"3": "fast_hvt-100MHz",
"4": "slow_hvt-100MHz",
"5": "fast_lvt-100MHz",
"6": "slow_lvt-100MHz",
"7": "slow-400MHz",
"8": "fast-400MHz",
"9": "fast_hvt-400MHz",
"10": "slow_hvt-400MHz",
"11": "fast_lvt-400MHz",
"12": "slow_lvt-400MHz",
}

def parse_area_table_row(line:str):

    leading_spaces = len(line) - len(line.lstrip())
    hierarchy_depth = leading_spaces // 2

    tokens = line.split()

    # if tokens[1] contains only digits
    # then it is the cell count value, and module was skipped
    if(tokens[1].strip().isdigit()):
        return ( tokens[0], "", float(tokens[4].strip()), hierarchy_depth )
    else:
        return ( tokens[0], tokens[1], float(tokens[5].strip()), hierarchy_depth )
def parse_area_report(filename):
    subblocks = []
    maxHier = 0
    with open(filename, 'r') as f:
        for line in f.readlines()[12:]:
            if not line or line.isspace():
                continue
            if line.strip() == '(D) = wireload is default in technology library':
                continue
            subblocks.append(parse_area_table_row(line))
            if subblocks[-1][3] > maxHier:
                maxHier = subblocks[-1][3]
    return subblocks, maxHier

# returns tuple of timing data, data type, if data type is true then the given timing info is slack
def parse_timing_report(filename):
    time_regex = re.compile(r"Timing slack\s*\:\s*(.*)")
    time_regex_uc = re.compile(r"out port(.*)")
    with open(filename, 'r') as f:
        file = f.read()
        matches = re.search(time_regex, file)
        if not matches:
            print("[Report Parser] Note: unexpected report with no timing slack data, skipping report")
            return None
        if len(matches.groups()) > 1:
            print("[Report Parser] Note: unexpected report with multiple timing slacks, skipping report")
            return None
        match = matches.group(1).strip()

        if match == 'UNCONSTRAINED':
            matches = re.search(time_regex_uc, file)
            return int(matches.group(0).strip().split()[-2]), False
        
        return int(match.removesuffix('ps')), True
def parse_power_report(filename):
    subblocks = []
    maxHier = 0
    with open(filename, 'r') as f:
        for line in f.readlines()[5:-1]:
            if not line or line.isspace():
                continue
            if len(set(line)) == 1 and line[0] == '-':
                continue
            line = line.strip()
            subblocks.append(( line.split()[-1], float(line.split()[-3]), int(line.split()[-2]) ))
            if subblocks[-1][-1] > maxHier:
                maxHier = subblocks[-1][-1]
    return subblocks

# parse all reports of the given folder, for given config
def parse_reports(folder:str, config:str):
    area_info, maxHier = parse_area_report(f'{folder}/reports/{config}report_area.rpt')
    timing_info, timing_type = parse_timing_report(f'{folder}/reports/{config}report_timing.rpt')
    power_info = parse_power_report(f'NEWPOWER/{folder}/reports/{config}report_power.rpt')

    tot_area = area_info[0][2]
    # timing_type is True, then this is slack
    # find freq of clock and find the delay
    if timing_type:
        if '100MHz' in naming_conv[config]:
            timing_info = 10000 - timing_info
        elif '400MHz' in naming_conv[config]:
            timing_info = 2500 - timing_info
    tot_power = power_info[0][1]

    area_subblocks = [ s for s in area_info if s[-1] == maxHier ]
    power_subblocks = [ s for s in power_info if s[-1] == maxHier ]
    
    max_area = max(area_subblocks, key=lambda item: item[2])
    max_power = max(power_subblocks, key=lambda item: item[1])

    print(tot_area, timing_info, tot_power)
    print(max_area, max_power)


#print(parse_area_report('UART/reports/1report_area.rpt'))
#print(parse_timing_report('iscas85/reports/1report_timing.rpt'))
#print(parse_power_report('NEWPOWER/UART/reports/1report_power.rpt'))

parse_reports('itc99/b14', '1')


