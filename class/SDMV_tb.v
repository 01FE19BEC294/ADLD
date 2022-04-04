module verilog;
reg sequence_in;
reg clock;
reg reset;

wire detector_out;
MOORE uut(.sequence_in(sequence_in),.clock(clock),.reset(reset),.detector_out(detector_out));


initial begin 
clock = 0;
forever #5 clock = ~clock;
end
initial begin 
sequence_in = 0;
reset = 1;
#10 

reset = 0;
sequence_in = 1;
#10;
sequence_in = 0;
#10;
sequence_in = 1;
#10;
sequence_in = 1;
#10;
sequence_in = 0;
#10;
sequence_in = 0;
$finish;
end


endmodule
