import re
import json

# parse verilog files to get cell counts

# module_name inst_name(args);
# regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\([\w\n\s,.()\[\]\\{}:]*?\);
# new regex: ^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);

inst_regex = re.compile(r"^[\n\s]*([\w]+)[\n\s]+([\w\\\[\]]+)[\n\s]*\((.|\n)*?\);", re.MULTILINE)
module_regex = re.compile(r"^module\s+(.+?)\(", re.MULTILINE)

# get all module names in the verilog file
def get_modules(filename):
    modules = []
    with open(filename, 'r') as f:
        for match in re.finditer(module_regex, f.read()):
            modules.append(match[1].strip())
    return modules

# flatten a given hierarchial netlist count
def flatten_netlist(hierarchy_dict):
    def flatten_module(module_name, module_data):
        if not isinstance(module_data, list):
            return module_data
        
        is_leaf, contents = module_data
        if is_leaf:
            return contents
        
        flat_counts = {}
        for submodule_name, count in contents.items():
            # if not in hierarchy_dict, then this is a cell
            # just add the value
            if submodule_name not in hierarchy_dict:
                flat_counts[submodule_name] = flat_counts.get(submodule_name, 0) + count
                continue
            
            submodule_cells = flatten_module(submodule_name, hierarchy_dict[submodule_name])
            
            for cell, cell_count in submodule_cells.items():
                flat_counts[cell] = flat_counts.get(cell, 0) + cell_count * count
                
        return flat_counts

    top_module = list(hierarchy_dict.keys())[-1]
    return flatten_module(top_module, hierarchy_dict[top_module])

# parse counts of different cells in a netlist
def parse_counts_netlist(filename):
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

    return flatten_netlist(module_cell_counts)

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

print("2")
print(json.dumps(parse_counts_netlist('iscas85/output/1output.v'), indent=4))
print("8")
print(json.dumps(parse_counts_netlist('iscas85/output/8output.v'), indent=4))

print(parse_counts_netlist('iscas85/output/1output.v') == parse_counts_netlist('iscas85/output/8output.v'))
