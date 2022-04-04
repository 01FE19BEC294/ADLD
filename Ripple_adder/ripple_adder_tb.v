module ripple_adder_tb;
reg [3:0]a,b;

wire [3:0]sum;

wire cout;

ripple_adder DUT (.sum(sum),.cout(cout),.a(a),.b(b));

initial 
begin

$monitor($time,"a=%b b=%b sum=%b cout=%b",a,b,sum,cout);

a=4'b0000;
b=4'b0000;
#10

a=4'b0001;
b=4'b0110;
#10

a=4'b1000;
b=4'b1001;
#10

a=4'b1111;
b=4'b1111;
#10

end
endmodule



