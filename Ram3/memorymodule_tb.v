`timescale 1ns / 1ps
module ram3_tb;

// Inputs
reg [7:0] data_in;
reg [9:0] addr;
reg wr;
reg cs;


// Outputs
wire [7:0] data_out;

// Instantiate the Unit Under Test (UUT)
ram3 uut (
.data_out(data_out),
.data_in(data_in),
.addr(addr),
.wr(wr),
.cs(cs)
);

  initial begin
  cs=0;
 forever  #10 cs= ~cs;
 
  end
 
 
initial begin
// Initialize Inputs
data_in = 0;
addr = 0;
wr = 0;
#20;
       
 
data_in = 4;
addr = 2;
wr = 1;
#20;

data_in = 8;
addr = 4;
wr = 0;
#20;


data_in = 10;
addr = 12;
wr = 1;
#20;


//initial begin
//  for(k=0;k<= 20;k=k+1)
//  begin
//  wr=0;
//   data_in[k] = k+2; wr= ~ wr;
// addr[k] = k; wr=~wr;


  //end

end
     
endmodule

