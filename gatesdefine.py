def gate_l_sim(gate, ip, state_ip, ip_FL, op):
    ip_count = len(ip)
    op_FL = set()

    if gate == "and":
        state_op = all(state_ip)
        op_FL = ded_and(state_ip, ip_FL, op)

    elif gate == "or":
        state_op = any(state_ip)
        op_FL = ded_or(state_ip, ip_FL, op)

    elif gate == "nand":
        state_op = not all(state_ip)
        op_FL = ded_nand(state_ip, ip_FL, op)

    elif gate == "nor":
        state_op = not any(state_ip)
        op_FL = ded_nor(state_ip, ip_FL, op)

    elif gate == "not":
        state_op = not state_ip[0]
        op_FL = ded_not(state_ip, ip_FL, op)

    elif gate == "xor":
        state_op = sum(state_ip) % 2
        op_FL = ded_xor(state_ip, ip_FL, op)

    return {"output_state": int(state_op), "fault_set": list(op_FL)}


def ded_and(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if all(state == 1 for state in state_ip):
        op_FL.add(f"{op}/0")
    else:
        for i, state in enumerate(state_ip):
            if state == 0:
                op_FL.intersection_update(ip_FL[i])
            else:
                op_FL.difference_update(ip_FL[i])
        op_FL.add(f"{op}/1")
    return op_FL


def ded_or(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if all(state == 0 for state in state_ip):
        op_FL.add(f"{op}/1")
    else:
        for i, state in enumerate(state_ip):
            if state == 1:
                op_FL.intersection_update(ip_FL[i])
            else:
                op_FL.difference_update(ip_FL[i])
        op_FL.add(f"{op}/0")
    return op_FL


def ded_nand(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if all(state == 1 for state in state_ip):
        op_FL.add(f"{op}/1")
    else:
        for i, state in enumerate(state_ip):
            if state == 0:
                op_FL.intersection_update(ip_FL[i])
            else:
                op_FL.difference_update(ip_FL[i])
        op_FL.add(f"{op}/0")
    return op_FL


def ded_nor(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if all(state == 0 for state in state_ip):
        op_FL.add(f"{op}/0")
    else:
        for i, state in enumerate(state_ip):
            if state == 1:
                op_FL.intersection_update(ip_FL[i])
            else:
                op_FL.difference_update(ip_FL[i])
        op_FL.add(f"{op}/1")
    return op_FL


def ded_not(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if state_ip[0] == 0:
        op_FL.add(f"{op}/0")
    else:
        op_FL.add(f"{op}/1")
    return op_FL


def ded_xor(state_ip, ip_FL, op):
    op_FL = set.union(*(set(fault_set) for fault_set in ip_FL))
    if sum(state_ip) % 2 == 0:
        op_FL.add(f"{op}/1")
    else:
        op_FL.add(f"{op}/0")

    s1_fault = [fault for i, state in enumerate(state_ip) if state == 1 for fault in ip_FL[i]]
    s0_fault = [fault for i, state in enumerate(state_ip) if state == 0 for fault in ip_FL[i]]

    s1_fc = {fault: s1_fault.count(fault) for fault in set(s1_fault)}
    s0_fc = {fault: s0_fault.count(fault) for fault in set(s0_fault)}

    op_FL = rm_f(op_FL, s1_fc)
    op_FL = rm_f(op_FL, s0_fc)

    return op_FL


def rm_f(op_FL, fault_counts):
    for fault, count in fault_counts.items():
        if count % 2 == 0:
            op_FL.discard(fault)
    return op_FL
