import sys
import os
import json
from pyverilog.vparser.parser import parse
from decision_tree import dec_tree, tran_dec_tree

def ded_S(ckt_v, tst_ip, wrp, output_file):
    ast, directives = parse(ckt_v)
    tree = dec_tree(ast, wrp, tst_ip)
    
    with open(output_file, 'w') as text_output_fp:
        for test in tree["wrp"]["test_vectors"]:
            tran_dec_tree(tree, wrp, test)
            
            ff_fault_l = set()
            for output in tree["mods"][wrp]["outputs"]:
                ff_fault_l.update(set(tree["wrp"]["list_f"][test][output["name"]]))
            
            # print("Test Pattern Entered:\n", test)
            # output = "Fault set which is detected: " + ", ".join(fault.replace('/', ' stuck at ') for fault in ff_fault_l)
            # print(output)
            # text_output_fp.write(output + '\n') 
            print("Test Pattern Entered:\n", test)
            output = "Fault set which is detected: " + ", ".join(f"{fault.split('/')[0]}/{fault.split('/')[1]}" for fault in ff_fault_l)
            print(output)
            text_output_fp.write(output + '\n')
            
    return tree

def main():
   
    ckt_v = open(sys.argv[1])
    wrapper_name = sys.argv[2]
    test_count = int(sys.argv[3])
    tst_ip = sys.argv[4:4+test_count]
    output_file = sys.argv[-2]  

    verilog_filename = sys.argv[1]
    base_name = os.path.splitext(os.path.basename(verilog_filename))[0]  
    text_file = f"{base_name}.txt"  
    decision_tree = ded_S(ckt_v, tst_ip, wrapper_name, text_file)
    
    if decision_tree:
        with open(output_file, "w") as json_output_fp:
            json.dump(decision_tree, json_output_fp)

if __name__ == "__main__":
    main()