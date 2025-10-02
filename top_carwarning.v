`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2025 12:55:12 PM
// Design Name: 
// Module Name: top_carwarning
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_carwarning(SB,DOOR,KEY,BRK,PARK,HOOD,BAT_OK,AIB_OK,TMP_OK,PASS_OCC,SB_P,TRUNK,PBRK,SRV,START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1,SEAT_WARN,DOOR_WARN,HOOD_WARN,TRUNK_WARN,BAT_WARN,AIRBAG_WARN,TEMP_WARN);
  input SB,DOOR,KEY,BRK,PARK,HOOD,BAT_OK,AIB_OK,TMP_OK,PASS_OCC,SB_P,TRUNK,PBRK,SRV;
  output START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1,SEAT_WARN,DOOR_WARN,HOOD_WARN,TRUNK_WARN,BAT_WARN,AIRBAG_WARN,TEMP_WARN;

  assign SEAT_WARN = (~SB)|(PASS_OCC & ~SB_P);
  
  assign DOOR_WARN = ~DOOR;  
  
  assign HOOD_WARN = ~HOOD;
  
  assign TRUNK_WARN = ~TRUNK;
  
  assign BAT_WARN = ~BAT_OK;
  
  assign AIRBAG_WARN = ~AIB_OK;
  
  assign TEMP_WARN = ~TMP_OK;
  
  assign WARN_PRI1 = BAT_WARN|HOOD_WARN|DOOR_WARN|TEMP_WARN|TRUNK_WARN;
  assign WARN_PRI2 = SEAT_WARN|AIRBAG_WARN;

  assign CHIME = WARN_PRI1;
  assign START_PERMIT = (KEY & PARK & BRK & ~WARN_PRI1) | SRV;

endmodule
