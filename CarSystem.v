
module CarSystem(SB,DOOR,KEY,BRK,PARK,HOOD,BAT_OK,AIB_OK,TMP_OK,PASS_OCC,SB_P,TRUNK,PBRK,SRV,
                START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1,SEAT_WARN,DOOR_WARN,HOOD_WARN,TRUNK_WARN,BAT_WARN,AIRBAG_WARN,TEMP_WARN);
  input SB,DOOR,KEY,BRK,PARK,HOOD,BAT_OK,AIB_OK,TMP_OK,PASS_OCC,SB_P,TRUNK,PBRK,SRV;
  output START_PERMIT, CHIME, WARN_PRI2, WARN_PRI1,SEAT_WARN,DOOR_WARN,HOOD_WARN,TRUNK_WARN,BAT_WARN,AIRBAG_WARN,TEMP_WARN;


  wire sw; 
  assign sw = (~SB & ~SB_P & PASS_OCC) | (~SB & SB_P & PASS_OCC) | (~SB);
  assign SEAT_WARN = sw;
  
  wire dw;
  assign dw = ~DOOR;
  assign DOOR_WARN = dw;
  
  wire hw;
  assign HOOD_WARN = ~HOOD;
  assign HOOD_WARN = hw;
  
  wire tw;
  assign tw = ~TRUNK;
  assign TRUNK_WARN = tw;
  
  wire bw;
  assign bw = ~BAT_OK;
  assign BAT_WARN = bw;
  
  wire aw; 
  assign aw = ~AIB_OK;
  assign AIRBAG_WARN = aw;
  
  wire tempw;
  assign tempw = ~TMP_OK;
  assign TEMP_WARN = tempw;
  
  wire pri2;
  assign pri2 = (sw & aw) | (sw & ~aw) | (~sw & aw);
  assign WARN_PRI2 = pri2;
  
  wire open;
  assign open = (tw & hw & dw) | (~tw & hw & dw) | (~tw & ~hw & dw)| (~tw & hw & ~dw) | (tw & ~hw & ~dw)| (tw & hw & ~dw)| (tw & ~hw & dw);
  wire pri1;
  assign pri1 = (dw & open & tempw) | (~dw & open & tempw)|(~dw & ~open & tempw)|(dw & ~open & tempw)|(dw & ~open & ~tempw)|(dw & open & ~tempw)|(~dw & open & ~tempw);
  assign WARN_PRI1 = pri1;
  
  assign CHIME = pri1;
  assign START_PERMIT = (KEY & BRK & PARK & PBRK & pri2 & SRV & ~pri1) | (KEY & BRK & PARK & ~PBRK & pri2 & SRV & ~pri1)|(KEY & BRK & PARK & ~PBRK & ~pri2 & SRV & ~pri1)| (KEY & BRK & PARK & ~PBRK & ~pri2 & SRV & ~pri1);


endmodule
