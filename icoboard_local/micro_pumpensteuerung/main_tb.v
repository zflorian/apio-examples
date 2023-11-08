//------------------------------------------------------------------
//-- Verilog template
//-- Test-bench entity
//-- Board: icoboard
//------------------------------------------------------------------

`default_nettype none
`define DUMPSTR(x) `"x.vcd`"
`timescale 100 ns / 10 ns

module main_tb();

//-- Clock signal. It is not used in this simulation
reg clk = 0;
always #0.5 clk = ~clk;

reg [2:0] x;
wire [1:0] y;

//-- Instantiation of the unit to test
top UUT (
  .CLK(clk),
  .X(x),
  .Y(y)
);


initial begin

  //-- File were to store the simulation results
  $dumpfile(`DUMPSTR(`VCD_OUTPUT));
  $dumpvars(0, main_tb);

  x = 3'b000;
  #2
  x = 3'b001;
  #2
  x = 3'b011;
  #2
  x = 3'b111;
  #2
  x = 3'b011;
  #2 
  x = 3'b001;
  #2
  x = 3'b000;
  #2

  $finish;
end

endmodule
