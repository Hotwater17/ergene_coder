verdiSetActWin -win $_OneSearch
simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-dbdir" "./simv.daidir"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "2140" "323" "900" "700"
verdiWindowResize -win $_Verdi_1 "0" "23" "2194" "1171"
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_2
verdiSetActWin -dock widgetDock_<Member>
wvCreateWindow
wvRestoreSignal -win $_nWave3 "/home/hotwater/ergene_coder/sim/signal_enc.rc" \
           -overWriteAutoAlias on -appendSignals on
srcTBRunSim
wvSetCursor -win $_nWave3 1096.125000 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 1156.134375 -snap {("G2" 0)}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
debExit
