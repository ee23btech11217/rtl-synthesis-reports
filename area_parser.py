import re

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
    return [subblock for subblock in subblocks if subblock[-1] == maxHier]

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
            return int(matches.group(0).strip().split()[-2]), True
        
        return int(match.removesuffix('ps')), False



#print(parse_area_report('UART/reports/1report_area.rpt'))
print(parse_timing_report('iscas85/reports/1report_timing.rpt'))
