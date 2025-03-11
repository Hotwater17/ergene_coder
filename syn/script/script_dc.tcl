

define_design_lib work -path ./work
## Set this path to your synopsys installation
set SYNOPSYS /tools/Synopsys/syn/S-2021.06-SP3

source ./script/dc_setup.tcl


#Set the RTL (SystemVerilog) files
#set rtl 	 [list	../rtl/priority_fsm.sv ]
set rtl 	 [list	../rtl/encoder.sv ]

#Set the top module name 
#set top_design priority_fsm
set top_design encoder

analyze -format sverilog $rtl 
elaborate -architecture verilog $top_design  

check_mv_design -verbose
current_design $top_design
redirect -tee -file rpt/0_link.rpt {link}
check_mv_design
redirect -tee -file rpt/1_check_design {check_design}

redirect -tee -file rpt/2_source.rpt {source -echo -verbose cons/cons_dc.con}
redirect -tee -file rpt/3_check_timing.rpt {check_timing}
redirect -tee -file rpt/4_report.rpt {report_port -verbose}

redirect -tee -file rpt/5_compile.rpt {compile_ultra -no_autoungroup -no_boundary_optimization}
redirect -tee -file rpt/6_report_constraint.rpt {report_constraint -all_violators}
redirect -tee -file rpt/7_report_timing_setup.rpt {report_timing -max_path 50 -nworst 50 -delay_type max}
redirect -tee -file rpt/8_report_timing_hold.rpt {report_timing -max_path 50 -nworst 50 -delay_type min}
redirect -tee -file rpt/9_report_path_group.rpt {report_path_group}
redirect -tee -file rpt/10_report_area.rpt {report_area}
redirect -tee -file rpt/11_report_power.rpt {report_power -analysis_effort medium}
set verilogout_no_tri true
change_names -rules verilog -hierarchy



write -format verilog -hierarchy -output ./output/$top_design.v
write -format verilog -hierarchy -pg -output ./output/$top_design.pg.v
write -format ddc -hierarchy -output ./output/mapped.ddc


write_sdc ./output/$top_design.sdc
write_sdf ./output/$top_design.sdf

set_svf -off

gui_start
