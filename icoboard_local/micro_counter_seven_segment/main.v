//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(input wire CLK,
            output wire A,
            output wire B,
            output wire C,
            output wire D,
            output wire E,
            output wire F,
            output wire G,
            output wire DP);


/**
 * 100 MHz Takt mit Signal, das true wird, sofern die PLL eingeschwungen ist.
 * Das kann als Reset Signal verwendet werden.
 */
wire reset;
wire clk_100mhz;
pll p1(
    .clock_in(CLK),
    .clock_out(clk_100mhz),
    .locked(reset)
);


/**
 * Increment counter every second: 0,1,...,8,9,0,1,...
 */
wire [3:0] count_value;
counter cnt(
    .clk(clk_100mhz),
    .rst(reset),
    .cnt(count_value)
);


wire [7:0] out;
assign {A, B, C, D, E, F, G, DP} = out;
seven_segment s1(
    .binary(count_value),
    .out(out)
);


endmodule
