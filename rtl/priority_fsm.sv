`default_nettype none
module priority_fsm #(
    parameter N_CH = 16
)(
    input wire                  clk_i,
    input wire                  resetn_i,
    input wire      [N_CH-1:0]  ch_sel_i,
    input wire                  en_i,

    output logic    [N_CH-1:0]  ch_sel_o
);


logic   [$clog2(N_CH):0]    state;
logic   [$clog2(N_CH):0]    next_state;

logic   [$clog2(N_CH)-1:0]  encode;
logic                       valid;

localparam IDLE = 5'b00000;

/* -------------------------------------------------------------------------- */
/*                              One-hot encoding                              */
/* -------------------------------------------------------------------------- */
always_comb begin : OUTPUT_LOGIC
    ch_sel_o = '0;
    case (state)
        IDLE: begin
            if (valid) begin
                ch_sel_o[encode] = 1'b1;
            end
        end
        default: begin
            ch_sel_o = '0;
        end
    endcase
end
/* -------------------------------------------------------------------------- */
/*                              Priority encoding                             */
/* -------------------------------------------------------------------------- */
int i;
always_comb begin : PRIORITY_ENC
    encode = '0;
    valid = 1'b0;
    for(i=0; i<N_CH; i=i+1) begin
        if (ch_sel_i[i] && en_i) begin
            encode = i;
            valid = 1'b1;
            break;
        end
    end
end

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

always_comb begin : STATE_LOGIC
    case (state)
        IDLE: begin
            if (en_i) begin
                next_state = {1'b0 ,encode};
            end else begin
                next_state = state;
            end
        end
        default: begin
            next_state = IDLE;
        end
    endcase
    
end



endmodule
