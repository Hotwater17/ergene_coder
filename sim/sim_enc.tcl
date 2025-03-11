

set rtl_files [list	../rtl/encoder.sv ]
set top_design encoder
set tb_files ./tb/enc_tb.sv
exec vcs -full64 -sverilog -debug_access -timescale=10ns/1ns -lca -kdb $rtl_files $tb_files -t $top_design +define+SIM_TASKS
