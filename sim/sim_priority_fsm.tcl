

set rtl_files [list	../rtl/priority_fsm.sv ]
set top_design priority_fsm
set tb_files ./tb/priority_fsm_tb.sv
exec vcs -full64 -sverilog -debug_access -timescale=10ns/1ns -lca -kdb $rtl_files $tb_files -t $top_design +define+SIM_TASKS
