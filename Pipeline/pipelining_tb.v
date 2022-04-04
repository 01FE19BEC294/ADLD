`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:48:59 03/19/2022
// Design Name:   pipelining
// Module Name:   E:/6th sem/MINOR project/and_gate1/pipelining_tb.v
// Project Name:  and_gate1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipelining
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipelining_tb;

	// Inputs
	reg [9:0] A;
	reg [9:0] B;
	reg [9:0] C;
	reg [9:0] D;
	reg clk;

	// Outputs
	wire [9:0] F;

	// Instantiate the Unit Under Test (UUT)
	pipelining uut (
		.F(F), 
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.clk(clk)
	);
	
 
	always 
    begin 
	 #10; clk = ~clk;
	 end
	initial begin
	    clk=0;
		// Initialize Inputs
		#5 A = 10; B=12; C=6; D=3;  //F=75
		#20 A = 10; B=10; C=5; D=3;  //F=66
		#20 A = 20; B=1; C=1; D=4;  //F=112
		// #5 A = 10, B=12, C=0, D=3;  //F=75
		end
		initial
	
		begin
		$dumpfile("pipelining.vcd");
		$dumpvars(0,pipelining_tb);
		$monitor ("time: %d,F=%d",$time,F);
		#300 $finish;
		
	end
      
endmodule

