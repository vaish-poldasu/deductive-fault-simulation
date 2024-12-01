# Deductive Fault Simulation for Digital Circuits

## Description
This project implements a **deductive fault simulation** framework for digital circuits written in **Verilog**. Using a **decision-tree-based method**, the system tracks fault propagation through logic gates, evaluates test patterns, and detects **stuck-at faults** in various parts of the circuit. The fault detection process relies on a structured analysis of the Verilog circuit, ensuring that test patterns can be used effectively to verify circuit behavior under faulty conditions.

## Features
- **Fault Propagation**: Simulates how faults propagate through the circuit based on the logic gates.
- **Test Pattern Evaluation**: Detects faults in the circuit using predefined test vectors.
- **Fault List Generation**: Generates a fault set for each primary input based on stuck-at faults.
- **Verilog Parsing**: Uses the `pyverilog` library to parse Verilog files into an Abstract Syntax Tree (AST), which is then used for simulation.
- **JSON Output**: Saves the results of the fault simulation in a structured JSON format for further analysis.

## Prerequisites

To run this project, ensure that you have the following prerequisites:

- **Python 3.x**: Make sure Python 3.x is installed on your system.
- **PyVerilog**: A Python library for parsing Verilog files.

### Installing Required Libraries

You can install the required Python library using `pip`:

```bash
pip install pyverilog
```

## Running the Code

### How to Run the Fault Simulation

To execute the deductive fault simulation, use the following command format:

```bash
python ded_fault_simulation.py <verilog_file> <wrapper_name> <test_count> <test_vectors> <output_json_file>
```
- **<verilog_file>**: The path to the Verilog file (e.g., c17.v). This file contains the digital circuit that you want to simulate for faults.
- **<wrapper_name>**: The name of the wrapper module in the Verilog file. This is the top-level module where the fault simulation starts.
- **<test_count>**: The number of test vectors to be applied (e.g., 3 if you are using 3 test vectors). This indicates how many distinct sets of input values will be tested in the simulation.
- **<test_vectors>**: The test vectors to be used for the fault simulation (e.g., 00000, 11111). These are the binary input patterns that will be applied to the circuit.
- **<output_json_file>**: The name of the output JSON file where the results of the fault simulation will be saved (e.g., output_c17.json). This file contains the results of the fault detection process.
### Example command
```bash
python main.py c17.v c17 2 00000 11111 output_c17.json
```

###Verification of the outputs
- Simulate the verilog circuit using its corresponding testbench circuit and record the fault-free output for all primary outputs.This serves as the reference for comparison when evaluating faults.
- For each potential fault detected through deductive fault simulation ,determined if the fault causes a primary output mismatch,if yes then the fault is detected.It is done using command
```bash
iverilog -o <output_name> <testbench_name>
vvp <output_name>
```
###Example command
```bash
iverilog -o c432.vvp c432_tb
vvp c432.vvp
```

