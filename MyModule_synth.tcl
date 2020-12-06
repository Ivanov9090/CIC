## Setup technology files
include ../Source/X-FAB_typ.tcl
## Setup variables
set DESIGN CIC
set PARAMS {}
## Read in Verilog HDL files
read_hdl -v2001 ../Source/CIC_tc.v
read_hdl -v2001 ../Source/First_H2_z.v
read_hdl -v2001 ../Source/Second_H2_z.v
read_hdl -v2001 ../Source/H5_z.v
# Delay modules
# Cancellation block module
# Clock modules
# Common modules
# CIC filter
# IIR filter
# Top module
read_hdl -v2001 ../Source/CIC.v
## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
read_sdc ../Source/CIC.sdc
## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report area > ../Reports/Top_synth_area_report
report timing > ../Reports/Top_synth_timing_report
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/Synthesis/CIC_synth.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Source/Synthesis/CIC_out.sdc
gui_show

