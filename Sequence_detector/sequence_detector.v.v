module MOORE(sequence_in,clock,reset,detector_out);
input clock;
input reset;
input sequence_in;
output reg detector_out;
parameter zero = 3'b000,
one = 3'b001,
onezero = 3'b011,
onezeroone = 3'b010,
onezerooneone = 3'b110;
reg[2:0] current_state,next_state;

//sequential memory of the moore FSM 
always @(posedge clock,posedge reset)
begin
if(reset == 1)
current_state <= zero;//when reset=1,reset the state of FSM to zero state 
else
current_state <= next_state;//otherwise next state
end

//combinational logic of the moore FSM to determine next state
always @(current_state,sequence_in)
begin
case(current_state)
zero : begin
if(sequence_in == 1)
next_state = one;
else
next_state = zero;
end

one:begin
if(sequence_in == 0)
next_state = onezero;
else
next_state = one;
end

onezero:begin
if(sequence_in == 1)
next_state = onezeroone;
else
next_state = onezero;
end

onezeroone:begin
if(sequence_in == 1)
next_state = onezerooneone;
else
next_state = onezero;
end

onezerooneone:begin
if(sequence_in == 1)
next_state = onezero;
else
next_state = one;
end
default:next_state = zero;
endcase
end

always @(current_state)
begin
case(current_state)
zero:detector_out=0;
one:detector_out=0;
onezero:detector_out=0;
onezeroone:detector_out=0;
onezerooneone:detector_out=1;
default:detector_out=0;
endcase
end

endmodule


