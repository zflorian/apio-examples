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
  reg[3:0] in;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire dp;

  // Top Modul instanz erstellen und
  // An Testsignale anbinden
  top dut(
    .CLK(clk),
    .A(a),
    .B(b),
    .C(c),
    .D(d),
    .E(e),
    .F(f),
    .G(g),
    .DP(dp)
  );

  initial begin
    // Zieldatei (VCD Datei), so benannt, dass apio sie findet
    $dumpfile(`DUMPSTR(`VCD_OUTPUT));
    $dumpvars(0, main_tb);  // Schaltungsinstanzen und Hierarchieebenen, die dargestellt werden

    #100
    $finish;

  end

endmodule
