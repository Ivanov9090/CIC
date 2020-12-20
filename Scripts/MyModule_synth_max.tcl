## Setup technology files
include ../Source/X-FAB_max.tcl
## Setup variables
set DESIGN CIC
set PARAMS {}
## Read in Verilog HDL files
read_hdl -v2001 ../Source/CIC_tc.v
read_hdl -v2001 ../Source/First_H2_z.v
read_hdl -v2001 ../Source/Second_H2_z.v
read_hdl -v2001 ../Source/H5_z.v
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
report area > ../Reports/Top_synth_area_report_max
report timing > ../Reports/Top_synth_timing_report_max
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Outputs/Synthesis/CIC_synth_max.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Outputs/Synthesis/CIC_out_max.sdc
gui_show

