`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2025 10:25:28 AM
// Design Name: 
// Module Name: TB4
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

module TB4();
reg SB; //seatwarn + p2
reg DOOR; //doorwarn + p1 + chime
reg KEY; //start permit
reg BRK; //start permit
reg PARK;
reg HOOD;
reg BAT_OK;
reg AIB_OK;
reg TMP_OK;
reg PASS_OCC;
reg SB_P;
reg TRUNK;
reg PBRK;
reg SRV; //start permit
wire START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1,SEAT_WARN, DOOR_WARN, HOOD_WARN, TRUNK_WARN, BAT_WARN, AIRBAG_WARN, TEMP_WARN;

top_carwarning uut(.SB(SB),.DOOR(DOOR),.KEY(KEY),.BRK(BRK),.PARK(PARK),.HOOD(HOOD),.BAT_OK(BAT_OK),.AIB_OK(AIB_OK),.TMP_OK(TMP_OK),.PASS_OCC(PASS_OCC),.SB_P(SB_P),.TRUNK(TRUNK),.PBRK(PBRK),.SRV(SRV),
               .START_PERMIT(START_PERMIT),.CHIME(CHIME),.WARN_PRI2(WARN_PRI2),.WARN_PRI1(WARN_PRI1),.SEAT_WARN(SEAT_WARN),.DOOR_WARN(DOOR_WARN),.HOOD_WARN(HOOD_WARN),.TRUNK_WARN(TRUNK_WARN),.BAT_WARN(BAT_WARN),.AIRBAG_WARN(AIRBAG_WARN),.TEMP_WARN(TEMP_WARN));
initial begin
    //test 1
    SB = 1'b0; //tested
    DOOR= 1'b1;
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b0;
    SRV= 1'b1; 
    #10;
    SB = 1'b1; //tested
    DOOR= 1'b1;
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1; 
    #10;
    
    //test 2
    SB = 1'b1;
    DOOR = 1'b0; //tested
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1; 
    #10;
    SB = 1'b1;
    DOOR = 1'b1; //tested
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1;
    #10;
    
    //test 3
    SB = 1'b1;
    DOOR= 1'b1;
    TMP_OK = 1'b0; //tested
    KEY = 1'b1; //tested
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1; 
    #10;
    SB = 1'b1;
    DOOR= 1'b1;
    TMP_OK = 1'b1; //tested
    KEY = 1'b0; //tested
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1; 
    #10;
    SB = 1'b1;
    DOOR= 1'b1;
    TMP_OK = 1'b1; //tested
    KEY = 1'b1; //tested
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    PBRK= 1'b1;
    SRV= 1'b1; 
    #10;
 
    
    //test 4
    SB = 1'b1;
    DOOR= 1'b1;
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    BRK = 1'b0;
    SRV = 1'b0;
    #10;
    SB = 1'b1;
    DOOR= 1'b1;
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    BRK = 1'b1;
    SRV = 1'b0;
    #10;
    SB = 1'b1;
    DOOR= 1'b1;
    KEY= 1'b1;
    BRK= 1'b1;
    PARK= 1'b1;
    HOOD= 1'b1;
    BAT_OK= 1'b1;
    AIB_OK= 1'b1;
    TMP_OK= 1'b1;
    PASS_OCC= 1'b1;
    SB_P= 1'b1;
    TRUNK= 1'b1;
    BRK = 1'b1;
    SRV = 1'b1;
    #10;
    
