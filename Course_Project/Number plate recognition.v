`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:17 04/06/2022 
// Design Name: 
// Module Name:    im_write 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module im_write( 
input clk,
output reg per0,
output reg per1,
output reg per2,
output reg per3,
output reg per4,
output reg per5,
output reg per6,
output reg per7,
output reg per8,
output reg per9,
output reg per10,
output reg per11,
output reg per12,
output reg per13,
output reg per14,
output reg per15,
output [1:0]State,
output [2:0]RTO
);

initial begin
mem[0] = 9'b000010010;
mem[1] = 9'b010000000;
mem[2] = 9'b100110001;
mem[4] = 9'b111001000;
pc = 0;
end

reg [8:0]mem[0:511];
reg [8:0]L1_IR,L2_IR;
reg [8:0]pc;
reg [1:0]L2_State,L3_State;
reg [2:0]L2_RTO,L3_RTO;
reg [3:0]L2_NUM,L3_NUM;

parameter KA = 2'b00, GJ = 2'b01, BR = 2'b10, MH = 2'b11;
parameter rto1 = 3'b000,rto2 = 3'b001,rto3 = 3'b010, rto4 = 3'b011,rto5 = 3'b100,rto6 = 3'b101,rto7 = 3'b110,rto8 = 3'b111;
parameter person1 = 4'b0000,person2 = 4'b0001,person3 = 4'b0010,person4 = 4'b0011,person5 = 4'b0100,person6 = 4'b0101,person7 = 4'b0110,person8 = 4'b0111,person9 = 4'b1000,person10 = 4'b1001,person11 = 4'b1010,person12 = 4'b1011,person13 = 4'b1100,person14 = 4'b1101,person15 = 4'b1110,person16 = 4'b1111;

always @(posedge clk)//fetch
begin
L1_IR <= mem[pc];
pc <= pc + 1;
end

always @(posedge clk)//decode
begin
L2_IR <= L1_IR;
L2_State <= L2_IR[8:7];
L2_RTO <= L2_IR[6:4];
L2_NUM <= L2_IR[3:0];
end

always @(posedge clk)//execute
begin
L3_State <= L2_State;
L3_RTO <= L2_RTO;
L3_NUM <= L2_NUM;

case(L3_State)
KA:begin
case(L3_RTO)
rto1:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto2:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto3:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto4:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto5:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto6:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto7:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto8:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
endcase
end
GJ:begin
case(L3_RTO)
rto1:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto2:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto3:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto4:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto5:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto6:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto7:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto8:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
endcase
end
BR:begin
case(L3_RTO)
rto1:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto2:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto3:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto4:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto5:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto6:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto7:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto8:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
endcase
end
MH:begin
case(L3_RTO)
rto1:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto2:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto3:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto4:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto5:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto6:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto7:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
rto8:begin
case(L3_NUM)
person1:per0 = 1;
person2:per1 = 1;
person3:per2 = 1;
person4:per3 = 1;
person5:per4 = 1;
person6:per5 = 1;
person7:per6 = 1;
person8:per7 = 1;
person9:per8 = 1;
person10:per9 = 1;
person11:per10 = 1;
person12:per11 = 1;
person13:per12 = 1;
person14:per13 = 1;
person15:per14 = 1;
person16:per15 = 1;
endcase
end
default:{per0,per1,per2,per3,per4,per5,per6,per7,per8,per9,per10,per11,per12,per13,per14,per15} = 16'h0000;
endcase
end
endcase
end

assign State = L3_State;
assign RTO = L3_RTO;

endmodule
