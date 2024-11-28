import re
import json

# parse verilog files to get cell counts

# module_name inst_name(args);
# regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\([\w\n\s,.()\[\]\\{}:]*?\);
# new regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);

inst_regex = re.compile(r"^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);", re.MULTILINE)
module_regex = re.compile(r"^module\s+(.+?)\(", re.MULTILINE)

def get_modules(filename):
    modules = []
    with open(filename, 'r') as f:
        for match in re.finditer(module_regex, f.read()):
            modules.append(match[1].strip())
    return modules

# replace a module with it's components in another module
def flatten_module_count(module_flatten, module_replace, module_replace_dict):
    if module_replace not in module_flatten:
        return module_flatten, False
    count = module_flatten.pop(module_replace)
    for key, value in module_replace_dict:
        if key not in module_flatten:
            module_flatten[key] = 0
        module_flatten[key] += count*value
    return module_flatten, True

# treat every module seperately
def read_output_netlist(filename):
    # get all verilog modules
    modules = get_modules(filename)

    module_cell_counts = {  }

    curr_module = ''

    with open(filename, 'r') as f:
        matches = re.findall(inst_regex, f.read())
        for match in matches:
            module_name = match[0].strip()
    
            if module_name == 'module':
                curr_module = match[1].strip()
                module_cell_counts[curr_module] = [ True, {} ]
                continue
    
            if module_name not in module_cell_counts[curr_module][1]:
                module_cell_counts[curr_module][1][module_name] = 0
            
            module_cell_counts[curr_module][1][module_name] += 1
            
            if module_name in modules:
                module_cell_counts[curr_module][0] = False
    
    flat_modules = [ mcc for mcc in module_cell_counts if mcc[0] ]
    hier_modules = [ mcc for mcc in module_cell_counts if mcc[1] ]

    for hier_m in 

    return module_cell_counts

#def merge_dicts(list_of_dicts):
#    N = len(list_of_dicts)
#    final_dict = {}
#    for i in range(N):
#        l = list_of_dicts[i]
#        for key in l.keys():
#            if key not in final_dict:
#                final_dict[key] = [0]*N
#            final_dict[key][i] = l[key]
#    return final_dict

print(json.dumps(read_output_netlist('UART/output/1output.v'), indent=4))

