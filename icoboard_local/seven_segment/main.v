//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(input wire[3:0] IN,
            output wire A,
            output wire B,
            output wire C,
            output wire D,
            output wire E,
            output wire F,
            output wire G,
            output wire DP);

wire [7:0] out = {A, B, C, D, E, F, G, DP};

seven_segment_case t1(
    .binary(IN),
    .out(out));

endmodule
