from fault_manager import ip_F_set

def ip_vect_c(tree, tst_n, mod_wrp):
    if is_ip_tst_valid(tree, tst_n, mod_wrp):
        tst_ip = tstp_c(tree, tst_n, mod_wrp)
        if tst_ip is None:
            return

        add_test(tree, tst_n, tst_ip)
        FL_c(tree, tst_n, tst_ip, mod_wrp)
        return
    else:
        print("Ignoring pattern due to Invalid length given", tst_n)
        return


def is_ip_tst_valid(tree, tst_n, mod_wrp):
    return len(tst_n) == len(tree["mods"][mod_wrp]["inputs"])


def tstp_c(tree, tst_n, mod_wrp):
    tst_ip = {}
    for j in range(len(tree["mods"][mod_wrp]["inputs"])):
        input = tree["mods"][mod_wrp]["inputs"][j]

        if tst_n[j] not in ["0", "1"]:
            print("Invalid input in tst_n vector", tst_n)
            return None
        tst_ip[input["name"]] = int(tst_n[j])
    
    return tst_ip


def add_test(tree, tst_n, tst_ip):
    tree["wrp"]["test_vectors"] = tree["wrp"]["test_vectors"] + [tst_n]
    tree["wrp"]["wire_val"][tst_n] = tst_ip


def FL_c(tree, tst_n, tst_ip, mod_wrp):
    fault_lists = {}
    for input in tree["mods"][mod_wrp]["inputs"]:
        fault_lists[input["name"]] = ip_F_set(input["name"], tst_ip[input["name"]])
    
    tree["wrp"]["list_f"][tst_n] = fault_lists
