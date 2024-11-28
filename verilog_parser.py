import re

# parse verilog files to get cell counts

# module_name inst_name(args);
# regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\([\w\n\s,.()\[\]\\{}:]*?\);
# new regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);

inst_regex = re.compile(r"^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);", re.MULTILINE)

# treat every module seperately
def read_output(filename):
    cell_counts = {}
    with open(filename, 'r') as f:
        matches = re.findall(inst_regex, f.read())
        for match in matches:
            module_name = match[0].strip()
            if module_name == 'module':
                continue
            if module_name not in cell_counts:
                cell_counts[module_name] = 0
            cell_counts[module_name] += 1
    return cell_counts

def merge_dicts(list_of_dicts):
    N = len(list_of_dicts)
    final_dict = {}
    for i in range(N):
        l = list_of_dicts[i]
        for key in l.keys():
            if key not in final_dict:
                final_dict[key] = [0]*N
            final_dict[key][i] = l[key]
    return final_dict

print(read_output('UART/output/1output.v'))

