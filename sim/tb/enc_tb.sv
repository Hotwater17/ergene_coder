module enc_tb(
);


logic clk_i;
logic resetn_i;

logic [15:0]    ch_sel_i;
logic           enable_i;

wire [15:0]     hot_one_o;
wire            valid_o;    


encoder uut(
    
    .ch_sel_i(ch_sel_i),
    .enable_i(1'b1),
    .hot_one_o(hot_one_o),
    .valid_o(valid_o)
);





initial begin

    ch_sel_i = 16'b0;

    #10;
    do_reset();
    #10;
    ch_sel_i = 16'b0000_0000_0010_0010;
    #20;



    ch_sel_i = 16'b1111_0000_0100_0000;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0001;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0011;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0111;
    #10;
    ch_sel_i = 16'b0000_0000_0000_1111;
    #10;
    ch_sel_i = 16'b0000_0000_0000_1110;
    #10;
    ch_sel_i = 16'b0000_0000_0000_1100;
    #10;
    ch_sel_i = 16'b0000_0000_0000_1000;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0100;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0100;
    #10;
    ch_sel_i = 16'b0000_0000_0000_0000;
    #10;
    ch_sel_i = 16'b1000_0000_0000_0000;
    #10;
    $finish();
end

task do_reset ();
    resetn_i = 1'b1;
    #10;
    resetn_i = 1'b0;
    #10;
    resetn_i = 1'b1;
endtask

endmodule



