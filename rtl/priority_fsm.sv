`default_nettype none
module priority_fsm #(
    parameter N_CH = 16
)(
    input   wire                clk_i,
    input   wire                resetn_i,
    input   wire    [N_CH-1:0]  ch_sel_i,
    input   wire                dump_i,
    input   wire                arm_i,
    input   wire                disable_i,  
    
    output  logic   [N_CH-1:0]  ch_sel_o,
    output  logic               last_o
);


logic   [$clog2(N_CH):0]    state;
logic   [$clog2(N_CH):0]    next_state;

logic   [$clog2(N_CH)-1:0]  encode_ch;
logic                       valid;

logic   [N_CH-1:0]          ch_latch_q;
logic   [N_CH-1:0]          ch_latch_res;

localparam unsigned IDLE = 5'b10000;
localparam unsigned ARMED = 5'b10001;

//typedef enum logic [$clog2(N_CH):0]   {  } name;
int i;
int i_ch;

/* -------------------------------------------------------------------------- */
/*                            Input channel latches                           */
/* -------------------------------------------------------------------------- */

always_latch begin : CHANNEL_LATCH
    for(i_ch=0; i_ch<N_CH; i_ch=i_ch+1) begin
        if(!resetn_i || ch_latch_res[i_ch]) begin
            ch_latch_q[i_ch] = 1'b0;
        end else if (arm_i) begin
            ch_latch_q[i_ch] = ch_sel_i[i_ch];
        end
    end
end
/* -------------------------------------------------------------------------- */
/*                              One-hot encoding                              */
/* -------------------------------------------------------------------------- */
always_comb begin : OUTPUT_LOGIC
    ch_sel_o = '0;
    //if(!disable_i) begin
        //ch_sel_o[encode_ch] = 1'b1;
    ch_sel_o[state[($clog2(N_CH)-1):0]] = ((state != IDLE) && (state != ARMED));
    //end
end
/* -------------------------------------------------------------------------- */
/*                              Priority encoding                             */
/* -------------------------------------------------------------------------- */

always_comb begin : PRIORITY_ENC
    encode_ch = '0;
    valid = 1'b0;
    for(i=0; i<N_CH; i=i+1) begin
        if (ch_latch_q[i]) begin
            encode_ch = i[($clog2(N_CH)-1):0];
            valid = 1'b1;
            break;
            /* -------------------------------------------------------------------------- */
            /*                    Set zero high if no channels left are active                   */
            /* -------------------------------------------------------------------------- */
            
        end
    end
end

assign last_o = (ch_latch_q == '0);

/* -------------------------------------------------------------------------- */
/*                            Finite state machine                            */
/* -------------------------------------------------------------------------- */
always_ff @(posedge clk_i or negedge resetn_i) begin : STATE_FF
    if (~resetn_i) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

/* -------------------------------------------------------------------------- */
/*               Add logic component that checks all the states,              */
/*               if no more active states are valid, go to DONE               */
/* -------------------------------------------------------------------------- */

always_comb begin : STATE_LOGIC
    if(state == IDLE) begin
        next_state = arm_i ? ARMED : IDLE;
    end else if(state == ARMED) begin
        next_state = dump_i ? {1'b0, encode_ch[($clog2(N_CH)-1):0]} : ARMED;
    end
    else begin
        next_state = dump_i ? (last_o ? IDLE : {1'b0, encode_ch[($clog2(N_CH)-1):0]} ) : state;
    end
end

int i_res;
always_comb begin : LATCH_RESET
    for(i_res=0; i_res<N_CH; i_res=i_res+1) begin
        ch_latch_res[i_res] = (state == {1'b0,i_res[$clog2(N_CH)-1:0]}) && dump_i;
    end
end



endmodule
