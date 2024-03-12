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

seven_segment_logic t1(
    .x(IN),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .DP(DP)
);



endmodule
