//------------------------------------------------------------------
//-- Verilog template
//-- Test-bench entity
//-- Board: icoboard
//------------------------------------------------------------------

`default_nettype none       
`define DUMPSTR(x) `"x.vcd`" // apio Namensgebung für die VCD Datei
`timescale 100 ns / 10 ns // Zeitschritt und Auflösung: #1 entspricht 100ns, #0.5 50ns, #0.55 60ns

module main_tb();

  // Testsignale
  reg clk = 1'b0;
  always #0.5 clk = ~clk;

  // Register für Eingaben, Wire für Ausgaben.
  reg rst = 1;
  reg [31:0] prescaler = 10;
  wire [3:0] count;

  // Top Modul instanz erstellen und
  // An Testsignale anbinden

counter dut(.clk(clk),
            .rst(rst), 
            .cnt(count),
            .prescaler(prescaler)
          );

  initial begin
    // Zieldatei (VCD Datei), so benannt, dass apio sie findet
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, main_tb);  // Schaltungsinstanzen und Hierarchieebenen, die dargestellt werden

    #100
    $finish;

  end

endmodule
