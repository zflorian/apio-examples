//------------------------------------------------------------------
//-- Verilog template
//-- Top entity
//-- Board: icoboard
//------------------------------------------------------------------
`default_nettype none

module counter(
    input wire clk, 
    input wire rst, 
    output wire [3:0] cnt,
    input wire [31:0] prescaler);


always @(posedge clk) begin
    if (~rst) begin 
        // Zurücksetzen der Register auf Default-Werte
    end else begin 
        // Zählverhalten implementieren
    end
    
end

endmodule
