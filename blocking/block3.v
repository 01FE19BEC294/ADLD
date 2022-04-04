module block3;

integer a,b,c,d;

initial begin

a=4; b=3;
$display("[%0t] a= %d ,b=%d",$time,a,b);

#10 c=18;
$display("[%0t] c= %d",$time, c);

#5 d=7;
$display("[%0t] d= %d",$time, d);

end

endmodule
