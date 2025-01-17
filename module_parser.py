from pyverilog.vparser.ast import  (
    Source, ModuleDef, Decl, Input, Output, Inout, Reg, Wire,
    Assign, Lvalue, Rvalue, LConcat, Concat, Partselect,
    InstanceList, Instance, Always, BlockingSubstitution,
    NonblockingSubstitution, Identifier, Pointer,
    Uand, Ulnot, Uminus, Unand, Unor, Unot, Uor, Uplus, Uxnor, Uxor
)

def mod_init(modC, modCdict):
    if not isinstance(modC, ModuleDef):
        print("Error: Invalid modC type.")
        return

    for item in modC.items:
        if isinstance(item, Decl):
            decl(item, modCdict)

        elif isinstance(item, Assign):
            assig_s(item, modCdict)

        elif isinstance(item, InstanceList):
            inst_l(item, modCdict)

        elif isinstance(item, Always):
            blocks_al(item, modCdict)

        else:
            print("Error: Invalid item.")


def decl(item, modCdict):
    for cat in item.list:
        if isinstance(cat, Input):
            add_dict(cat, modCdict, "inputs")
        elif isinstance(cat, Output):
            add_dict(cat, modCdict, "outputs")
        elif isinstance(cat, Inout):
            add_dict(cat, modCdict, "inouts")
        elif isinstance(cat, Reg):
            add_dict(cat, modCdict, "registers")
        elif isinstance(cat, Wire):
            add_dict(cat, modCdict, "wires")
        else:
            print("Error: Invalid declaration type.")


def add_dict(cat, modCdict, key):
    signal = {"name": cat.name, "width": "1"}
    if cat.width is not None:
        val_l = cat.width.val_l.value
        val_m = cat.width.val_m.value
        signal.update({
            "width": str(abs(int(val_m) - int(val_l)) + 1),
            "val_l": val_l,
            "val_m": val_m
        })
    modCdict[key] = modCdict[key] + [signal]


def assig_s(item, modCdict):
    left, right = item.left, item.right
    if isinstance(left, Lvalue) and isinstance(right, Rvalue):
        if isinstance(left.var, LConcat) and isinstance(right.var, Concat):
            assig_c(left, right, modCdict)
        elif isinstance(left.var, LConcat) and isinstance(right.var, Partselect):
            assig_l_w(left, right, modCdict)
        elif isinstance(left.var, Partselect) and isinstance(right.var, Concat):
            assig_w_l(left, right, modCdict)
        else:
            modCdict["assis"].append(
                {"dest": left.var.name, "src": right.var.name}
            )
    else:
        
        print("Error: Invalid assign parameters.")


def assig_c(left, right, modCdict):
    if len(left.var.list) == len(right.var.list):
        for l, r in zip(left.var.list, right.var.list):
            dest = sig_n(l)
            src = sig_n(r)
            modCdict["assis"].append({"dest": dest, "src": src})
    else:
        print("Error: Mismatch in number of wires concatenated.")


def assig_l_w(left, right, modCdict):
    for idx, l in enumerate(left.var.list):
        dest = sig_n(l)
        src = f"{right.var.var.name}_{int(right.var.val_m.value) - idx}"
        modCdict["assis"].append({"dest": dest, "src": src})


def assig_w_l(left, right, modCdict):
    for idx, r in enumerate(right.var.list):
        dest = f"{left.var.var.name}_{int(left.var.val_m.value) - idx}"
        src = sig_n(r)
        modCdict["assis"].append({"dest": dest, "src": src})


def sig_n(var):
    if isinstance(var, Pointer):
        return f"{var.var.name}_{var.ptr.value}"
    return var.name


def inst_l(item, modCdict):
    for inst in item.instances:
        if isinstance(inst, Instance):
            comp = {
                "name": inst.name,
                "mod": inst.module,
                "ports": []
            }
            inst_p(inst, comp)
            modCdict["comps"].append(comp)
        else:
            print("Error: Invalid inst.")


def inst_p(inst, comp):
    for k, port in enumerate(inst.portlist):
        argname = sig_n(port.argname)
        portname = port.portname if inst.module not in gates_b else (
            "out" if k == 0 else f"in{k - 1}"
        )
        comp["ports"].append({"portname": portname, "argname": argname})


def blocks_al(item, modCdict):
    always_block = {"dpds": [], "stats": []}
    for dpd in item.sens_list.list:
        always_block["dpds"].append({
            "signal": dpd.sig.name,
            "type": dpd.type
        })
    for stat in item.stat.stats:
        if isinstance(stat, (BlockingSubstitution, NonblockingSubstitution)):
            alw_s(stat, always_block)
        else:
            print("Error: Invalid stat.")
    modCdict["always"].append(always_block)


def alw_s(stat, always_block):
    dest = sig_n(stat.left)
    src = sig_n(stat.right)
    stat_entry = {"dest": dest, "src": src}
    if stat.ldelay is not None:
        stat_entry["predelay"] = stat.ldelay.delay.value
    if stat.rdelay is not None:
        stat_entry["postdelay"] = stat.rdelay.delay.value
    always_block["stats"].append(stat_entry)

gates_b = {"not", "and", "or", "nand", "nor", "xor", "xnor"}

