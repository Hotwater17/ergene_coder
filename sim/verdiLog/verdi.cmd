verdiSetActWin -win $_OneSearch
simSetSimulator "-vcssv" -exec "./simv" -args
debImport "-dbdir" "./simv.daidir"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "2140" "323" "900" "700"
verdiWindowResize -win $_Verdi_1 "1226" "198" "507" "383"
verdiWindowResize -win $_Verdi_1 "0" "23" "2194" "1171"
srcTBInvokeSim
verdiSetActWin -win $_InteractiveConsole_2
wvCreateWindow
verdiSetActWin -win $_nWave3
verdiSetActWin -dock widgetDock_<Member>
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
srcSetScope "priority_fsm_tb.uut" -delim "." -win $_nTrace1
srcHBSelect "priority_fsm_tb.uut" -win $_nTrace1
srcHBSelect "priority_fsm_tb.uut.OUTPUT_LOGIC" -win $_nTrace1
srcSignalViewSelect "priority_fsm_tb.uut.clk_i"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "priority_fsm_tb.uut.clk_i" "priority_fsm_tb.uut.resetn_i" \
           "priority_fsm_tb.uut.ch_sel_i\[15:0\]" "priority_fsm_tb.uut.en_i" \
           "priority_fsm_tb.uut.ch_sel_o\[15:0\]" "priority_fsm_tb.uut.zero_o" \
           "priority_fsm_tb.uut.N_CH" "priority_fsm_tb.uut.state\[4:0\]" \
           "priority_fsm_tb.uut.next_state\[4:0\]" \
           "priority_fsm_tb.uut.encode\[3:0\]" "priority_fsm_tb.uut.valid" \
           "priority_fsm_tb.uut.IDLE" "priority_fsm_tb.uut.DONE" \
           "priority_fsm_tb.uut.i\[31:0\]"
srcSignalViewSelect "priority_fsm_tb.uut.clk_i" "priority_fsm_tb.uut.resetn_i" \
           "priority_fsm_tb.uut.ch_sel_i\[15:0\]" "priority_fsm_tb.uut.en_i" \
           "priority_fsm_tb.uut.ch_sel_o\[15:0\]" "priority_fsm_tb.uut.zero_o" \
           "priority_fsm_tb.uut.N_CH" "priority_fsm_tb.uut.state\[4:0\]" \
           "priority_fsm_tb.uut.next_state\[4:0\]" \
           "priority_fsm_tb.uut.encode\[3:0\]" "priority_fsm_tb.uut.valid" \
           "priority_fsm_tb.uut.IDLE" "priority_fsm_tb.uut.i\[31:0\]"
srcSignalViewSelect "priority_fsm_tb.uut.i\[31:0\]" "priority_fsm_tb.uut.clk_i" \
           "priority_fsm_tb.uut.resetn_i" \
           "priority_fsm_tb.uut.ch_sel_i\[15:0\]" "priority_fsm_tb.uut.en_i" \
           "priority_fsm_tb.uut.ch_sel_o\[15:0\]" "priority_fsm_tb.uut.zero_o" \
           "priority_fsm_tb.uut.N_CH" "priority_fsm_tb.uut.state\[4:0\]" \
           "priority_fsm_tb.uut.next_state\[4:0\]" \
           "priority_fsm_tb.uut.encode\[3:0\]" "priority_fsm_tb.uut.valid"
srcSignalViewSelect "priority_fsm_tb.uut.clk_i" "priority_fsm_tb.uut.resetn_i" \
           "priority_fsm_tb.uut.ch_sel_i\[15:0\]" "priority_fsm_tb.uut.en_i" \
           "priority_fsm_tb.uut.ch_sel_o\[15:0\]" "priority_fsm_tb.uut.zero_o" \
           "priority_fsm_tb.uut.N_CH" "priority_fsm_tb.uut.state\[4:0\]" \
           "priority_fsm_tb.uut.next_state\[4:0\]" \
           "priority_fsm_tb.uut.encode\[3:0\]" "priority_fsm_tb.uut.valid"
srcSignalViewAddSelectedToWave -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
srcTBRunSim
wvSetCursor -win $_nWave3 2190.222442 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSelectGroup -win $_nWave3 {G1}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvExpandBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 27)}
wvScrollDown -win $_nWave3 8
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
debExit
