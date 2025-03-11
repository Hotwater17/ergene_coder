module priority_fsm_tb(
);


logic clk_i;
logic resetn_i;

logic [15:0]    ch_sel_i;
logic           arm_i;
logic           dump_i;
logic           disable_i;
logic           inter_i;

wire [15:0]     ch_sel_o;
wire            cycle_done_o;
wire            idle_sm_o;


priority_fsm uut(
    .clk_i(clk_i),
    .resetn_i(resetn_i),
    .ch_sel_i(ch_sel_i),
    .arm_i(arm_i),
    .dump_i(dump_i),
    .inter_i(inter_i),
    .disable_i(disable_i),
    .ch_sel_o(ch_sel_o),
    .idle_sm_o(idle_sm_o),
    .cycle_done_o(cycle_done_o)
);



always #(5) begin
    clk_i = ~clk_i;
end

initial begin
    clk_i = 1'b1;
    resetn_i = 1'b1;
    ch_sel_i = 16'b0;
    arm_i = 1'b0;
    dump_i = 1'b0;
    disable_i = 1'b0;
    inter_i = 1'b0;
    
    do_reset();
    ch_sel_i = 16'b0000_0000_0010_0010;
    do_arm();
    do_arm();

    do_dump();
    do_dump();
    do_dump();

    ch_sel_i = 16'b1111_0000_0100_0000;
    do_arm();
    do_dump();
    do_dump();
    do_dump();
    do_dump();
    do_dump();

    $finish();
end

task do_reset ();
    resetn_i = 1'b1;
    #10;
    resetn_i = 1'b0;
    #10;
    resetn_i = 1'b1;
endtask

task do_dump ();
    dump_i = 1'b0;
    #10;
    dump_i = 1'b1;
    #10;
    dump_i = 1'b0;
endtask

task do_arm ();
    arm_i = 1'b0;
    #10;
    arm_i = 1'b1;
    #10;
    arm_i = 1'b0;
endtask

task do_inter ();
    inter_i = 1'b0;
    #10;
    inter_i = 1'b1;
    #10;
    inter_i = 1'b0;
endtask

endmodule



