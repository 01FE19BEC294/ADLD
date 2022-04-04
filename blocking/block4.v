module block4;

integer a,b,c,d;
initial begin

a=67;
$display("[%0t] a=%d",$time ,a);

#10;
a<=4;
$display("[%0t] a=%d",$time ,a);

c<= #15 a;
$display("[%0t] a=%d c=%d",$time ,a,c);

d<=9;
$display("[%0t] d=%d",$time ,d);

b<=3;
$display("[%0t] b=%d",$time ,b);

end

endmodule
