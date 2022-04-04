`timescale 1ns / 1ps
module gcd(
gt,lt, eq,ldA,ldB,sel1,sel2,sel_in, data_in, clk);
input ldA ,ldB ,sel1,sel2,sel_in, clk;
input [15:0]data_in;
output gt,lt,eq;
wire  [15:0] Aout, Bout,X,Y,Bus, Subout ;

PIPO A (Aout ,Bus,ldA,clk);
PIPO B (Bout ,Bus,ldB,clk);
MUX mux_in1(X,Aout,Bout ,sel1);
MUX mux_in2(Y,Aout,Bout ,sel2);
MUX mux_load(Bus, Subout,data_in ,sel_in);
SUB SB (Subout, X, Y);
COMPARE COMP(lt,gt,eq,Aout,Bout);
endmodule



module PIPO(dout,din,ld,clk);
input [15:0]din;
input ld,clk;
output reg [15:0]dout;

always @(posedge clk)
if(ld) dout <=din;
endmodule


module SUB(dout,da,db);
input [15:0] da,db;
output reg [15:0]dout;

always @(*)
dout =da - db ;
endmodule


module COMPARE (lt,gt,eq,data1,data2);
input [15:0] data1 ,data2;
output lt,gt,eq;

assign lt = data1 < data2;
assign gt = data1 > data2;
assign eq = data1 == data2;

endmodule

module MUX (out,in0,in1,sel);
input [15:0]in0,in1;
input sel;
output [15:0]out;

assign out = sel ? in1 :in0;
endmodule

module controller(ldA,ldB,sel1,sel2,sel_in,done,clk,lt,gt,eq,start);
input clk,lt,gt,eq,start;
output reg ldA,ldB,sel1,sel2,sel_in,done;
reg [2:0]state;

parameter s0 =3'b000 ,s1=3'b001, s2=3'b010 ,s3=3'b011 ,s4=3'b100 ,s5=3'b101;

always @(posedge clk)
begin
case(state)
 s0 : if(start) state<=s1;
  s1: state<=s2;
  s2: #2 if(eq) state <=s5;
    else if(lt) state <=s3;
    else if(gt) state <=s4;

  s3: #2 if(eq) state <=s5;
    else if(lt) state <=s3;
    else if(gt) state <=s4;
  s4 :#2 if(eq) state <=s5;
    else if(lt) state <=s3;
    else if(gt) state <=s4;
  s5: state <=s5;
  default : state <=s0;
endcase
end

always @(state)
begin
case(state)
  
 s0 : begin sel_in =1;ldA=1;ldB=0;done=0; end

  s1 : begin sel_in =1; ldA=0;ldB=1; end
  s2 : if(eq) done=1;
      else if (lt) begin
             sel1=1; sel2=0;sel_in=0;
             #1  ldA =0; ldB =1;
          end
          else if (gt) begin
             sel1=0; sel2=1;sel_in=0;
             #1  ldA =1; ldB =0;
          end


 s3 :    if(eq) done=1;
      else if (lt) begin
             sel1=1; sel2=0;sel_in=0;
             #1  ldA =0; ldB =1;
          end
          else if (gt) begin
             sel1=0; sel2=1;sel_in=0;
             #1  ldA =1; ldB =0;
          end


s4 : if(eq) done=1;
      else if (lt) begin
             sel1=1; sel2=0;sel_in=0;
             #1  ldA =0; ldB =1;
          end
          else if (gt) begin
             sel1=0; sel2=1;sel_in=0;
             #1  ldA =1; ldB =0;
          end

s5: begin
  ldA=0;ldB=0;sel1=0;sel2=0;done=1;
  end

 default : begin ldA=0; ldB =0; end

endcase

end
 endmodule