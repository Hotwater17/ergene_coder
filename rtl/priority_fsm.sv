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

localaparam IDLE = 0;

int i;
always_comb begin : PRIORITY_ENC
    encode = '0;
    valid = 1'b0;
    for(i=0; i<N_CH; i=i+1) begin
        if (ch_sel_i[i] && enable) begin
            encode = i;
            valid = 1'b1;
            break;
        end
    end
end

dupa
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
                next_state = encode;
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
