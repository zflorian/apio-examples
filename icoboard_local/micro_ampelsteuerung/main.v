//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top( input wire CLK,
            output wire[2:0] ampel_1,
            output wire[2:0] ampel_2,
            input wire kontakt_1,
            input wire kontakt_2);


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



endmodule
