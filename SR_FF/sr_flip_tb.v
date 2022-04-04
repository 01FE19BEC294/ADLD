module sr_flip_tb;
reg s,r,clk;
wire q,qbar;
sr_flip abc (.s(s),.r(r),.clk(clk),.q(q),.qbar(qbar));
initial begin
clk=0; 
forever #5 clk=~clk;
end
initial

begin
$monitor($time,"s=%b,r=%b,clk=%b,q=%b,qbar=%b",s,r,clk,q,qbar);

s=0;
r=0;
#5 

s=~s;
r=0;
#10;

s=0;
r=~r;
#15
$finish;
end
endmodule
