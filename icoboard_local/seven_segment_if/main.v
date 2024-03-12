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

seven_segment_if t1(
    .binary(IN),
    .out({A, B, C, D, E, F, G, DP})
);

endmodule
