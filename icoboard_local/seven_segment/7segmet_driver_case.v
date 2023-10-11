module seven_segment_case(input wire[3:0] binary,
                            output reg[7:0] out);

// TODO: Für die Umwandlung vervollständigen / erweitern
always @(*) begin
    case(binary)
        4'd0: begin
            out = 8'b1010_1010;
        end 
        4'd1: begin
            out = 8'b1111_1111;
        end
        default: begin 
            out = 8'b0000_0000;
        end
    endcase
end
endmodule
