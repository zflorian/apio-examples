//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(
    input wire CLK,
    input wire[2:0] X,
    output wire[1:0] Y
);


pumpen_automat a1(
    .clk(CLK),
    .x(X),
    .y(Y)
);

endmodule
