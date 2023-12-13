//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

//-- Template for the top entity
module top(
    input wire clk,
    input wire slk,
    input wire pico,
    input wire cs,
    output wire [7:0] d,
    output wire rdy
);

//-- Turn on the LED1 (green led) on the icoboard
wire [7:0] data;
wire data_ready;

assign rdy = data_ready;
assign d = data;

spi spi1(
    .clk(clk),
    .slk(slk),
    .pico(pico),
    .cs(cs),
    .data(data),
    .data_ready(data_ready)
);

endmodule
