verdiSetActWin -win $_OneSearch
simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-dbdir" "./simv.daidir"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "1020" "323" "900" "700"
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_2
verdiSetActWin -dock widgetDock_<Member>
verdiSetActWin -dock widgetDock_<Inst._Tree>
wvCreateWindow
wvRestoreSignal -win $_nWave3 "/home/hotwater/ergene_coder/sim/signal.rc" \
           -overWriteAutoAlias on -appendSignals on
srcTBRunSim
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSetCursor -win $_nWave3 503.244376 -snap {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
wvSetCursor -win $_nWave3 901.977505 -snap {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "priority_fsm_tb.uut"
verdiSetActWin -win $_nSchema_4
verdiDockWidgetMaximize -dock windowDock_nSchema_4
schSetOptions -win $_nSchema4 -pinName on
schSetOptions -win $_nSchema4 -portName on
schSetOptions -win $_nSchema4 -instName on
schSetOptions -win $_nSchema4 -localNetName on
schSelect -win $_nSchema4 -signal "i_ch\[31:0\]"
schSelect -win $_nSchema4 -signal "resetn_i"
schSelect -win $_nSchema4 -signal "arm_i"
schSelect -win $_nSchema4 -signal "resetn_i"
schSelect -win $_nSchema4 -signal "arm_i"
schSelect -win $_nSchema4 -signal "valid"
schDeselectAll -win $_nSchema4
schSelect -win $_nSchema4 -signal "encode_ch\[3:0\]"
schSelect -win $_nSchema4 -signal "ch_sel_o\[15:0\]"
debExit
