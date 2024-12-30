# create_and_gate_project.tcl
# Create a new Quartus project named "and_gate"
project_new and_gate -overwrite

# Set the target device
set_global_assignment -name DEVICE EP4CE22F17C6

# Add the Verilog file to the project
set_global_assignment -name VHDL_FILE and_gate.v
