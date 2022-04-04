// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for TIC TAC TOE GAME 
// Top level module  
module tictactoe(
     input clock, // clock of the game 
     input reset, // reset button to reset the game 
     input play, // play button to enable player to play 
     input pc, // pc button to enable computer to play 
     input [3:0] computer_position,player_position, 
     // positions to play 
     output wire [1:0] pos1,pos2,pos3,
     pos4,pos5,pos6,pos7,pos8,pos9,
     // LED display for positions 
     // 01: Player 
     // 10: Computer 
     output wire[1:0]who 
     // who the winner is 
     );
 wire [15:0] PC_en;// Computer enable signals 
 wire [15:0] PL_en; // Player enable signals 
 wire illegal_move; // disable writing when an illegal move is detected 
 //wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;// positions stored
 wire win; // win signal 
 wire computer_play; // computer enabling signal 
 wire player_play; // player enabling signal 
 wire no_space; // no space signal 
 // position registers    
  position_registers position_reg_unit(
      clock, // clock of the game 
      reset, // reset the game 
      illegal_move, // disable writing when an illegal move is detected 
      PC_en[8:0], // Computer enable signals 
      PL_en[8:0], // Player enable signals 
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9// positions stored
      );
 // winner detector 
 winner_detector win_detect_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win,who);
 // position decoder for computer 
 position_decoder pd1(computer_position,computer_play,PC_en);
 // position decoder for player  
 position_decoder pd2(player_position,player_play,PL_en); 
 // illegal move detector
  illegal_move_detector imd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   PC_en[8:0], PL_en[8:0], 
   illegal_move
   );
 // no space detector 
 nospace_detector nsd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   no_space
    ); 
 fsm_controller tic_tac_toe_controller(
     clock,// clock of the circuit 
     reset,// reset 
     play, // player plays 
     pc,// computer plays 
     illegal_move,// illegal move detected 
     no_space, // no_space detected 
     win, // winner detected 
     computer_play, // enable computer to play 
     player_play // enable player to play 
     );    
endmodule 
// Position registers 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// to store player or computer positions 
// when enabling by the FSM controller 
module position_registers(
      input clock, // clock of the game 
      input reset, // reset the game 
      input illegal_move, // disable writing when an illegal move is detected 
      input [8:0] PC_en, // Computer enable signals 
      input [8:0] PL_en, // Player enable signals 
      output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9// positions stored
      );
 // Position 1 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos1 <= pos1;// keep previous position
   else if(PC_en[0]==1'b1)
    pos1 <= 2'b10; // store computer data 
   else if (PL_en[0]==1'b1)
    pos1 <= 2'b01;// store player data 
   else 
    pos1 <= pos1;// keep previous position
  end 
 end 
 // Position 2 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos2 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos2 <= pos2;// keep previous position
   else if(PC_en[1]==1'b1)
    pos2 <= 2'b10; // store computer data 
   else if (PL_en[1]==1'b1)
    pos2 <= 2'b01;// store player data 
   else 
    pos2 <= pos2;// keep previous position
  end 
 end 
// Position 3 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos3 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos3 <= pos3;// keep previous position
   else if(PC_en[2]==1'b1)
    pos3 <= 2'b10; // store computer data 
   else if (PL_en[2]==1'b1)
    pos3 <= 2'b01;// store player data 
   else 
    pos3 <= pos3;// keep previous position
  end 
 end  
 // Position 4 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos4 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos4 <= pos4;// keep previous position
   else if(PC_en[3]==1'b1)
    pos4 <= 2'b10; // store computer data 
   else if (PL_en[3]==1'b1)
    pos4 <= 2'b01;// store player data 
   else 
    pos4 <= pos4;// keep previous position
  end 
 end 
 // Position 5 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos5 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos5 <= pos5;// keep previous position
   else if(PC_en[4]==1'b1)
    pos5 <= 2'b10; // store computer data 
   else if (PL_en[4]==1'b1)
    pos5 <= 2'b01;// store player data 
   else 
    pos5 <= pos5;// keep previous position
  end 
 end 
 // Position 6 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos6 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos6 <= pos6;// keep previous position
   else if(PC_en[5]==1'b1)
    pos6 <= 2'b10; // store computer data 
   else if (PL_en[5]==1'b1)
    pos6 <= 2'b01;// store player data 
   else 
    pos6 <= pos6;// keep previous position
  end 
 end 
 // Position 7 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos7 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos7 <= pos7;// keep previous position
   else if(PC_en[6]==1'b1)
    pos7 <= 2'b10; // store computer data 
   else if (PL_en[6]==1'b1)
    pos7 <= 2'b01;// store player data 
   else 
    pos7 <= pos7;// keep previous position
  end 
 end 
 // Position 8 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos8 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos8 <= pos8;// keep previous position
   else if(PC_en[7]==1'b1)
    pos8 <= 2'b10; // store computer data 
   else if (PL_en[7]==1'b1)
    pos8 <= 2'b01;// store player data 
   else 
    pos8 <= pos8;// keep previous position
  end 
 end 
 // Position 9 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos9 <= 2'b00;
  else begin
   if(illegal_move==1'b1)
    pos9 <= pos9;// keep previous position
   else if(PC_en[8]==1'b1)
    pos9 <= 2'b10; // store computer data 
   else if (PL_en[8]==1'b1)
    pos9 <= 2'b01;// store player data 
   else 
    pos9 <= pos9;// keep previous position
  end 
 end  
endmodule 
// FSM controller to control how player and computer play the TIC TAC TOE GAME 
// The FSM is implemented based on the designed state diagram 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
module fsm_controller(
     input clock,// clock of the circuit 
     input reset,// reset 
     play, // player plays 
     pc,// computer plays 
     illegal_move,// illegal move detected 
     no_space, // no_space detected 
     win, // winner detected 
     output reg computer_play, // enable computer to play 
     player_play // enable player to play 
     );
// FSM States 
parameter IDLE=2'b00;
parameter PLAYER=2'b01;
parameter COMPUTER=2'b10;
parameter GAME_DONE=2'b11;
reg[1:0] current_state, next_state;
// current state registers 
always @(posedge clock or posedge reset) 
begin 
 if(reset)
  current_state <= IDLE;
 else 
  current_state <= next_state;
end 
 // next state 
always @(*)
 begin
 case(current_state)
 IDLE: begin 
  if(reset==1'b0 && play == 1'b1)
   next_state <= PLAYER; // player to play 
  else 
   next_state <= IDLE;
  player_play <= 1'b0;
  computer_play <= 1'b0;
 end 
 PLAYER:begin 
  player_play <= 1'b1;
  computer_play <= 1'b0;
  if(illegal_move==1'b0)
   next_state <= COMPUTER; // computer to play 
  else 
   next_state <= IDLE;
 end 
 COMPUTER:begin 
  player_play <= 1'b0;
  if(pc==1'b0) begin 
   next_state <= COMPUTER;
   computer_play <= 1'b0;
  end
  else if(win==1'b0 && no_space == 1'b0)
  begin 
   next_state <= IDLE;
   computer_play <= 1'b1;// computer to play when PC=1
  end 
  else if(no_space == 1 || win ==1'b1)
  begin 
   next_state <= GAME_DONE; // game done 
   computer_play <= 1'b1;// computer to play when PC=1
  end  
 end 
 GAME_DONE:begin // game done
  player_play <= 1'b0;
  computer_play <= 1'b0; 
  if(reset==1'b1) 
   next_state <= IDLE;// reset the game to IDLE 
  else 
   next_state <= GAME_DONE;  
 end 
 default: next_state <= IDLE; 
 endcase
 end
endmodule 
// NO SPACE detector
// to detect if no more spaces to play 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
module nospace_detector(
   input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   output wire no_space
    );
wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
// detect no more space     
assign temp1 = pos1[1] | pos1[0];
assign temp2 = pos2[1] | pos2[0];
assign temp3 = pos3[1] | pos3[0];
assign temp4 = pos4[1] | pos4[0];
assign temp5 = pos5[1] | pos5[0];
assign temp6 = pos6[1] | pos6[0];
assign temp7 = pos7[1] | pos7[0];
assign temp8 = pos8[1] | pos8[0];
assign temp9 = pos9[1] | pos9[0];
// output
assign no_space =((((((((temp1 & temp2) & temp3) & temp4) & temp5) & temp6) & temp7) & temp8) & temp9);
endmodule 

// Illegal move detector
// to detect if a player plays on an exist position 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
module illegal_move_detector(
   input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   input [8:0] PC_en, PL_en, 
   output wire illegal_move
   );
wire temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9;
wire temp11,temp12,temp13,temp14,temp15,temp16,temp17,temp18,temp19;
wire temp21,temp22;
// player : illegal moving    
assign temp1 = (pos1[1] | pos1[0]) & PL_en[0];
assign temp2 = (pos2[1] | pos2[0]) & PL_en[1];
assign temp3 = (pos3[1] | pos3[0]) & PL_en[2];
assign temp4 = (pos4[1] | pos4[0]) & PL_en[3];
assign temp5 = (pos5[1] | pos5[0]) & PL_en[4];
assign temp6 = (pos6[1] | pos6[0]) & PL_en[5];
assign temp7 = (pos7[1] | pos7[0]) & PL_en[6];
assign temp8 = (pos8[1] | pos8[0]) & PL_en[7];
assign temp9 = (pos9[1] | pos9[0]) & PL_en[8];
// computer : illegal moving  
assign temp11 = (pos1[1] | pos1[0]) & PC_en[0];
assign temp12 = (pos2[1] | pos2[0]) & PC_en[1];
assign temp13 = (pos3[1] | pos3[0]) & PC_en[2];
assign temp14 = (pos4[1] | pos4[0]) & PC_en[3];
assign temp15 = (pos5[1] | pos5[0]) & PC_en[4];
assign temp16 = (pos6[1] | pos6[0]) & PC_en[5];
assign temp17 = (pos7[1] | pos7[0]) & PC_en[6];
assign temp18 = (pos8[1] | pos8[0]) & PC_en[7];
assign temp19 = (pos9[1] | pos9[0]) & PC_en[8];
// intermediate signals 
assign temp21 =((((((((temp1 | temp2) | temp3) | temp4) | temp5) | temp6) | temp7) | temp8) | temp9);
assign temp22 =((((((((temp11 | temp12) | temp13) | temp14) | temp15) | temp16) | temp17) | temp18) | temp19);
// output illegal move 
assign illegal_move = temp21 | temp22 ;
endmodule 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// To decode the position being played, a 4-to-16 decoder with high active output is needed.
// When a button is pressed, a player will play and the position at IN [3:0] will be decoded
// to enable writing to the corresponding registers
module position_decoder(input[3:0] in, input enable, output wire [15:0] out_en);
 reg[15:0] temp1;
 assign out_en = (enable==1'b1)?temp1:16'd0;
 always @(*)
 begin
 case(in)
 4'd0: temp1 <= 16'b0000000000000001;
 4'd1: temp1 <= 16'b0000000000000010; 
 4'd2: temp1 <= 16'b0000000000000100;
 4'd3: temp1 <= 16'b0000000000001000;
 4'd4: temp1 <= 16'b0000000000010000;
 4'd5: temp1 <= 16'b0000000000100000;
 4'd6: temp1 <= 16'b0000000001000000;
 4'd7: temp1 <= 16'b0000000010000000;
 4'd8: temp1 <= 16'b0000000100000000;
 4'd9: temp1 <= 16'b0000001000000000;
 4'd10: temp1 <= 16'b0000010000000000;
 4'd11: temp1 <= 16'b0000100000000000;
 4'd12: temp1 <= 16'b0001000000000000;
 4'd13: temp1 <= 16'b0010000000000000;
 4'd14: temp1 <= 16'b0100000000000000;
 4'd15: temp1 <= 16'b1000000000000000;
 default: temp1 <= 16'b0000000000000001; 
 endcase 
end 
endmodule 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// winner detector circuit 
// to detect who the winner is 
// We will win when we have 3 similar (x) or (O) in the following pairs: 
// (1,2,3); (4,5,6);(7,8,9); (1,4,7); (2,5,8);(3,6,9); (1,5,9);(3,5,7); 
module winner_detector(input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, output wire winner, output wire [1:0]who);
wire win1,win2,win3,win4,win5,win6,win7,win8;
wire [1:0] who1,who2,who3,who4,who5,who6,who7,who8;
winner_detect_3 u1(pos1,pos2,pos3,win1,who1);// (1,2,3);
winner_detect_3 u2(pos4,pos5,pos6,win2,who2);// (4,5,6);
winner_detect_3 u3(pos7,pos8,pos9,win3,who3);// (7,8,9);
winner_detect_3 u4(pos1,pos4,pos7,win4,who4);// (1,4,7);
winner_detect_3 u5(pos2,pos5,pos8,win5,who5);// (2,5,8);
winner_detect_3 u6(pos3,pos6,pos9,win6,who6);// (3,6,9);
winner_detect_3 u7(pos1,pos5,pos9,win7,who7);// (1,5,9);
winner_detect_3 u8(pos3,pos5,pos6,win8,who8);// (3,5,7);
assign winner = (((((((win1 | win2) | win3) | win4) | win5) | win6) | win7) | win8);
assign who = (((((((who1 | who2) | who3) | who4) | who5) | who6) | who7) | who8);
endmodule 
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// winner detection for 3 positions and determine who the winner is 
// Player: 01
// Computer: 10
module winner_detect_3(input [1:0] pos0,pos1,pos2, output wire winner, output wire [1:0]who);
wire [1:0] temp0,temp1,temp2;
wire temp3;
assign temp0[1] = !(pos0[1]^pos1[1]);
assign temp0[0] = !(pos0[0]^pos1[0]);
assign temp1[1] = !(pos2[1]^pos1[1]);
assign temp1[0] = !(pos2[0]^pos1[0]);
assign temp2[1] = temp0[1] & temp1[1];
assign temp2[0] = temp0[0] & temp1[0];
assign temp3 = pos0[1] | pos0[0];
// winner if 3 positions are similar and should be 01 or 10 
assign winner = temp3 & temp2[1] & temp2[0];
// determine who the winner is 
assign who[1] = winner & pos0[1];
assign who[0] = winner & pos0[0];
endmodule