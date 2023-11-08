`define EINE_PUMPE 2'b01
`define KEINE_PUMPE 2'b00
`define ZWEI_PUMPEN 2'b11

module pumpen_automat(
    input wire clk,
    input wire [2:0] x,
    output wire [1:0] y
);

reg [1:0] state;
reg [1:0] next_state;

// Zustandsübergang
always @(posedge clk) begin
  state <= next_state;
end

// SN2 (Ausgangs-Schaltnetz)
// TODO: Ausgabe definieren

// SN1 (Zustands-Übergangs-Schaltnetz)
always @(*) begin
    case(state[1:0])
        // TODO Zustandsübergänge definieren
        default: begin 
            next_state = `EINE_PUMPE;
        end
    endcase
end

endmodule
