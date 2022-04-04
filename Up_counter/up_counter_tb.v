module upcounter_tb;
reg clk, reset;
wire [3:0] counter;

up_counter dut(clk, reset, counter);
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin

reset=1;
#20;
reset=0;
end
endmodule

module up_counter(input clk, reset, output[3:0] counter);
 
  reg[3:0] counter_up;

  always @(posedge clk or posedge reset)
 begin
     if(reset)
        counter_up <= 4'd0;
     else
        counter_up <= counter_up + 4'd1;
    end

   assign counter = counter_up;
endmodule  
