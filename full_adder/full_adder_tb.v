module full_adder_tb;
reg a,b,cin;
wire sum,cout;

full_adder DUT (.sum(sum),.cout(cout),.a(b),.b(b),.cin(cin));

initial
begin

 $monitor($time,"a=%b b=%b c=%b sum=%b carry=%b",a,b,cin,sum,cout);
 a=0;
 b=0;
 cin=0;
 #10;

a=0;
 b=0;
 cin=1;
 #10;

a=0;
 b=1;
 cin=0;
 #10;

a=0;
 b=1;
 cin=1;
 #10;

a=1;
 b=0;
 cin=0;
 #10;

a=1;
 b=0;
 cin=1;
 #10;

a=1;
 b=1;
 cin=0;
 #10;

a=1;
 b=1;
 cin=1;
 #10;

end 
endmodule
