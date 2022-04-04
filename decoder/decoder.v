module decoder(out2, in);
 input [2:0]in;
 output reg [7:0] out2;

always @(in) begin
 case(in)
   3'b000: begin out2=8'b00000001; end
   3'b001: begin out2=8'b00000010; end
   3'b010: begin out2=8'b00000100; end
   3'b011: begin out2=8'b00001000; end
   3'b100: begin out2=8'b00010000; end
   3'b101: begin out2=8'b00100000; end
   3'b110: begin out2=8'b01000000; end
   3'b111: begin out2=8'b10000000; end
 endcase
 end
endmodule
