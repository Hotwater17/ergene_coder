module priority_fsm_tb(
);


logic clk_i;
logic resetn_i;

logic [15:0]    ch_sel_i;
logic           arm_i;
logic           dump_i;

wire [15:0]     ch_sel_o;
wire            zero_o;
wire            cycle_done_o;



priority_fsm uut(
    .clk_i(clk_i),
    .resetn_i(resetn_i),
    .ch_sel_i(ch_sel_i),
    .arm_i(arm_i),
    .dump_i(dump_i),
    .ch_sel_o(ch_sel_o),
    .zero_o(zero_o),
    .cycle_done_o(cycle_done_o)
);



always #(5) begin
    clk_i = ~clk_i;
end

initial begin
    clk_i = 1'b0;
    resetn_i = 1'b1;
    ch_sel_i = 16'b0;
    arm_i = 1'b0;
    dump_i = 1'b0;
    
    #10;
    resetn_i = 1'b0;

    #10 resetn_i = 1'b1;
    #10;
    ch_sel_i = 16'b0000_0000_0010_0010;
    arm_i = 1'b1;

    #10;
    arm_i = 1'b0;
    #10;
    dump_i = 1'b1;
    #10;
    dump_i = 1'b0;
    #10;
    dump_i = 1'b1;
    #10;
    dump_i = 1'b0;

    #10;
    dump_i = 1'b1;
    #10;
    dump_i = 1'b0;
    #10;
    

    $finish();
end

endmodule