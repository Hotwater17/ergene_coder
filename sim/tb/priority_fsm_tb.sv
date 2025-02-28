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
    .dump_i(),
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

    #10;
    resetn_i = 1'b0;
    

    #10 resetn_i = 1'b1;
    #10 arm_i = 1'b1;
    #10 ch_sel_i = 16'b1;
    #10 ch_sel_i = 16'b0;
    #10 ch_sel_i = 16'b1000000000000000;
    #10 ch_sel_i = 16'b0000000000000001;
    #10 ch_sel_i = 16'b0000000000000010;
    #10 ch_sel_i = 16'b0000000000000100;
    #10 ch_sel_i = 16'b0000000000001000;
    #10 ch_sel_i = 16'b0000000000010000;
    #10 ch_sel_i = 16'b0000000000100000;
    #10 ch_sel_i = 16'b0000000001000000;
    #10 ch_sel_i = 16'b0000000010000000;
    #10 ch_sel_i = 16'b0000000100000000;
    #10 ch_sel_i = 16'b0000001000000000;
    #10 ch_sel_i = 16'b0000010000000000;
    #10 ch_sel_i = 16'b0000100000000000;
    #10 ch_sel_i = 16'b0001000000000000;
    #10 ch_sel_i = 16'b0010000000000000;
    #10 ch_sel_i = 16'b0100000000000000;
    #10 ch_sel_i = 16'b1000000000000000;
    #10 ch_sel_i = 16'b0;
    #10 ch_sel_i = 16'b0000100010001000;
    #10 ch_sel_i = 16'b0010001000010100;
    #10 ch_sel_i = 16'b1000000000000001;
    #10 ch_sel_i = 16'b1000000000000000;

    $finish();
end

endmodule