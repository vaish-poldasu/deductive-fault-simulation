from pyverilog.vparser.ast import Source
from module_init import temp_c
from module_parser import mod_init
from fault_manager import FS_c
from test_vector import ip_vect_c
from pyverilog.vparser.ast import Source, ModuleDef

def in_m(dec_t, modC):
    if isinstance(modC, ModuleDef):
        if modC.name not in dec_t["mods"]:
            modCdict = temp_c(modC.name)
            mod_init(modC, modCdict)
            add_m(dec_t, modC, modCdict)
    else:
        print("Error: Module Issue")


def add_m(dec_t, modC, modCdict):
    dec_t["mods"] = dec_t["mods"] | {modC.name: modCdict}


def dec_tree(ast, mod_wrp: str, test_list: list):
    if isinstance(ast, Source):
        dec_t = tree_init()
        
        for definition in ast.description.definitions:
            in_m(dec_t, definition)

        if mod_wrp in dec_t["mods"]:
            wrp_init(dec_t, mod_wrp, test_list)
        else:
            print("Error:Wrapper Issue")
            return None

        return dec_t
    else:
        return None


def tree_init():
    treeKeys = ["mods", "comps", "wrp"]
    return dict.fromkeys(treeKeys, {})


def wrp_init(dec_t, mod_wrp, test_list):
    dec_t["wrp"] = {
        "name_mod": mod_wrp,
        "test_vectors": [],
        "wire_val": {},
        "list_f": {}
    }

    for test in test_list:
        ip_vect_c(dec_t, test, mod_wrp)


def tran_dec_tree(dec_t, wrp, vector):
    for item in dec_t["mods"][wrp]["comps"]:
        if is_gate(item["mod"]):
            FS_c(dec_t, vector, item)
    return


def is_gate(name_mod):
    gates_all = {"not", "and", "or", "nand", "nor", "xor", "xnor"}
    return name_mod in gates_all


