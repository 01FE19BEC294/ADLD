module ripple_adder(sum,cout,a,b);
input [3:0] a,b;
output [3:0] sum;
output cout;

wire w1,w2,w3;

full_adder u1(sum[0], w1, a[0], b[0], 1'b0);
full_adder u2(sum[1], w2, a[1], b[1], w1);                
full_adder u3(sum[2], w3, a[2], b[2], w2);
full_adder u4(sum[3], cout, a[3], b[3], w3);

endmodule

module full_adder(sum,cout,a,b,cin);

input a,b,cin;
output sum,cout;

assign sum = a^b^cin;
assign cout = (a & b)|(b & cin)|(cin & a);

endmodule

