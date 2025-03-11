/*
 * File: priority_fsm.sv
 * Author: Michal Gorywoda
 * Created Date: March 6th 2025
 * 
 * Copyright (c) 2025 Michal Gorywoda, KAIST SEED Lab
 */

`default_nettype none
module encoder #(
    parameter N_CH = 16
)(


    input   wire    [N_CH-1:0]  ch_sel_i,
    input   wire                enable_i,
    
    output  logic   [N_CH-1:0]  hot_one_o,
    output  logic               valid_o

);

logic   [$clog2(N_CH)-1:0]  encode_ch;
int i;

/* -------------------------------------------------------------------------- */
/*                              One-hot encoding                              */
/* -------------------------------------------------------------------------- */
always_comb begin : OUTPUT_LOGIC
    hot_one_o = '0;
    //if(!disable_i) begin
        //ch_sel_o[encode_ch] = 1'b1;
    //ch_sel_o[state[($clog2(N_CH)-1):0]] = ((state != IDLE) && (state != ARMED));
    hot_one_o[encode_ch] = valid_o;
    //end
end
/* -------------------------------------------------------------------------- */
/*                              Priority encoding                             */
/* -------------------------------------------------------------------------- */

always_comb begin : PRIORITY_ENC
    encode_ch = '0;
    valid_o = 1'b0;
    for(i=0; i<N_CH; i=i+1) begin
        if (ch_sel_i[i]) begin
            encode_ch = i[($clog2(N_CH)-1):0];
            valid_o = enable_i;
            break;
        end
    end
end

endmodule
