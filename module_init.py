def temp_c(comp_n: str):
    sets_n = sets_n_f()
    comp_temp = comp_temp_init(comp_n, sets_n)
    
    return comp_temp


def sets_n_f():
    return [
        "inputs",
        "outputs",
        "inouts",
        "wires",
        "registers",
        "comps",
        "assis",
        "always",
    ]


def comp_temp_init(comp_n, sets_n):
    return {"name": comp_n} | dict.fromkeys(sets_n, [])



