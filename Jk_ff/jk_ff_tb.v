module jk_ff_tb;
reg j,k,clk;
wire q,qbar;
jk_ff u(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));
initial begin
clk=0; 
forever #5 clk=~clk;
end
initial

begin
$monitor($time,"j=%b,k=%b,clk=%b,q=%b,qbar=%b",j,k,clk,q,qbar);

j=0;
k=0;
#5 


j=1;
k=0;
#5 

j=0;
k=1;
#5 

j=1;
k=1;
#5 ;


$finish;

end
endmodule
