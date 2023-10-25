module seven_segment_if(input wire[3:0] binary,
                        output reg[7:0] out);

// TODO: Code für die Umwandlung anpassen / erweitern
always @(*) begin
    if(binary == 4'd0) begin
        out = 8'b1010_1010;
    end else if (binary == 4'd1) begin 
        out = 8'b0000_0000;
    end else begin 
        out = 8'b0000_0001;
    end
end 


endmodule