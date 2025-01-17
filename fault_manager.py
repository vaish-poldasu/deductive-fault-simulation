from gatesdefine import gate_l_sim

def ip_F_set(wiren, logn):
    fault_set = set()
    if logn == 0:
        fault_set.add(f"{wiren}/1")
    else:
        fault_set.add(f"{wiren}/0")
    return list(fault_set)

def FS_c(tree, ip_vect, comp):
    st_val = tree["wrp"]["wire_val"][ip_vect]
    fault_sets = tree["wrp"]["list_f"][ip_vect]

    gate = comp["mod"]
    ip_nodes, ip_log, ip_F_sets, output = parse_component(comp, st_val, fault_sets)

    op_F_sim = gate_l_sim(gate, ip_nodes, ip_log, ip_F_sets, output)
    update_wrapper(tree, ip_vect, output, op_F_sim)

    return

def parse_component(comp, st_val, fault_sets):
    ip_nodes = []
    ip_log = []
    ip_F_sets = []
    output = None

    for port in comp["ports"]:
        if port["portname"] == "out":  # Output port
            output = port["argname"]
        else:  # Input ports
            ip_nodes.append(port["argname"])
            ip_log.append(st_val[port["argname"]])
            ip_F_sets.append(fault_sets[port["argname"]])

    return ip_nodes, ip_log, ip_F_sets, output

def update_wrapper(tree, ip_vect, output, op_F_sim):
    tree["wrp"]["wire_val"][ip_vect] = tree["wrp"]["wire_val"][ip_vect] | {
        output: op_F_sim["output_state"]
    }
    tree["wrp"]["list_f"][ip_vect] = tree["wrp"]["list_f"][ip_vect] | {
        output: op_F_sim["fault_set"]
    }
