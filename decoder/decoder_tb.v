module decoder_tb;
  reg [2:0]in;
  wire [7:0] out2;
 decoder DUT (.out2(out2), .in(in));
 initial begin
   $monitor($time,"in=%b out=%b",in,out2);
       in = 3'b000;
       #5 in = 3'b001;
       #5 in = 3'b011;
       #5 in = 3'b101;
       #5 in = 3'b110;
       #5 in = 3'b111;
       #5;
end
endmodule
