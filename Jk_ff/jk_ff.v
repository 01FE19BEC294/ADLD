module jk_ff(j,k,clk,q,qbar);
input j,k,clk;
output reg q,qbar;
always@(posedge clk)
begin
if(j==0)
begin
q<= 0;
qbar<= 1;
end

else if(k==0)
begin
q<= 1;
qbar <= 0;
end 

else if(j==0 & k==0)
begin
q<=q;
qbar<=qbar;

end
end
endmodule


